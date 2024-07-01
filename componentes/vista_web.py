# Vistas segun patron MVT (Model View Templeate)
from flask import render_template

from app import app
from componentes.modelos import Platillo

@app.route('/')
def mostar_platillos():
    platillos = Platillo.obtener()
    return render_template('./base.html')