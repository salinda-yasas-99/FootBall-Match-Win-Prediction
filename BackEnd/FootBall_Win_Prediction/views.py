from rest_framework import status
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .utils import predict_result
from .models import WinPrediction
from .serializers import WinPredictionSerializer


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
            'prediction': result
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