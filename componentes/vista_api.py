from flask import jsonify
from flask import request
from flask import render_template

from app import app
from componentes.modelos import Comentario
from componentes.modelos import Valoracion
from componentes.modelos import Platillo


#GET
@app.route("/api-restaurant/platillo", methods=['GET'])
def api_platillo():
    platillos = Platillo.obtener()
    datos = [platillo.__dict__ for platillo in platillos]

    return jsonify(datos)

@app.route("/api-restaurant/comentario", methods=['GET'])
def api_cliente():
    comentarios = Comentario.obtener()
    datos = [Comentario.__dict__ for comentario in comentarios]

    return jsonify(datos)

@app.route("/api-restaurant/valoracion", methods=['GET'])
def api_valoracion():
    valoraciones = Valoracion.obtener()
    datos = [valoracion.__dict__ for valoracion in valoraciones]

    for dato in datos:
        dato["platillo"] = Platillo.obtener('id', dato['platillo_ID']).__dict__["platillo"]

        del dato["platillo_ID"]

    return jsonify(datos) 
   
#@app.route("/api-prueba_back/imagen", methods=['GET'])
#def api_imagen():
    imagenes = Imagen.obtener()
    datos = [imagen.__dict__ for imagen in imagenes]

    for dato in datos:
        dato["platillo"] = Platillo.obtener('id', dato['platillo_id']).__dict__["platillo"]

        del dato["platillo_id"] 

    return jsonify(datos)   
  
  #POST
@app.route("/api-restaurant/comentario", methods=['POST'])
def crear_coemtario():

    if request.method == 'POST':
        datos = request.json["datos"]
        comentario_nuevo = Comentario(
            datos['nombre'],
            datos['apellido'],
            datos['correo_electronico'],
            datos['comentario'],
        )

        respuesta = {}
        rta_bbd = comentario_nuevo.guardar_db()

        if not rta_bbd:
            respuesta['mensaje'] = 'No se pudo enviar los datos!'
            respuesta['status'] = 409
        else:
            comentario_nuevo.guardar_db()
            respuesta['mensaje'] = 'Datos enviados con exito!'
            respuesta['status'] = 200

    else:
        respuesta['mensaje'] = 'No se recibieron datos'
        respuesta['status'] = 204

    return jsonify(respuesta)

@app.route("/api-restaurant/valoracion", methods=['POST'])
def crear_valoracion():

    if request.method == 'POST':
        datos = request.json["datos"]
        nva_valoracion = Valoracion(
            datos['platillo_ID'],
            datos['puntos'],
        )

        respuesta = {}
        rta_bbd = nva_valoracion.guardar_db()

        if not rta_bbd:
            respuesta['mensaje'] = 'No se pudo enviar los datos!'
            respuesta['status'] = 409
        else:
            nva_valoracion.guardar_db()
            respuesta['mensaje'] = 'Datos enviados con exito!'
            respuesta['status'] = 200

    else:
        respuesta['mensaje'] = 'No se recibieron datos'
        respuesta['status'] = 204

    return jsonify(respuesta)
