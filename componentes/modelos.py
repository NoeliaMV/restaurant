from BD_Metodos.conexion_BS import conexion
from BD_Metodos.tabla import Tabla



class Comentario(Tabla):

    nombre_tabla= 'comentarios'
    conexion=conexion
    atributos_tabla=('ID_comentario','nombre','apellido','correo_electronico', 'comentario')

    def __init__(self, *args, de_bbdd=False):
        super().crear(args, de_bbdd)


class Valoracion(Tabla):

    nombre_tabla= 'valoracion'
    conexion=conexion
    atributos_tabla=('ID_valoracion', 'platillo_ID', 'puntos')

    def __init__(self, *args, de_bbdd=False):
        super().crear(args, de_bbdd)
    

class Platillo(Tabla):

    nombre_tabla='platillo'
    conexion=conexion
    atributos_tabla=('platillo_ID', 'plato', 'descripcion','precio')

    def __init__(self, *args, de_bbdd=False):
        super().crear(args, de_bbdd)

        