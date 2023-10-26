from django.shortcuts import render

def inicio(request):
    return render(request, 'skincare/inicio.html')

import MySQLdb
import logging
import MySQLdb
import logging
from django.db import connection
from django.db import OperationalError
from django.db import connections, OperationalError

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

from django.shortcuts import render, redirect
from django.contrib.auth.models import User
from django.contrib import messages
from .models import db_usuario  # Asegúrate de importar tu modelo de usuario
from django.db import transaction

@transaction.atomic
def crear_cuenta(request):
    if request.method == 'POST':
        nombre_usuario = request.POST['nombre_usuario']
        gmail = request.POST['gmail']
        contrasena = request.POST['contrasena']

        # Verificar si el nombre de usuario o el correo ya están en uso
        if User.objects.filter(username=nombre_usuario).exists():
            messages.error(request, 'El nombre de usuario que ingresó ya está registrado.')
            print("Nombre ya registrado")  
        elif db_usuario.objects.filter(gmail=gmail).exists():
            messages.error(request, 'El correo que ingresó ya está registrado.')
            print("Correo ya registrado")
        else:
            # Crear un nuevo usuario en la base de datos
            user = db_usuario(nombre=nombre_usuario, gmail=gmail, contrasena=contrasena)
            user.save()
            print("Usuario registrado correctamente")
            messages.success(request, 'Registro exitoso. Ahora puedes iniciar sesión.')
            return redirect('login')
        
        transaction.commit()

    return render(request, 'skincare/crear_cuenta.html')

from django.contrib.auth import authenticate, login

def inicio_sesion(request):
    if request.method == 'POST':
        usuario = request.POST['usuario']
        contrasena = request.POST['contrasena']

        user = authenticate(request, username=usuario, password=contrasena)

        if user is not None:
            login(request, user)
            print("Sesion iniciada correctamente")
            return redirect('inicio')
        else:
            messages.error(request, 'Credenciales incorrectas. Inténtalo de nuevo.')
            print("No se pude iniciar sesion")
    return render(request, 'skincare/inicio_sesion.html')

def carrito_compra(request):
    return render(request, 'skincare/carrito_compra.html')

def compra_exitosa(request):
    return render(request, 'skincare/compra_exitosa.html')

from django.contrib.auth import logout
from django.shortcuts import redirect

def cerrar_sesion(request):
    logout(request)
    return redirect('inicio')



