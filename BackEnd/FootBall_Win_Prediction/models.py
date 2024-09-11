from django.db import models

# Create your models here.

class WinPrediction(models.Model):
    home_team = models.CharField(max_length=1000)
    away_team = models.CharField(max_length=1000)
    year = models.IntegerField()
    month = models.IntegerField()
    day = models.IntegerField()
    temperature =models.IntegerField()
    predicted_win = models.CharField(max_length=1000)

    def __str__(self):
        return f'{self.home_team} ({self.away_team}, {self.year},{self.month},{self.day},{self.temperature}) -> {self.predicted_win}'