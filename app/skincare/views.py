from django.shortcuts import render

# Create your views here.

from .models import Producto

def detalle_producto(request, producto_id):
    producto = Producto.objects.get(pk=producto_id)
    return render(request, 'myapp/producto_detalle.html', {'producto': producto})
