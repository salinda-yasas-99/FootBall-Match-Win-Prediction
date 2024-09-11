# Generated by Django 5.1 on 2024-08-19 14:21

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='WinPrediction',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('home_team', models.CharField(max_length=1000)),
                ('away_team', models.CharField(max_length=1000)),
                ('year', models.IntegerField()),
                ('month', models.IntegerField()),
                ('day', models.IntegerField()),
                ('temperature', models.IntegerField()),
                ('predicted_win', models.CharField(max_length=1000)),
            ],
        ),
    ]
