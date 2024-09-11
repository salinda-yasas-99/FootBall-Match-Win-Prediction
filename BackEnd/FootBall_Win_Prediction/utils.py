import joblib
import os
import tensorflow as tf
from django.conf import settings
import numpy as np
import pandas as pd





def load_keras_model():
    model_path = os.path.join(settings.BASE_DIR, 'Ml_Models', 'football_prediction_model.h5')
    #model_path = os.path.join(settings.BASE_DIR, 'Ml_Models', 'Model.h5')
    #print("Keras model path:", model_path)

    try:
        model1 = tf.keras.models.load_model(model_path)
        print("Model successfully loaded.")
        print("Model Summary:")
        model1.summary()
        return model1

    except Exception as e:
        #print(f"Error loading model: {str(e)}")
        return None


def load_encoder(filename):
    encoder_path = os.path.join(settings.BASE_DIR, 'Ml_Models', filename)
    #print(f"{filename} path:", encoder_path)  # Debug path
    return joblib.load(encoder_path)


# Load all necessary models and encoders
model = load_keras_model()
team_label_encoder = load_encoder('team_label_encoder.pkl')
outcome_label_encoder = load_encoder('outcome_label_encoder.pkl')
scaler = load_encoder('scaler.pkl')


def predict_outcome(home_team, away_team, year, month, day, temperature):
    try:
        # Encode and scale the input data
        home_team_encoded = team_label_encoder.transform([home_team])[0]
        away_team_encoded = team_label_encoder.transform([away_team])[0]

        # Use a DataFrame with named columns for the scaler
        input_df = pd.DataFrame([[temperature]], columns=['temperature'])
        temperature_scaled = scaler.transform(input_df)[0][0]

        # Prepare the input for the model
        input_data = np.array([[home_team_encoded, away_team_encoded, year, month, day, temperature_scaled]])
        input_data = input_data.reshape((1, 1, 6))
        # input_data = [[[3.000e+00 1.000e+00 2.024e+03 1.100e+01 2.500e+01 2.500e-01]]]

        # Make the prediction
        prediction = model.predict(input_data,verbose=0)
        #print("this is prediction",prediction)
        outcome_index = np.argmax(prediction)

        # Map the prediction back to the original outcome labels
        outcome_label = outcome_label_encoder.inverse_transform([outcome_index])

        return outcome_label[0]

    except Exception as e:
        return f"Error: {str(e)}"


home_team = 'Scotland'
away_team = 'England'
year = 2024
month = 11
day = 25
temperature = 15

predicted_outcome = predict_outcome(home_team, away_team, year, month, day, temperature)
print(f"Predicted Outcome: {predicted_outcome}")
