# Generated by Django 3.0.2 on 2020-02-12 12:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('server', '0010_book'),
    ]

    operations = [
        migrations.AlterField(
            model_name='book',
            name='time',
            field=models.IntegerField(),
        ),
    ]
