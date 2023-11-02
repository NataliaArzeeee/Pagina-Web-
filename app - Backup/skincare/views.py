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
from .models import Usuario 
from django.contrib import messages

def lista_de_productos(request):
    try:
        with connections['default'].cursor() as cursor:
            cursor.execute("SELECT * FROM dbdbeauty.skincare_producto;")
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
        elif Usuario.objects.filter(gmail=gmail).exists():
            messages.error(request, 'El correo que ingresó ya está registrado.')
            print("Correo ya registrado")
        else:
            # Crear un nuevo usuario en la base de datos
            user = Usuario(nombre=nombre_usuario, gmail=gmail, contrasena=contrasena)
            user.save()
            print("Usuario registrado correctamente")
            messages.success(request, 'Registro exitoso. Ahora puedes iniciar sesión.')
            return redirect('login')
        
        transaction.commit()

    return render(request, 'skincare/crear_cuenta.html')

from django.contrib.auth import authenticate, login


import logging
from django.contrib import messages
from django.contrib.auth import authenticate, login
from .models import Usuario

from django.contrib.auth.hashers import check_password

from django.contrib.auth import authenticate, login
from django.contrib import messages
from .models import Usuario

from django.db import connection
from django.db import OperationalError
from django.contrib import messages

from django.contrib import auth
from django.contrib import messages

def inicio_sesion(request):
    if request.method == 'POST':
        usuario = request.POST['usuario']
        contrasena = request.POST['contrasena']

        try:
            with connection.cursor() as cursor:
                cursor.execute("SELECT * FROM skincare_usuario WHERE nombre = %s AND contrasena = %s", [usuario, contrasena])
                user = cursor.fetchone()

            if user is not None:
                # Autenticación exitosa, puedes realizar otras acciones aquí si es necesario
                request.session['user_id'] = user[10]  # Almacena el ID del usuario en la sesión
                request.session['user_name'] = user[11]  # Almacena el nombre de usuario en la sesión
                return redirect('inicio')
            else:
                messages.error(request, 'Credenciales incorrectas. Inténtalo de nuevo.')
        except OperationalError as e:
            print("Error en la consulta SQL:", str(e))
            messages.error(request, 'Ocurrió un error al intentar iniciar sesión.')

    return render(request, 'skincare/inicio_sesion.html')

def compra_exitosa(request):
    return render(request, 'skincare/compra_exitosa.html')

from django.contrib.auth import logout
from django.shortcuts import redirect

def cerrar_sesion(request):
    logout(request)
    return redirect('inicio')

from django.shortcuts import render
from .models import Producto

# Esta función busca los detalles de los productos en función de sus identificadores
def buscar_detalles_de_productos(identificadores):
    detalles_carrito = []
    
    for identificador in identificadores:
        try:
            producto = Producto.objects.get(id=identificador)
            detalles_carrito.append(producto)
        except Producto.DoesNotExist:
            # Maneja el caso en el que un producto no se encuentra en la base de datos
            pass

    return detalles_carrito

# Vista para la página del carrito de compras
def carrito_compra(request):
    carrito = request.GET.getlist('carrito')
    detalles_carrito = buscar_detalles_de_productos(carrito)
    return render(request, 'carrito_compra.html', {'detalles_carrito': detalles_carrito})

from django.http import JsonResponse
from django.shortcuts import get_object_or_404
from .models import Venta, Producto
from django.db import connection

def agregar_al_carrito(request):
    if request.method == 'POST':
        producto_id = request.POST.get('producto_id')
        
        try:
            with connection.cursor() as cursor:
                # Inserta una nueva venta en la base de datos
                cursor.execute("INSERT INTO  (fecha, idProducto_id) VALUES (NOW(), %s)", [producto_id])
        except Exception as e:
            print("Error al agregar el producto al carrito:", str(e))
            return JsonResponse({'message': 'Error al agregar el producto al carrito'}, status=500)
        
        return JsonResponse({'message': 'Producto agregado al carrito'}, status=200)
    else:
        return JsonResponse({'message': 'Solicitud no válida'}, status=400)



from django.http import JsonResponse
from .models import Producto
from datetime import datetime

from django.http import JsonResponse
from .models import Producto, Venta

def comprar_producto(request):
    if request.method == 'POST':
        product_id = request.POST.get('productId')
        try:
            producto = Producto.objects.get(id=product_id)
            
            # Obtén la fecha actual
            fecha_actual = datetime.now().date()

            # Crea una instancia de Venta con la fecha y el producto
            venta = Venta(idProducto=producto, fecha=fecha_actual)
            venta.save()

            return redirect('compra_exitosa') 

        except Producto.DoesNotExist:
            return JsonResponse({'success': False, 'message': 'Producto no encontrado.'})
    return JsonResponse({'success': False, 'message': 'Solicitud no válida.'})

from django.contrib.sessions.models import Session

def agregar_al_carrito(request, producto_codigo):
    producto = get_object_or_404(Producto, codigo=producto_codigo)

    # Obtener la lista de IDs de productos del carrito del usuario desde la sesión
    carrito = request.session.get('carrito', [])
    
    # Agregar el ID del producto a la lista
    carrito.append(producto.id)
    
    # Guardar la lista de IDs actualizada en la sesión del usuario
    request.session['carrito'] = carrito
    
    return redirect('lista_de_productos')

from django.contrib.sessions.models import Session
from django.shortcuts import render
from .models import Producto
from django.shortcuts import render
from .models import Producto

def carrito(request):
    # Obtener los productos en el carrito del usuario a partir de la sesión
    carrito = request.session.get('carrito', [])
    
    # Inicializar una lista vacía para almacenar los productos en el carrito
    productos_en_carrito = []

    # Calcular el total del carrito
    total_carrito = 0

    # Recorrer la lista de IDs de productos en el carrito
    for producto_id in carrito:
        try:
            producto = Producto.objects.get(id=producto_id)
            productos_en_carrito.append(producto)
            total_carrito += producto.precio_unitario  # Asumiendo que "precio" es un campo en tu modelo de Producto
        except Producto.DoesNotExist:
            pass  # Manejar productos que ya no existen

    return render(request, 'carrito.html', {'productos_en_carrito': productos_en_carrito, 'total_carrito': total_carrito})
