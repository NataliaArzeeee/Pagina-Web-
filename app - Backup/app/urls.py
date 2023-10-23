from django.contrib import admin
from django.urls import path
from skincare import views


urlpatterns = [
    #path('admin/', admin.site.urls),
    path('', views.inicio, name='inicio'),
    path('productos/', views.lista_de_productos, name='lista_de_productos'),
    path('consejos/', views.consejos, name='consejos'),
]