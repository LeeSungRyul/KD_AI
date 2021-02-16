# Generated by Django 3.0.5 on 2021-02-15 09:13

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Account',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('userID', models.CharField(max_length=64, verbose_name='ID')),
                ('userPW', models.CharField(max_length=64, verbose_name='PW')),
                ('userPhone', models.IntegerField(verbose_name='Phone')),
                ('userMail', models.CharField(max_length=64, verbose_name='Email')),
                ('registered_dttm', models.DateTimeField(auto_now_add=True, verbose_name='등록시간')),
            ],
            options={
                'db_table': 'test_user',
            },
        ),
    ]
