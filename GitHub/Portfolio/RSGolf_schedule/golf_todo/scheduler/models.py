from django.db import models
from datetime import date

class Task(models.Model):
  task = models.CharField(max_length=200)
  area = models.CharField(max_length=200)
  hole = models.IntegerField(default=0)
  frequency_days = models.IntegerField(default=2)
  next_due_date = models.DateField(default=date.today())

class Log(models.Model):
  task = models.CharField(max_length=200)
  area = models.CharField(max_length=200)
  hole = models.IntegerField(default=0)
  equipment = models.CharField(max_length=200)
  hours = models.IntegerField(default=0)
  date_completed = models.DateField(default='2001-01-01')

class Equipment(models.Model):
  equipment_name = models.CharField(max_length=200)
  hours_used = models.IntegerField(default=0)
