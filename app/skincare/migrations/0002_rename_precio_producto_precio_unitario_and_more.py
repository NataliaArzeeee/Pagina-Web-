# Generated by Django 4.2.6 on 2023-10-20 04:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('skincare', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='producto',
            old_name='precio',
            new_name='precio_unitario',
        ),
        migrations.RemoveField(
            model_name='producto',
            name='imagen',
        ),
        migrations.RemoveField(
            model_name='producto',
            name='nombre',
        ),
        migrations.AddField(
            model_name='producto',
            name='codigo',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='producto',
            name='stock',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='producto',
            name='descripcion',
            field=models.CharField(max_length=255),
        ),
    ]