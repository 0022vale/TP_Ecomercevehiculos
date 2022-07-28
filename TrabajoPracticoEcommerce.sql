CREATE DATABASE if NOT EXISTS EcomerceVehiculos;

USE EcomerceVehiculos;

CREATE TABLE marcas(
id INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50),
Origen VARCHAR(60)
);

INSERT INTO marcas(nombre,origen)VALUES('Volkswagen','Aleman');
INSERT INTO marcas(nombre,origen)VALUES('Ford','Americano');
INSERT INTO marcas(nombre,origen)VALUES('Fiat','Italiano');
INSERT INTO marcas(nombre,origen)VALUES('Renault','Frances');
INSERT INTO marcas(nombre,origen)VALUES('Peugeot','Frances');
INSERT INTO marcas(nombre,origen)VALUES('Mercedes Benz','Aleman');
INSERT INTO marcas(nombre,origen)VALUES('Toyota','Japon');
INSERT INTO marcas(nombre,origen)VALUES('Nissan','Japon');
INSERT INTO marcas(nombre,origen)VALUES('Chevrolet','Americano');
INSERT INTO marcas(nombre,origen)VALUES('Audi','Aleman');


CREATE TABLE if not exists categoria(
id INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50),
Descripcion VARCHAR(50)
);

INSERT INTO categoria(nombre,descripcion)VALUES('Volkswagen','Automovil');
INSERT INTO categoria(nombre,descripcion)VALUES('Ford','Automovil');
INSERT INTO categoria(nombre,descripcion)VALUES('Fiat','Automovil');
INSERT INTO categoria(nombre,descripcion)VALUES('Renault','Camioneta');
INSERT INTO categoria(nombre,descripcion)VALUES('Peugeot','Camioneta');
INSERT INTO categoria(nombre,descripcion)VALUES('Mercedes Benz','Automovil');
INSERT INTO categoria(nombre,descripcion)VALUES('Toyota','Deportivo');
INSERT INTO categoria(nombre,descripcion)VALUES('Nissan','Automovil');
INSERT INTO categoria(nombre,descripcion)VALUES('Chevrolet','Monovolumen');
INSERT INTO categoria(nombre,descripcion)VALUES('Audi','Automovil');

CREATE TABLE if not exists productos(
id INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50),
Precio DOUBLE,
id_categoria INT,
id_marcas INT,
FOREIGN KEY(id_categoria) REFERENCES categoria(id),
FOREIGN KEY(id_marcas) REFERENCES marcas(id)
);

INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('Gol',2300000,1,1);
INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('Mondeo',6000000,2,2);
INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('Cronos',2400000,3,3);
INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('Master',8600000,4,4);
INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('Expert',3600000,5,5);
INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('301',4540000,6,6);
INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('4Runner',1650000,7,7);
INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('Versa',1800000,8,8);
INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('Orlando',3820000,9,9);
INSERT INTO productos(nombre,precio,id_categoria,id_marcas)VALUES('Audi A3',4134000,10,10);

CREATE TABLE if NOT EXISTS pais(
id INT PRIMARY KEY,
Nombre_pais VARCHAR(30)
);

INSERT INTO pais(id,Nombre_pais)VALUES(54,'Argentina');
INSERT INTO pais(id,Nombre_pais)VALUES(598,'Uruguay');
INSERT INTO pais(id,Nombre_pais)VALUES(34,'España');
INSERT INTO pais(id,Nombre_pais)VALUES(49,'Alemaña');

CREATE TABLE if NOT EXISTS provincia(
id INT PRIMARY KEY,
Nombre_provincia VARCHAR(50),
id_pais INT,
FOREIGN KEY (id_pais) REFERENCES pais(id)
);

INSERT INTO provincia(id,Nombre_provincia,id_pais)VALUES(1,'CABA',54);
INSERT INTO provincia(id,Nombre_provincia,id_pais)VALUES(5,'Santa Fe',54);
INSERT INTO provincia(id,Nombre_provincia,id_pais)VALUES(8,'La Pampa',54);
INSERT INTO provincia(id,Nombre_provincia,id_pais)VALUES(96,'Cataluña',34);
INSERT INTO provincia(id,Nombre_provincia,id_pais)VALUES(75,'Colonia',598);
INSERT INTO provincia(id,Nombre_provincia,id_pais)VALUES(77,'Montevideo',598);


CREATE TABLE if NOT EXISTS ciudad(
id INT PRIMARY KEY,
Nombre_ciudad VARCHAR(50),
id_provincia INT,
FOREIGN KEY (id_provincia)REFERENCES provincia(id)
);

INSERT INTO ciudad(id,Nombre_ciudad,id_provincia)VALUES(1,'CABA',1);
INSERT INTO ciudad(id,Nombre_ciudad,id_provincia)VALUES(2,'Rosario',5);
INSERT INTO ciudad(id,Nombre_ciudad,id_provincia)VALUES(3,'Santa Rosa',8);
INSERT INTO ciudad(id,Nombre_ciudad,id_provincia)VALUES(71,'Barcelona',96);
INSERT INTO ciudad(id,Nombre_ciudad,id_provincia)VALUES(12,'Carmelo',75);
INSERT INTO ciudad(id,Nombre_ciudad,id_provincia)VALUES(15,'Montevideo',77);

CREATE TABLE if NOT EXISTS usuarios(
id INT PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
DNI VARCHAR(11),
Email VARCHAR (70),
Celular INT(11),
Direccion VARCHAR(100),
id_ciudad INT,
FOREIGN KEY (id_ciudad)REFERENCES ciudad(id)
);

INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES('Mariela','Rios','234862145','maria@gmail.com',1128334009,'Carlos Calvo 283',1);
INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES      ('Lucas','Perez','24890643','lucasP@yahoo.com',1125505090,'Larrea 1820 8°B',2);
INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES      ('Carla','Lopez','2218189091','carlaP@hotmail.com',1550282830,'Sarmiento 351 1°A',3);
INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES      ('Leo','Gonzal','239090683','leoP@gmail.com',1125508090,'Carretera Barcelona 28',71);
INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES     ('Daniel','Monti','21386311','danielM@gmail.com',1128301112,'Codoba 2500 12°C',1);
INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES      ('Josefina','Marchi','22343234','josefinaM@yahoo.com',1550403098,'Av.Congreso 1500 1°A',71);
INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES      ('Carlos','Roche','21324567','carolosR@gmail.com',1123342234,'Av.Alcorta 3020 4°A',1);
INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES      ('Carolina','Acosh','23345321','carolina@hotmail.com',1121893321,'Ecuador 900 5°A',1);
INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES      ('Francesca','Mila','21345123','fran123@hotmail.com',1523234532,'san Luis 1320 2°A',1);
INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad)
VALUES      ('Macarena','Vilaren','24234789','macaM111@hotmail.com',1123235678,'Salguero 3234 1°A',1);
 
 
CREATE TABLE IF NOT EXISTS metodo_pago(
id INT PRIMARY KEY,
Nombre_metodopago VARCHAR(50)
);

INSERT INTO metodo_pago(id,nombre_metodopago)
VALUES(1,'Efectivo'),(2,'Debito'),(3,'Credito'),(4,'Cheque'),(5,'Transferencia_Bancaria');

CREATE TABLE if NOT EXISTS compras(
id INT PRIMARY KEY AUTO_INCREMENT,
numero_orden INT,
unique key uq_numero_orden(numero_orden),
fecha_compra DATE,
fecha_entrega DATE,
id_usuario INT,
id_metodo_pago INT,
FOREIGN KEY(id_usuario)REFERENCES usuarios(id),
FOREIGN KEY(id_metodo_pago)REFERENCES metodo_pago(id)
);

INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2001,'2021-06-10','2021-06-15',1,1);
INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2002,'2021-06-11','2021-06-19',3,2);
INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2003,'2021-07-10','2021-10-11',2,3);
INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2004,'2021-10-20','2021-10-24',5,4);
INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2005,'2021-10-20','2021-10-25',6,2);
INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2006,'2021-10-21','2021-10-25',9,2);
INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2007,'2021-10-23','2021-10-24',8,3);
INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2008,'2021-10-23','2021-10-26',10,5);
INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2009,'2021-10-25','2021-10-26',4,1);
INSERT INTO compras(numero_orden,fecha_compra,fecha_entrega,id_usuario,id_metodo_pago)
VALUES(2010,'2021-10-25','2021-10-27',7,3);


CREATE TABLE if NOT EXISTS carrito(
id INT PRIMARY KEY AUTO_INCREMENT, 
cantidad INT(11),
id_productos INT,
id_compras INT,
FOREIGN KEY (id_productos)REFERENCES productos(id),
FOREIGN KEY (id_compras)REFERENCES compras(id)
);

INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(3,4,1);
INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(1,2,2);
INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(1,3,3);
INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(2,3,4);
INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(4,5,6);
INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(2,7,6);
INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(1,3,7);
INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(2,5,8);
INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(3,6,9);
INSERT INTO carrito(cantidad,id_productos,id_compras)
VALUES(1,10,10);

/*ALTER TABLE compras AUTO_INCREMENT =1;#Esto reinicia el auto-incrementable
ALTER TABLE usuarios AUTO_INCREMENT =1;#Esto reinicia el auto-incrementable*/



/* CONSULTAS*/

/*JOIN: */
/*JOIN: Trae la relacion de las tablas carrito,producto y compras: la cantidad de productos adquiridos 
por los usuarios, el id tanto de usuarios como de los productos*/

SELECT carrito.cantidad AS 'Cantidad de Productos',carrito.id_productos,compras.id_usuario
FROM carrito
INNER JOIN productos ON carrito.id_productos=productos.id
INNER JOIN compras ON carrito.id_compras=compras.id;

/*JOIN: Trae la relacion de las tablas productos y de carrito: la cantidad de productos comprados, con su id,
el nombre y el precio*/
SELECT carrito.cantidad AS 'Cantidad de Productos', carrito.id_productos,productos.Nombre AS 'Nombre vehiculo',productos.Precio
FROM carrito
INNER JOIN productos ON carrito.id_productos=productos.id


/*JOIN:Trae la relacion de las tablas compras,usuarios y metodo de pago:
con los campos id de la relacion de tabla compras sabemos el numero de orden, la fecha de entrega de la compra,
el nombre del usuario que compro, y el metodo de pago con la que realizo la compra.
ordenar por numero de orden de forma descendente*/
SELECT compras.numero_orden,compras.fecha_entrega,CONCAT(usuarios.Nombre,' ',usuarios.Apellido) AS 'Nombre Completo',metodo_pago.Nombre_metodopago AS 'Tipo de Metodo de Pago'
FROM compras
INNER JOIN usuarios ON compras.id_usuario=usuarios.id
INNER JOIN metodo_pago ON compras.id_metodo_pago=metodo_pago.id
ORDER BY compras.numero_orden desc;

/*JOIN: Relacina las tablas mediante un right join con la ciudad y los usuarios, trayendo el nombre de la ciudad, 
los datos principales de usuarios(nombre, apellido, DNI) y su correo electronico, agrupar por nombre de forma descendente*/

SELECT ciudad.Nombre_ciudad,CONCAT(usuarios.Nombre,' ',usuarios.Apellido,' / ',usuarios.DNI) AS 'Datos de Usuarios',usuarios.Email 
FROM ciudad 
RIGHT JOIN usuarios ON ciudad.id=usuarios.id
GROUP BY usuarios.Nombre desc;

 /*JOIN: Trar el nombre de los productos junto con nombre de sus respectivas marcas, ordeno por nombre de productos en forma descendente*/
SELECT productos.Nombre AS 'Modelo de los Vehiculos',marcas.Nombre AS 'Tipo de Marcas'
FROM productos
INNER JOIN marcas ON productos.id_marcas=marcas.id
ORDER BY productos.Nombre desc;


/*JOIN:Trae la relacion de las tablas compras y metodo de pago: el numero de orden de compras
 y el tipo de metodo de pago,ordenar por numero de orden*/
SELECT compras.numero_orden,metodo_pago.Nombre_metodopago
FROM compras
LEFT JOIN metodo_pago ON compras.id_metodo_pago =metodo_pago.id
ORDER BY numero_orden;

/*JOIN: Muestra el tipo de vehiculos, el tipo de modelo y su descripcion, agrupar por nombre del vehiculo*/
SELECT productos.Nombre AS 'Tipos de Vehiculos',categoria.Nombre AS 'Modelo',categoria.Descripcion AS 'Descripcion'
FROM productos
JOIN categoria ON productos.id_categoria=categoria.id
GROUP BY productos.Nombre ASC ;


/*CONSULTA: Trae los datos de las marcas donde los nombres comincen con la letra F 
y ordenar por nombre de forma descendente*/
SELECT * FROM marcas
WHERE Nombre LIKE 'F%'
ORDER BY  Nombre desc;

/*CONSULTA: Trae el nombre, la cantidad y el  promedio de precio de los productos
y los agrupa por nombre de productos de manera descendente*/
SELECT productos.Nombre,COUNT(id) AS 'Cantidad productos',ROUND(AVG(precio),2)AS 'Promedio'
FROM productos
GROUP BY productos.Nombre desc;

/*CONSULTA:Trae el precio de los productos que se encuentren entre tres millones y cinco millones*/
SELECT Precio FROM productos
WHERE precio BETWEEN 3000000 AND 5000000;

/*CONSULTA: Trae el nombre, apellido y dni de los usuarios arrojandolos en un solo campo, 
adicional traer el numero de celular*/
SELECT CONCAT(Nombre,' ',Apellido,' / ',  DNI)AS 'Datos Personales', Celular  FROM usuarios;

/*CONSULTA: Trae el precio mas alto de los productos*/
SELECT MAX(precio) AS 'Precio Maximo' FROM productos;

/*CONSULTA: Trae el precio minimo de los productos*/
SELECT MIN(precio) AS 'Precio Minimo' FROM productos;

/*CONSULTA: Trae la suma de  todos los precios de los productos*/
SELECT SUM(precio) AS 'Total' FROM productos;

/*CONSULTA: Trae los productos mayores a 5mil y agrupamelo por nombre*/
SELECT Nombre,SUM(precio)
FROM productos
GROUP BY Nombre
HAVING SUM(precio) > 5000000;
SELECT Nombre,precio FROM productos;

/*FUNCION REPLACE: Reemplazo de la tabla usuario el nombre de Leo por Leonardo */
SELECT REPLACE(nombre, 'Leo', 'Leonardo') FROM usuarios;

/*CONSULTAS: */
SELECT *FROM compras;


/*FECHAS: Traigo la fecha actual */
SELECT CURDATE()AS'Fecha Actual';

/*FECHAS: Traigo la fecha y la hora actual*/
SELECT NOW()AS'Fecha y Hora Actual';

/*FECHAS: Cambio el formato de la fecha  ej:2021-06-10 a 2021/June/10*/
SELECT fecha_compra, DATE_FORMAT(fecha_compra, "%Y/%M/%d") from compras;

/*FECHAS: Trae cinco meses atras de la fecha actual de las compras */
SELECT fecha_entrega, DATE_SUB(NOW(),INTERVAL 5 MONTH)AS'Cinco Meses Atras' FROM compras;

/*FECHAS: Trae  de la fecha actual, un año y dos meses Atras de las compra */
SELECT fecha_compra,DATE_SUB(CURDATE(),INTERVAL '1-2' YEAR_MONTH) AS 'Fecha Pasada' FROM compras;

/* STRING: Traigo FUNCION que lea solo los dos primeros caracteres*/
SELECT LEFT('234862145',2) AS DNI FROM usuarios;

/*STRING: Traigo FUNCION lee  la cantidad de caracteres*/
SELECT LENGTH('Montevideo');

/*STRING: Traigo FUNCION de miniscula a mayuscula*/
SELECT UPPER('el origen de volkswagen es aleman');

/*STRING: Traigo FUNCION de mayuscula a miniscula */
SELECT LOWER('CABA');

/*CASE: Creo una estructura, con una consulta y pongo una clausula: una condicion sobre 2 expresiones 
a traves la tabla productos, para que se den ciertas expresiones.
En este caso que traiga el precio del vehiculo dependiendo de diferentes cifras
 para determinar el grado de calidad de los products */
SELECT precio,
CASE
WHEN precio > 5000000 THEN 'Excelente producto'
WHEN precio > 3000000 THEN 'Buen producto' 
ELSE 'Normales'
END AS 'Clasificacion de Productos por Precio'
FROM productos;
 
/*CASE: Creo una estructura, con una consulta y pongo una clausula: una condicion sobre 2 expresiones sobre la relacion
de las tablas compras y carrito, para que se den ciertas expresiones.
En este caso quien es el mejor cliente dependiendo de la cantidad de vehiculos que haya comprado */
SELECT carrito.cantidad,carrito.id_compras,
CASE
WHEN cantidad >3 THEN 'Excelente usuario'
WHEN cantidad >2 THEN 'Muy buen usuario'
ELSE 'Cliente normal'
END 'Usuarios de mayor compra'
FROM carrito
INNER JOIN  compras ON carrito.id_compras=compras.id;

/*CASE: Creo una estructura,con una consulta y pongo una clausula: una condicion sobre 2 expresiones mediante
 la relacion de las tablas usuarios y ciudad para que se den ciertas expresiones.
  En este caso llamo a los usuarios y a los nombres de las ciudades */
SELECT CONCAT(usuarios.Nombre,' ',usuarios.Apellido) AS 'Datos de usuarios',ciudad.Nombre_ciudad,
CASE
WHEN Nombre_ciudad = 'CABA' THEN 'Porteño Argentina'
WHEN Nombre_ciudad = 'Rosario' THEN 'Provincia de Santa Fe, Argentina'
WHEN Nombre_ciudad = 'Santa Rosa' THEN 'Provincia de La Pampa, Argentina'
ELSE 'Extranjero'
END AS 'Provincia y pais que pertenecen'
FROM usuarios
INNER JOIN ciudad ON usuarios.id_ciudad=ciudad.id
ORDER by usuarios.Nombre ASC; 


/*SUBCONSULTA: Hago una subconsulta que me traiga el maximo precio de los productos*/
SELECT MAX(Precio)
FROM productos
WHERE Precio >= (SELECT MAX(Precio) FROM productos);


SELECT MAX(Precio)
FROM productos
WHERE Precio >= ALL(SELECT Precio FROM productos);

/*SUBCONSULTA: Hago una subconsulta el nombre y apellido de solo los DNI que comiencen por 22 */
SELECT usuarios.Nombre,usuarios.Apellido,DNI AS 'DNI que comienzan por 22'
FROM usuarios
WHERE DNI IN (SELECT DNI FROM usuarios WHERE DNI LIKE '22%');

  
/*SUBCONSULTA: Hago una subconsulta  que me traiga  solo el nombre y la descripcion solo que sea de automovil */
SELECT Nombre, Descripcion
FROM categoria
WHERE Descripcion = ALL (SELECT Descripcion FROM categoria WHERE Descripcion = 'Automovil');


/*SUBCONSULTA:*Hago una subconsulta de los nombres de usuarios que compraron y pagaron en efectivo */
SELECT Nombre FROM usuarios WHERE id IN 
(SELECT id_usuario FROM compras WHERE id_metodo_pago =
(SELECT id FROM metodo_pago 
WHERE Nombre_metodopago = 'EFECTIVO'));

/*SUBCONSULTA: Hago una subconsulta: que nombres de usuarios compraron, especificando una fecha determinada */
SELECT Nombre FROM usuarios WHERE usuarios.id IN 
(SELECT distinct (id_usuario)
FROM compras WHERE Fecha_compra ='2021-10-25');

/*SUBCONSULTA: Creo una consulta de la tabla categoria, para saber su  descripcion y 
hago una subconsulta relacionando de la tabla productos donde el nombre sea igual a Audi A3*/
SELECT Descripcion AS 'Tipo de vehiculo' FROM categoria WHERE id = 
(SELECT id_categoria FROM productos WHERE Nombre ='Audi A3');

/*VISTAS:Creo una vista de la tabla usuarios: solo con el nombre,apellido e email
 registrados en CABA, y los ordeno por apellido*/
CREATE VIEW usuarios_datos AS
SELECT Nombre,Apellido,Email FROM usuarios
WHERE id_usuarios=1
ORDER BY Apellido;

/*VISTAS/CONSULTA:Muestro la vista creada: usuarios_datos*/
SELECT * FROM usuarios_datos

/*VISTAS: Creo vista para ver y relaciono las tablas: nombre y precio de la tabla productos,
 nombre y descripcion de la tabla categoria, y lo agrupo por nombre de productos en ascendente*/ 
CREATE VIEW productos_datos AS 
SELECT productos.Nombre AS 'Producto nombre',productos.Precio AS 'Precio Vehiculo',categoria.Nombre AS 'Categoria nombre',categoria.Descripcion AS 'Descripcion'
FROM productos
INNER JOIN categoria ON productos.id_categoria=categoria.id
GROUP BY productos.Nombre ASC ;

/*VISTAS/CONSULTA: Muestro la vista creada: productos_datos*/
SELECT * FROM productos_datos


/*VISTAS:Creo vista para ver y relaciono las tablas:  el numero de orden tabla compras, nombre y apellido de tabla usuarios
 y tipo de pago de tabla metodo de pago y lo agrupo por numero de orden de compra en forma ascendente */
CREATE VIEW compras_datos AS 
SELECT compras.numero_orden AS 'Numero de compra',usuarios.Nombre,usuarios.Apellido,metodo_pago.Nombre_metodopago
FROM compras
INNER JOIN usuarios ON compras.id_usuario =usuarios.id
INNER JOIN metodo_pago ON compras.id_metodo_pago = metodo_pago.id
GROUP BY compras.numero_orden ASC;

/*VISTAS/CONSULTA:Muestro la vista creada: compras_datos */
SELECT * FROM compras_datos

/*Condicional IF: condicion de precios en la cual determine el estado tolerable aquisitivamente por usuarios.*/
SELECT precio, if(precio >3500000,'Es muy caro', 'Es accesible') FROM productos


/*STORE PROCEDURE: insertando el DNI, trae el nombre,apellido,id,de los usuarios
(email:  lo insertamos despues a traves de editar)*/
delimiter //
	CREATE PROCEDURE Busqueda_Usuario(IN SP_DNI VARCHAR(11))
BEGIN
	SELECT nombre,apellido,id_ciudad FROM usuarios WHERE DNI = SP_DNI; 
END //
delimiter ; 

CALL Busqueda_Usuario('21324567');

/*STORE PROCEDURE: Creo un store procedure para buscar los productos en un intervalo precios*/
delimiter //
CREATE OR REPLACE PROCEDURE Busqueda_producto(IN SP_Precio DOUBLE)
BEGIN
      SELECT productos.Nombre,marcas.Nombre FROM productos
      INNER JOIN marcas ON productos.id_marcas = marcas.id
      WHERE Precio>= SP_Precio;
		
END //
delimiter ;

CALL Busqueda_producto(4000000);

/*STORE PROCEDURE: Creo un store procedure para insertar valores de usuarios */
delimiter //
CREATE PROCEDURE Insertar_Usuarios(
												IN SP_Nombre VARCHAR(50), 
												IN SP_Apellido VARCHAR(50), 
												IN SP_Documento VARCHAR(11),
												IN SP_Email VARCHAR(70),
												IN SP_Celular INT(11),
												IN SP_Direccion VARCHAR(100),
												IN SP_id_ciudad int(11))			
BEGIN
      INSERT INTO usuarios(Nombre,Apellido,DNI,Email,Celular,Direccion,id_ciudad) 
		VALUES(SP_Nombre,SP_Apellido,SP_Documento,SP_Email,SP_Celular,SP_Direccion,SP_id_ciudad);
    
END //
delimiter ;

CALL Insertar_Usuarios('Joel','Martinez','1234587','Joel@gmial.com',123456789,'24 Noviembre 66',1);
CALL Busqueda_Usuario('234862145')
SELECT * FROM usuarios

