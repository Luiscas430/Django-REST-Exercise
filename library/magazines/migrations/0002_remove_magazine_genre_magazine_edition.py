# Generated by Django 4.0.3 on 2022-04-03 20:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('magazines', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='magazine',
            name='genre',
        ),
        migrations.AddField(
            model_name='magazine',
            name='edition',
            field=models.SmallIntegerField(null=True),
        ),
    ]
