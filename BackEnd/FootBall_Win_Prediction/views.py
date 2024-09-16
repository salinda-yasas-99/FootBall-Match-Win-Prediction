from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .utils import predict_result,pass_players
from .models import WinPrediction,Player
from .serializers import WinPredictionSerializer
from django.db import transaction
import pandas as pd


@api_view(['POST'])
def predict_win(request):
    try:
        # Extract input data from the request
        home_team = str(request.data.get('home_team'))
        away_team = str(request.data.get('away_team'))
        year = int(request.data.get('year'))
        month = int(request.data.get('month'))
        day = int(request.data.get('day'))
        date = str(request.data.get("date"))
        temperature = int(request.data.get('temperature'))
        home_players = request.data.get('home_players',[])
        away_players = request.data.get('away_players',[])
        tournament = "Friendly"


        #print("before encode",home_team)

        # Ensure all required fields are present
        if not all([home_team, away_team, year, month, day,date,home_players,away_players, temperature]):
            return Response({'error': 'All fields are required.'}, status=status.HTTP_400_BAD_REQUEST)

        # Call the predict_outcome function
        # home_team_en = home_team.encode('utf-8')
        # away_team_en = away_team.encode('utf-8')
        # print("after encode", home_team_en)
        # result = predict_outcome(home_team_en, away_team_en, year, month, day, temperature)
        result = predict_result(date,home_team, away_team,tournament, temperature)

        global playerOutput
        if(result !='Match tie'):
            if(result ==home_team):
                playerOutput = pass_players(home_players)

            else:
                playerOutput = pass_players(away_players)

        # Save the data to the database
        prediction = WinPrediction(
            home_team=home_team,
            away_team=away_team,
            year=year,
            month=month,
            day=day,
            date=date,
            top_player="messi",
            temperature=temperature,
            predicted_win=result  # Ensure this matches the field name in your model
        )
        prediction.save()

        # Return the result along with the inputs
        return Response({
            'home_team': home_team,
            'away_team': away_team,
            'year': year,
            'month': month,
            'day': day,
            'date':date,
            'temperature': temperature,
            'prediction': result,
            'player':playerOutput
        }, status=status.HTTP_200_OK)

    except Exception as e:
        print(f"Error: {str(e)}")
        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

@api_view(['GET'])
def get_all_predictions(request):
    try:
        # Retrieve all records from the WinPrediction table
        predictions = WinPrediction.objects.all()

         # Serialize the data
        serializer = WinPredictionSerializer(predictions, many=True)

         # Return the serialized data
        return Response(serializer.data, status=status.HTTP_200_OK)

    except Exception as e:
        print(f"Error: {str(e)}")
        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)

@api_view(['DELETE'])
def delete_all_predictions(request):
    try:
        # Delete all records from the WinPrediction table
        WinPrediction.objects.all().delete()
        return Response({'message': 'All records have been deleted.'}, status=status.HTTP_200_OK)
    except Exception as e:
        print(f"Error: {str(e)}")
        return Response({'error': str(e)}, status=status.HTTP_500_INTERNAL_SERVER_ERROR)


# @api_view(['POST'])
# def upload_excel(request):
#     if 'file' not in request.FILES:
#         return Response({"error": "No file provided"}, status=400)
#
#     # Load the Excel file
#     excel_file = request.FILES['file']
#
#     try:
#         # Read the Excel file using pandas
#         df = pd.read_excel(excel_file, engine='openpyxl')
#
#         # Iterate through the DataFrame and insert records into the Player model
#         for _, row in df.iterrows():
#             Player.objects.create(
#                 short_name=row['short_name'],  # Column C
#                 nationality=row['nationality'],  # Column I
#                 international_reputation=row['international_reputation'],  # Column Q
#                 skill_moves=row['skill_moves']  # Column S
#             )
#
#         return Response({"message": "Players inserted successfully."}, status=201)
#
#     except Exception as e:
#         return Response({"error": str(e)}, status=500)

@api_view(['POST'])
def upload_excel(request):
    if 'file' not in request.FILES:
        return Response({"error": "No file provided"}, status=400)

    # Load the Excel file
    excel_file = request.FILES['file']

    try:
        # Read the Excel file using pandas
        df = pd.read_excel(excel_file, engine='openpyxl')

        # Ensure that we only insert if all rows are valid
        with transaction.atomic():
            # Iterate through the DataFrame and insert records into the Player model
            players = [
                Player(
                    short_name=row['short_name'],  # Column
                    age=row['age'],
                    overall=row['overall'],
                    skill_moves=row['skill_moves'],
                    international_reputation=row['international_reputation'],
                    attacking_crossing=row['attacking_crossing'],
                    attacking_finishing=row['attacking_finishing'],
                    attacking_heading_accuracy=row['attacking_heading_accuracy'],
                )
                for _, row in df.iterrows()
            ]
            # Use bulk_create to insert all players at once (in batches for better performance)
            Player.objects.bulk_create(players, batch_size=1000)  # Batch size can be adjusted

        return Response({"message": "Players inserted successfully."}, status=201)

    except Exception as e:
        return Response({"error": str(e)}, status=500)