# Generated by Django 3.0.2 on 2020-02-11 17:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('server', '0007_trainingimg'),
    ]

    operations = [
        migrations.CreateModel(
            name='trainingtext',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('head1', models.TextField()),
                ('paraf1', models.TextField()),
                ('paraf2', models.TextField()),
                ('paraf3', models.TextField()),
                ('head2', models.TextField()),
                ('paras1', models.TextField()),
                ('paras2', models.TextField()),
                ('paras3', models.TextField()),
                ('head3', models.TextField()),
                ('parat1', models.TextField()),
                ('parat2', models.TextField()),
                ('parat3', models.TextField()),
            ],
        ),
    ]
