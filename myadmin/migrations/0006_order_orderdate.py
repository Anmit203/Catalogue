# Generated by Django 4.0.2 on 2023-03-13 12:34

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myadmin', '0005_order_time_alter_order_date'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='orderdate',
            field=models.DateField(default=datetime.date.today),
        ),
    ]
