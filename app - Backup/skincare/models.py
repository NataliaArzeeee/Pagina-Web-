from django.db import models
from django.contrib.auth.models import AbstractUser

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

class Usuario(AbstractUser):
    codigoUsuario = models.AutoField(primary_key=True)
    nombre = models.CharField(max_length=45)
    gmail = models.CharField(max_length=45, unique=True)
    contrasena = models.CharField(max_length=45)

    # Agrega un related_name personalizado para evitar conflictos
    groups = models.ManyToManyField('auth.Group', related_name='custom_user_set')
    user_permissions = models.ManyToManyField('auth.Permission', related_name='custom_user_set')

    def __str__(self):
        return self.nombre

class Venta(models.Model):
    codigoVenta = models.AutoField(primary_key=True)
    fecha = models.DateField()
    idProducto = models.ForeignKey(Producto, on_delete=models.CASCADE)
