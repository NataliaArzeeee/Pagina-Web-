from django.db import models

class Producto(models.Model):
    producto = models.CharField(max_length=255, default='ValorPredeterminado')
    codigo = models.IntegerField()
    descripcion = models.CharField(max_length=255)
    stock = models.IntegerField()
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2)
    categoria = models.CharField(max_length=255, default='ValorPredeterminado')
    imagen = models.CharField(max_length=255, default='ruta_imagen_predeterminada.jpg')

    def __str__(self):
        return self.producto

class db_usuario(models.Model):
    codigoUsuario = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45)
    gmail = models.CharField(max_length=45, unique=True)
    contrasena = models.CharField(max_length=45)

    def __str__(self):
        return self.nombre
