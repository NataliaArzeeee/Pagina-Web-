from django.contrib import admin
from django.urls import path
from skincare import views


urlpatterns = [
    #path('admin/', admin.site.urls),
    path('', views.inicio, name='inicio'),
    path('productos/', views.lista_de_productos, name='lista_de_productos'),
    path('consejos/', views.consejos, name='consejos'),
    path('login/', views.inicio_sesion, name='login'),
    path('crear_cuenta/', views.crear_cuenta, name='crear_cuenta'),
    path('carrito_compra/', views.carrito_compra, name='carrito_compra'),
    path('compra_exitosa/', views.compra_exitosa, name='compra_exitosa'),
    path('cerrar_sesion/', views.cerrar_sesion, name='cerrar_sesion'),
    path('agregar_al_carrito/', views.agregar_al_carrito, name='agregar_al_carrito'),
    path('comprar-producto', views.comprar_producto, name='comprar_producto'),
    path('carrito/', views.carrito, name='carrito'),
    path('agregar-al-carrito/<str:producto_codigo>/', views.agregar_al_carrito, name='agregar_al_carrito'),
    path('comprar_todo/', views.comprar_todo, name='comprar_todo'),
]