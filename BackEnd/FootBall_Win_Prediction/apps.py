from django.apps import AppConfig
from .utils import predict_result

class FootballWinPredictionConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'FootBall_Win_Prediction'

    # def ready(self):
    #     # Call the prediction logic when the app starts
    #     predict_result()
