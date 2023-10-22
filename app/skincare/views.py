from django.shortcuts import render

def inicio(request):
    return render(request, 'skincare/inicio.html')

import csv
from django.shortcuts import render

def lista_de_productos(request):
    archivo_csv = 'C:\\Users\\Alejandro\\Documents\\app\\skincare\\listaproductos.csv'

    # Lee los datos del archivo CSV con codificación UTF-8 y cambia el delimitador de ';' a ','.
    productos = []
    with open(archivo_csv, newline='', encoding='utf-8') as csv_file:
        csv_text = csv_file.read().replace(';', ',')  # Reemplaza ';' con ',' en el contenido del archivo.
        csv_reader = csv.DictReader(csv_text.splitlines(), delimiter=',')  # Usar ',' como delimitador.
        for row in csv_reader:
            productos.append(row)  # Agrega cada fila del CSV como un diccionario.

    return render(request, 'skincare/lista_de_productos.html', {'productos': productos})

