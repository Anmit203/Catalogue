# Generated by Django 4.0.2 on 2023-03-14 09:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myadmin', '0008_rename_owner_name_seller_showroom_name_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='order',
            name='description',
            field=models.TextField(default=1),
            preserve_default=False,
        ),
    ]
