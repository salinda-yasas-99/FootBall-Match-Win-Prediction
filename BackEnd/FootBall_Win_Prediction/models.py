from django.db import models

# Create your models here.

class WinPrediction(models.Model):
    home_team = models.CharField(max_length=1000)
    away_team = models.CharField(max_length=1000)
    year = models.IntegerField()
    month = models.IntegerField()
    day = models.IntegerField()
    date= models.CharField(max_length=1000,null=True, blank=True)
    top_player =models.CharField(max_length=4000,null=True, blank=True)
    temperature =models.IntegerField()
    predicted_win = models.CharField(max_length=1000)

    def __str__(self):
        return f'{self.home_team} ({self.away_team}, {self.year},{self.month},{self.day},{self.temperature},{self.top_player},{self.date}) -> {self.predicted_win}'


class Player(models.Model):
    short_name = models.CharField(max_length=1000)
    age =models.IntegerField(default=25)
    overall = models.IntegerField(default=25)
    skill_moves = models.IntegerField(default=25)
    international_reputation = models.IntegerField(default=25)
    attacking_crossing = models.IntegerField(default=25)
    attacking_finishing = models.IntegerField(default=25)
    attacking_heading_accuracy = models.IntegerField(default=25)


    def __str__(self):
        return self.short_name