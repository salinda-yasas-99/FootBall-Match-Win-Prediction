from FootBall_Win_Prediction.models import WinPrediction,Player
from rest_framework import serializers


class WinPredictionSerializer(serializers.ModelSerializer):

    class Meta:
        model = WinPrediction
        fields = '__all__'
       # fields = ['age', 'height', 'sex']


class PlayerSerializer(serializers.ModelSerializer):
    class Meta:
        model = Player
        fields = ['short_name', 'nationality', 'international_reputation', 'skill_moves']
