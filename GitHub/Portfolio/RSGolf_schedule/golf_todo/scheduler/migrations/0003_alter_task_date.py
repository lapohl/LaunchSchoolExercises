# Generated by Django 3.2.2 on 2021-06-05 00:49

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('scheduler', '0002_auto_20210604_2230'),
    ]

    operations = [
        migrations.AlterField(
            model_name='task',
            name='date',
            field=models.DateField(default='2001-01-01'),
        ),
    ]
