# Generated by Django 4.2.14 on 2024-07-26 04:42

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('myadmin', '0011_remove_product_seller_alter_customer_date'),
    ]

    operations = [
        migrations.AlterField(
            model_name='customer',
            name='date',
            field=models.DateTimeField(default=django.utils.timezone.now),
        ),
    ]
