# Generated by Django 5.1 on 2024-09-13 18:12

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('FootBall_Win_Prediction', '0002_winprediction_date_winprediction_top_player'),
    ]

    operations = [
        migrations.AlterField(
            model_name='winprediction',
            name='top_player',
            field=models.CharField(blank=True, max_length=4000, null=True),
        ),
    ]