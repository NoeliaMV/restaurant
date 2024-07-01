-- Creando la base de datos
CREATE DATABASE Restaurant;

-- Usando la base de datos
USE Restaurant;

-- Creando la primera Tabla comentarios
CREATE TABLE comentarios(
	ID_comentario INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Correo_electronico VARCHAR(100),
    Comentario VARCHAR(100),
    PRIMARY KEY (ID_Comentario)
);

-- creando la segunda tabla
CREATE TABLE valoracion(
	ID_valoracion INT NOT NULL AUTO_INCREMENT,
	platillo_ID INT,
    puntos varchar(10),
    PRIMARY KEY (ID_valoracion),
    FOREIGN KEY (ID_valoracion) REFERENCES comentarios(ID_comentario),
    FOREIGN KEY (platillo_ID) REFERENCES platillo(platillo_ID)
);

-- creacion de la ultima tabla
CREATE TABLE platillo(
	platillo_ID INT NOT NULL AUTO_INCREMENT,
	plato VARCHAR(50),
    descripcion VARCHAR(150),
    precio INT(50),
    PRIMARY KEY (platillo_ID)
);

-- Agregar valores a las tablas
INSERT INTO comentarios(nombre,Apellido,Correo_electronico, Comentario) VALUES
	('Yonathan','Diaz','yd@123gmail.com','El sitio es genial'),
    ('Lucas', 'Perez','lp@123hotmail.com','Comida sobrevalorada'),
    ('Emily','Watson','EmilyW@gmail.com','dolor de estomago'),
    ('Homer','Simpson','Hsimpsom@gmail.com','MMMMMMM Rosquillas ahhhhhg');

INSERT INTO platillo (Plato,descripcion,precio) VALUES
	('pescado al horno', 'pescado finamente seleccionado de la atlantida',35),
    ('Pollo frito', 'lo mejor del pollo a tu mesa', 40),
    ('torta de jamos', 'Desde la vecindad del chavo a tu paladar', 25),
    ('ensalada Cesar', 'finas lechugas y aderezo de la casa para cautivar tu paladar',45);

INSERT INTO valoracion(platillo_ID,puntos) VALUES
	(1, '9'),
    (2,'8'), 
    (3,'5'),
    (4,'10');


    
    


 