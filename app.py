from flask import Flask
from flask_cors import CORS

app = Flask(__name__)
app.json.ensure_ascii = False
cors = CORS(app, resources={r"/api-restaurant/*": {"origins": "*"}})


# Importar las vistas
from componentes.vista_api import *
from componentes.vista_web import *

# Lo siguiente sólo en desarrollo, no en producción
if __name__ == '__main__':
    app.run()