# Generated by Django 4.0.3 on 2022-03-15 14:30

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('parsingbpmn', '0006_risk_impact'),
    ]

    operations = [
        migrations.AddField(
            model_name='risk',
            name='likelihood',
            field=models.IntegerField(null=True),
        ),
    ]
