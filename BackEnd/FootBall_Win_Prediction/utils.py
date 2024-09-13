# utils.py
import joblib
import os
import tensorflow as tf
from django.conf import settings
import numpy as np
import pandas as pd

def load_keras_model():
    model_path = os.path.join(settings.BASE_DIR, 'Ml_Models_2', 'saved_model.h5')
    try:
        model1 = tf.keras.models.load_model(model_path)
        model1.summary()
        print("Model successfully loaded.")
        return model1
    except Exception as e:
        print(f"Error loading model: {str(e)}")
        return None

def load_encoder(filename):
    encoder_path = os.path.join(settings.BASE_DIR, 'Ml_Models_2', filename)
    return joblib.load(encoder_path)

def preprocess_user_input(date, home_team, away_team, tournament, temperature, preprocessor):
    date_parsed = pd.to_datetime(date, dayfirst=True, errors='coerce')
    year = date_parsed.year
    month = date_parsed.month
    day = date_parsed.day
    day_of_week = date_parsed.dayofweek

    input_data = pd.DataFrame({
        'home_team': [home_team],
        'away_team': [away_team],
        'tournament': [tournament],
        'temperature': [temperature],
        'year': [year],
        'month': [month],
        'day': [day],
        'day_of_week': [day_of_week]
    })

    input_transformed = preprocessor.transform(input_data)
    return input_transformed

def predict_result(user_date,user_home_team,user_away_team,user_tournament,user_temperature):
    # Load model and encoders
    model = load_keras_model()
    preprocessor = load_encoder('preprocessor.pkl')
    y_encoder = load_encoder('y_encoder.pkl')

    # Preprocess the input and predict
    user_input_preprocessed = preprocess_user_input(user_date, user_home_team, user_away_team, user_tournament, user_temperature, preprocessor)
    prediction = model.predict(user_input_preprocessed, verbose=0)

    # Decode the prediction
    predicted_class_index = np.argmax(prediction, axis=1)
    categories = y_encoder.categories_[0]
    predicted_win_team = categories[predicted_class_index[0]]

    # Determine the result
    #result = f"Predicted result: {user_home_team if predicted_win_team == 'home_team' else user_away_team if predicted_win_team == 'away_team' else 'Match tie.'}"
    if(predicted_win_team == 'home_team'):
        return user_home_team
    elif(predicted_win_team == 'away_team'):
        return user_away_team
    else:
        return 'Match tie'





 # User input
# user_date = '15/07/2023'
# user_home_team = 'Northern Ireland'
# user_away_team = 'Grenada'
# user_tournament = 'Friendly'
# user_temperature = 25
#
# predicted_outcome = predict_result(user_date,user_home_team,user_away_team,user_tournament,user_temperature)
# print(f"Predicted Outcome: {predicted_outcome}")