# Generated by Django 3.1 on 2020-08-25 05:23

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='user',
            old_name='is_statt',
            new_name='is_staff',
        ),
    ]