from django.shortcuts import render

def inicio(request):
    return render(request, 'skincare/inicio.html')

import MySQLdb


import logging
from django.db import connections

# Resto de tus importaciones
import MySQLdb
import logging
from django.shortcuts import render
from django.db import connection

# Tu vista lista_de_productos y otras vistas


from django.shortcuts import render
from django.db import connection

from django.db import OperationalError


from django.db import connections, OperationalError
from django.shortcuts import render

from django.db import connections, OperationalError
from django.shortcuts import render

def lista_de_productos(request):
    try:
        with connections['default'].cursor() as cursor:
            cursor.execute("SELECT * FROM dbdbeauty.producto;")
            productos = cursor.fetchall()


            if productos is not None:
                productos = [dict(zip([column[0] for column in cursor.description], row)) for row in productos]
            else:
                productos = []
    except OperationalError as e:
        print("Error en la consulta SQL:", str(e))
        productos = []

    return render(request, 'skincare/lista_de_productos.html', {'productos': productos})


def consejos(request):
    return render(request, 'skincare/consejos.html')

def inicio_sesion(request):
    return render(request, 'skincare/inicio_sesion.html')

def crear_cuenta(request):
    return render(request, 'skincare/crear_cuenta.html')

def carrito_compra(request):
    return render(request, 'skincare/carrito_compra.html')

def compra_exitosa(request):
    return render(request, 'skincare/compra_exitosa.html')

