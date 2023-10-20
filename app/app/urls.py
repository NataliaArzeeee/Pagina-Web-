from django.contrib import admin
from django.urls import path
from . import views

urlpatterns = [
    #path('admin/', admin.site.urls),
    path('producto/<int:producto_id>/', views.detalle_producto, name='detalle_producto'),
]
