from FootBall_Win_Prediction.models import WinPrediction
from rest_framework import serializers


class WinPredictionSerializer(serializers.ModelSerializer):

    class Meta:
        model = WinPrediction
        fields = '__all__'
       # fields = ['age', 'height', 'sex']

