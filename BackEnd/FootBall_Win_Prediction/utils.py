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


def load_player_keras_model():
    model_path = os.path.join(settings.BASE_DIR, 'Ml_Models_2', 'player_saved_model.h5')
    try:
        model2 = tf.keras.models.load_model(model_path)
        model2.summary()
        print("Player Model successfully loaded.")
        return model2
    except Exception as e:
        print(f"Error loading model: {str(e)}")
        return None

def load_encoder(filename):
    encoder_path = os.path.join(settings.BASE_DIR, 'Ml_Models_2', filename)
    return joblib.load(encoder_path)

#win prediction
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

#win prediction
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

def pass_players(players):

    # List to store the player objects
    player_records = []

    for name in players:

        try:
            # Find the player by short_name in the database
            from .models import Player
            #player = Player.objects.get(short_name=name)
            player = Player.objects.filter(short_name=name).first()
            player_obj = {
                'short_name': player.short_name,
                'age': player.age,
                'overall': player.overall,
                'skill_moves': player.skill_moves,
                'international_reputation': player.international_reputation,
                'attacking_crossing': player.attacking_crossing,
                'attacking_finishing': player.attacking_finishing,
                'attacking_heading_accuracy': player.attacking_heading_accuracy
            }

            player_records.append(player_obj)

        except Player.DoesNotExist:
            # If a player is not found, print an error or handle it accordingly
            print(f"Player with short_name '{name}' not found.")

        #print(f"Name: {player.short_name}, Age: {player.age}, Overall: {player.overall},SkillMoves :{player.overall}")
    print("done")
    resultPlayer = predict_top_player_from_array(player_records)

    return resultPlayer


def predict_top_player_from_array(playersData):
    playerModel = load_player_keras_model()
    preprocessor = load_encoder('player_preprocessor.pkl')
    y_encoder = load_encoder('player_y_encoder.pkl')

    player_potential_records = []

    for data in playersData:
        # Ensure that data is a dictionary and contains the necessary keys
        if not isinstance(data, dict):
            raise ValueError("Each item in playersData should be a dictionary.")

        if 'short_name' not in data:
            raise ValueError("Each dictionary in playersData must contain the key 'short_name'.")

        user_df = pd.DataFrame([data])

        # Preprocess the user input
        user_transformed = preprocessor.transform(user_df)

        # Make a prediction
        prediction = playerModel.predict(user_transformed, verbose=0)

        # Decode the prediction (reverse one-hot encoding)
        predicted_potential = y_encoder.inverse_transform(prediction)

        # Create an object with the predicted potential
        obj = {
            'short_name': data['short_name'],  # Use keys to access dictionary values
            'potential': predicted_potential[0][0]
        }

        player_potential_records.append(obj)

    # Print the potential array for debugging
    print("Potential array:", player_potential_records)

    # Find the top player based on potential
    top_player = max(player_potential_records, key=lambda x: x['potential'])

    # Print the top player for debugging
    print(f"Top player: {top_player['short_name']} with potential {top_player['potential']}")

    return top_player


def predict_player(short_name,age,overall,skill_moves,international_reputation,attacking_crossing,attacking_finishing,attacking_heading_accuracy) :

    playerModel = load_player_keras_model()
    preprocessor = load_encoder('player_preprocessor.pkl')
    y_encoder = load_encoder('player_y_encoder.pkl')

    player_potential_records = []

    user_input = {
        'short_name': short_name,
        'age': age,
        'overall': overall,
        'skill_moves': skill_moves,
        'international_reputation': international_reputation,
        'attacking_crossing': attacking_crossing,
        'attacking_finishing': attacking_finishing,
        'attacking_heading_accuracy': attacking_heading_accuracy
    }

    # Create a DataFrame from the user input
    user_df = pd.DataFrame([user_input])

    # Preprocess the user input
    user_transformed = preprocessor.transform(user_df)

    # Make a prediction
    prediction = playerModel.predict(user_transformed, verbose=0)

    # Decode the prediction (reverse one-hot encoding)
    predicted_potential = y_encoder.inverse_transform(prediction)

    print(f"Predicted potential for {user_input['short_name']}: {predicted_potential[0][0]}")

    return {user_input['short_name']: predicted_potential[0][0]}


# player input
# predicted_player_potential = predict_player("H. Amin", 34,93,4,5,85,95,70)
# print(f"Predicted potential for {predicted_player_potential}")


# prediction= pass_players(["L. Messi","L. Biglia","A. Correa","G. Rulli","J. Correa","L. Paredes","I. Marcone","M. Zaracho","G. Simeone","L. Miranda","M. Vargas"])
# print(f"Predicted potential for {prediction}")
 # User input
# user_date = '15/07/2023'
# user_home_team = 'Northern Ireland'
# user_away_team = 'Grenada'
# user_tournament = 'Friendly'
# user_temperature = 25
#
# predicted_outcome = predict_result(user_date,user_home_team,user_away_team,user_tournament,user_temperature)
# print(f"Predicted Outcome: {predicted_outcome}")