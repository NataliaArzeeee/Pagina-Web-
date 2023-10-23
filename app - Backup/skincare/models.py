from django.db import models

class Producto(models.Model):
    codigo = models.IntegerField(default=0)
    descripcion = models.CharField(max_length=255)
    stock = models.IntegerField(default=0)  # Agrega el campo "stock" con valor predeterminado
    precio_unitario = models.DecimalField(max_digits=10, decimal_places=2)

    def __str__(self):
        return self.descripcion
