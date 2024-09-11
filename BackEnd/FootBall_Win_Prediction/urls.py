from django.urls import path
from .views import predict_win, get_all_predictions,delete_all_predictions

urlpatterns = [
    path('predict/', predict_win, name='predict_win'),
    path('get/predictions/', get_all_predictions, name='get_all_predictions'),
    path('delete/predictions/', delete_all_predictions, name='delete_all_predictions'),
]