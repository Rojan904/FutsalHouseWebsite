# Generated by Django 3.0.2 on 2020-02-02 10:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('server', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='heading',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('para1', models.TextField()),
                ('para2', models.TextField()),
                ('para3', models.TextField()),
            ],
        ),
    ]
