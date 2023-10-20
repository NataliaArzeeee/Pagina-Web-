import csv

def leer_productos_desde_csv(archivo_csv):
    productos = []
    with open(archivo_csv, newline='', encoding='iso-8859-1') as csv_file:
        csv_reader = csv.DictReader(csv_file, delimiter='\t')  # Usamos '\t' como delimitador, asumiendo que el CSV utiliza tabulaciones.
        for row in csv_reader:
            productos.append({
                'codigo': row['codigo'],  # Nota el espacio después de 'CODIGO'
                'descripcion': row['descripcion'],  # Nota el espacio después de 'DESCRIPCION'
                'stock': row['stock'],
                'precio_unitario': row['precio_unitario']
            })
    return productos
