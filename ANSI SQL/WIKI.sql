/* 
-----------------------------------------------------------------------
ANSI SQL
-----------------------------------------------------------------------
Fuente Wikipedia

SQL
-------------------------------------------------
El lenguaje de consulta estructurado o SQL (por sus siglas en 
ingl�s structured query language) es un lenguaje declarativo 
de acceso a bases de datos relacionales que permite 
especificar diversos tipos de operaciones en ellas. Una de 
sus caracter�sticas es el manejo del �lgebra y el c�lculo 
relacional que permiten efectuar consultas con el fin de 
recuperar de forma sencilla informaci�n de inter�s de bases 
de datos, as� como hacer cambios en ella.



Or�genes y evoluci�n
-------------------------------------------------

Los or�genes del SQL est�n ligados a los de las bases de 
datos relacionales. En 1970 E. F. Codd propone el modelo 
relacional y asociado a este un sublenguaje de acceso a los 
datos basado en el c�lculo de predicados. Bas�ndose en estas 
ideas, los laboratorios de IBM definen el lenguaje SEQUEL 
(Structured English Query Language) que m�s tarde ser�a 
ampliamente implementado por el sistema de gesti�n de bases 
de datos (SGBD) experimental System R, desarrollado en 1977 
tambi�n por IBM. Sin embargo, fue Oracle quien lo introdujo 
por primera vez en 1979 en un programa comercial.

El SEQUEL terminar�a siendo el predecesor de SQL, siendo este 
una versi�n evolucionada del primero. El SQL pasa a ser el 
lenguaje por excelencia de los diversos sistemas de gesti�n 
de bases de datos relacionales surgidos en los a�os siguientes
y es por fin estandarizado en 1986 por el ANSI,
dando lugar a la primera versi�n est�ndar de este lenguaje, 
el "SQL-86" o "SQL1". Al a�o siguiente este est�ndar es 
tambi�n adoptado por la ISO.

Sin embargo, este primer est�ndar no cubre todas las 
necesidades de los desarrolladores e incluye funcionalidades 
de definici�n de almacenamiento que se consider� suprimirlas. 
As� que, en 1992, se lanz� un nuevo est�ndar ampliado y 
revisado del SQL llamado "SQL-92" o "SQL2".

En la actualidad el SQL es el est�ndar de facto de la inmensa
mayor�a de los SGBD comerciales. Y, aunque la diversidad de 
a�adidos particulares que incluyen las distintas 
implementaciones comerciales del lenguaje es amplia, el 
soporte al est�ndar SQL-92 es general y muy amplio.


El ANSI SQL sufri� varias revisiones y agregados a lo largo 
del tiempo:

A�o 	Nombre 	Alias 	Comentarios
1986 	SQL-86 	SQL-87 	Primera publicaci�n hecha por ANSI. 
						Confirmada por ISO en 1987.
1989 	SQL-89 			Revisi�n menor.
1992 	SQL-92 	SQL2 	Revisi�n mayor.
1999 	SQL:1999 	SQL2000 	Se agregaron expresiones 
						regulares, consultas recursivas 
						(para relaciones jer�rquicas), 
						triggers y algunas caracter�sticas 
						orientadas a objetos.
2003 	SQL:2003 	  	Introduce algunas caracter�sticas de 
						XML, cambios en las funciones, 
						estandarizaci�n del objeto sequence y 
						de las columnas 
						autonumericas. (Ver Eisenberg et al.: 
						SQL:2003 Has Been Published.)
2006 	SQL:2006 	  	ISO/IEC 9075-14:2006 Define las 
						maneras en las cuales el SQL se puede 
						utilizar conjuntamente con XML. 
						Define maneras de importar y guardar 
						datos XML en una base de datos SQL, 
						manipul�ndolos dentro de la base de 
						datos y publicando el XML y los 
						datos SQL convencionales en forma XML.
						Adem�s, proporciona facilidades que 
						permiten a las aplicaciones integrar 
						dentro de su c�digo SQL el uso de 
						XQuery, lenguaje de consulta XML 
						publicado por el W3C (World Wide Web 
						Consortium) para acceso concurrente a 
						datos ordinarios SQL y documentos XML.
2008 	SQL:2008 	  	Permite el uso de la cl�usula ORDER BY 
						fuera de las definiciones de los 
						cursores. Incluye los disparadores 
						del tipo INSTEAD OF. A�ade la 
						sentencia TRUNCATE. (Ver [1].)
						
						
						
						
Caracter�sticas generales del SQL
-------------------------------------------------

El SQL es un lenguaje de acceso a bases de datos que explota 
la flexibilidad y potencia de los sistemas relacionales y 
permite as� gran variedad de operaciones.

Es un lenguaje declarativo de "alto nivel" o "de no 
procedimiento" que, gracias a su fuerte base te�rica y su 
orientaci�n al manejo de conjuntos de registros �y no a 
registros individuales� permite una alta productividad en 
codificaci�n y la orientaci�n a objetos. De esta forma, una 
sola sentencia puede equivaler a uno o m�s programas que se 
utilizar�an en un lenguaje de bajo nivel orientado a registros.
SQL tambien tiene las 

siguientes caracteristicas:

Lenguaje de definicion de datos. El LDD de SQL proporciona 
comandos para la definicion de esquemas de relacion, borrado 
de relaciones y modificaciones de los esquemas de relacion

Lenguaje interactivo de manipulaci�n de datos. El LMD de SQL 
incluye lenguajes de consultas basado tanto en �lgebra 
relacional como en calculo 

relacional de tuplas.

Integridad. El LDD de SQL incluye comandos para especificar 
las restricciones de integridad que deben cumplir los datos 
almacenados en la base de datos.

Definicion de Vistas. El LDD incluye comandos para definir
las vistas

Control de transacciones. SQL tiene comandos para especificar
el comienzo y el final de una transaccion.

SQL Incorporado y Dinamico. Esto quiere decir que se pueden 
incorporar instrucciones de SQL en lenguajes de programacion 
como c++, c, java, Cobol, Pascal y Fortran

Autorizacion. El LDD incluye comandos para especificar los 
derechos de acceso a las relaciones y a las vistas


Tipos de Datos
-------------------------------------------------
Los tipos datos basicos de SQL son: 
Date: una fecha de calendario que contiene el a�o 
		(de cuatro cifras), el mes y el dia. 
Time: La hora de el dia en horas minutos segundos 
		( el valor predeterminado es 0). 
Timestamp: la conbinacion de Date y Time.



Optimizaci�n
-------------------------------------------------
Como ya se dijo antes, y suele ser com�n en los lenguajes de 
acceso a bases de datos de alto nivel, el SQL es un lenguaje 
declarativo. O sea, que especifica qu� es lo que se quiere y 
no c�mo conseguirlo, por lo que una sentencia no establece 
expl�citamente un orden de ejecuci�n.

El orden de ejecuci�n interno de una sentencia puede afectar 
gravemente a la eficiencia del SGBD, por lo que se hace 
necesario que �ste lleve a cabo una optimizaci�n antes de su 
ejecuci�n. Muchas veces, el uso de �ndices acelera una 
instrucci�n de consulta, pero ralentiza la actualizaci�n de 
los datos. Dependiendo del uso de la aplicaci�n, se priorizar�
el acceso indexado o una r�pida actualizaci�n de la 
informaci�n. La optimizaci�n difiere sensiblemente en cada 
motor de base de datos y depende de muchos factores.

Existe una ampliaci�n de SQL conocida como FSQL (Fuzzy SQL, 
SQL difuso) que permite el acceso a bases de datos difusas, 
usando la l�gica difusa. 
Este lenguaje ha sido implementado a nivel experimental y 
est� evolucionando r�pidamente.


Lenguaje de definici�n de datos (DDL)
-------------------------------------------------
El lenguaje de definici�n de datos 
-------------------------------------------------
(en ingl�s Data Definition Language, o DDL), es el que se 
encarga de la modificaci�n de la estructura de los objetos 
de la base de datos. Incluye �rdenes para modificar, borrar o 
definir las tablas en las que se almacenan los datos de la 
base de datos. 
Existen cuatro operaciones b�sicas: CREATE, ALTER, DROP y 
TRUNCATE.


CREATE
-------------------------------------------------
Este comando crea un objeto dentro del gestor de base de datos. 
Puede ser una base de datos, tabla, �ndice, procedimiento 
almacenado o vista.
Ejemplo (crear una tabla)

CREATE TABLE Empleado
(
id INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Direccion VARCHAR(255),
Ciudad VARCHAR(60),
Telefono VARCHAR(15),
Peso VARCHAR (5),
Edad CHAR (2),
Actividad VARCHAR (100),
idCargo INT
)


ALTER
-------------------------------------------------
Este comando permite modificar la estructura de un objeto. 
Se pueden agregar/quitar campos a una tabla, modificar el tipo
de un campo, agregar/quitar �ndices a una tabla, modificar un 
trigger, etc.
Ejemplo (agregar columna a una tabla)

ALTER TABLE 'NOMBRE_TABLA' ADD NUEVO_CAMPO INT UNSIGNED;

DROP
-------------------------------------------------
Este comando elimina un objeto de la base de datos. Puede ser 
una tabla, vista, �ndice, trigger, funci�n, procedimiento o 
cualquier otro objeto que el motor de la base de datos soporte.
Se puede combinar con la sentencia ALTER.

Ejemplo

 DROP TABLE 'NOMBRE_TABLA';.

TRUNCATE
-------------------------------------------------
Este comando trunca todo el contenido de una tabla. La ventaja
sobre el comando DROP, es que si se quiere borrar todo el 
contenido de la tabla, es mucho m�s r�pido, especialmente si 
la tabla es muy grande. La desventaja es que TRUNCATE s�lo 
sirve cuando se quiere eliminar absolutamente todos los 
registros, ya que no se permite la cl�usula WHERE. Si bien, 
en un principio, esta sentencia parecer�a ser DML (Lenguaje 
de Manipulaci�n de Datos), es en realidad una DDL, ya que 
internamente, el comando TRUNCATE borra la tabla y la vuelve 
a crear y no ejecuta ninguna transacci�n.


Ejemplo

 TRUNCATE TABLE 'NOMBRE_TABLA';

 
Lenguaje de manipulaci�n de datos 
DML(Data Manipulation Language)
-------------------------------------------------
Definici�n
Un lenguaje de manipulaci�n de datos (Data Manipulation 
Language, o DML en ingl�s) es un lenguaje proporcionado por 
el sistema de gesti�n de base de datos que permite a los 
usuarios llevar a cabo las tareas de consulta o manipulaci�n 
de los datos, organizados por el modelo de datos adecuado.

El lenguaje de manipulaci�n de datos m�s popular hoy d�a es 
SQL, usado para recuperar y manipular datos en una base de 
datos relacional.

INSERT
-------------------------------------------------
Una sentencia INSERT de SQL agrega uno o m�s registros a una 
(y s�lo una) tabla en una base de datos relacional.
Forma b�sica

 INSERT INTO 'tabla' ('columna1',['columna2,... ']) 
VALUES ('valor1', ['valor2,...'])

Las cantidades de columnas y valores deben ser iguales. Si 
una columna no se especifica, le ser� asignado el valor por 
omisi�n. Los valores especificados (o impl�citos) por la 
sentencia INSERT deber�n satisfacer todas las restricciones 
aplicables. Si ocurre un error de sintaxis o si alguna de las 
restricciones es violada, no se agrega la fila y se devuelve 
un error.

Ejemplo

 INSERT INTO agenda_telefonica (nombre, numero) 
VALUES ('Roberto Jeldrez', 4886850);

Cuando se especifican todos los valores de una tabla, se 
puede utilizar la sentencia acortada:

 INSERT INTO nombreTabla VALUES ('valor1', ['valor2,...'])

Ejemplo (asumiendo que 'nombre' y 'n�mero' son las �nicas 
columnas de la tabla 'agenda_telefonica'):

 INSERT INTO agenda_telefonica 
VALUES ('Jhonny Aguiar', 080473968);


Formas avanzadas

Una caracter�stica de SQL (desde SQL-92) es el uso de 
constructores de filas para insertar m�ltiples filas a la 
vez, con una sola sentencia SQL:

INSERT INTO ''tabla'' (''columna1'', [''columna2,... '']) 
VALUES (''valor1a'', [''valor1b,...'']), 
(''value2a'', [''value2b,...'']),...;

Esta caracter�stica es soportada por DB2, PostgreSQL (desde 
la versi�n 8.2), MySQL, y H2.

Ejemplo (asumiendo que 'nombre' y 'n�mero' son las �nicas 
columnas en la tabla 'agenda_telefonica'):

INSERT INTO agenda_telefonica VALUES 
('Roberto Fern�ndez', '4886850'), 
('Alejandro Sosa', '4556550');


Que pod�a haber sido realizado por las sentencias

INSERT INTO agenda_telefonica VALUES 
('Roberto Fern�ndez', '4886850');
INSERT INTO agenda_telefonica VALUES 
('Alejandro Sosa', '4556550');

Notar que las sentencias separadas pueden tener sem�ntica 
diferente (especialmente con respecto a los triggers), 
y puede tener diferente rendimiento
que la sentencia de inserci�n m�ltiple.


Para insertar varias filas en MS SQL puede utilizar esa 
construcci�n:

INSERT INTO phone_book
SELECT 'John Doe', '555-1212'
UNION ALL
SELECT 'Peter Doe', '555-2323';

Tenga en cuenta que no se trata de una sentencia SQL v�lida 
de acuerdo con el est�ndar SQL (SQL: 2003), debido a la 
cl�usula subselect incompleta.

Para hacer lo mismo en Oracle se usa DUAL TABLE, siempre que
se trate de solo una simple fila:

INSERT INTO phone_book
SELECT 'John Doe', '555-1212' FROM DUAL
UNION ALL
SELECT 'Peter Doe','555-2323' FROM DUAL

Una implementaci�n conforme al est�ndar de esta l�gica se 
muestra el siguiente ejemplo, o como se muestra arriba 
(no aplica en Oracle):

INSERT INTO phone_book
SELECT 'John Doe', '555-1212' FROM LATERAL 
( VALUES (1) ) AS t(c)
UNION ALL
SELECT 'Peter Doe','555-2323' FROM LATERAL 
( VALUES (1) ) AS t(c)

Copia de filas de otras tablas

Un INSERT tambi�n puede utilizarse para recuperar datos de 
otros, modificarla si es necesario e insertarla directamente 
en la tabla. 
Todo esto se hace en una sola sentencia SQL que no implica 
ning�n procesamiento intermedio en la aplicaci�n cliente. 
Un SUBSELECT se utiliza en lugar de la cl�usula VALUES. El 
SUBSELECT puede contener JOIN, llamadas a funciones, y puede 
incluso consultar en la misma TABLA los datos que se inserta.
L�gicamente, el SELECT se eval�a antes que la operaci�n 
INSERT est� iniciada. Un ejemplo se da a continuaci�n.


INSERT INTO phone_book2
 
SELECT *
FROM phone_book
WHERE name IN ('John Doe', 'Peter Doe')


Una variaci�n es necesaria cuando algunos de los datos de la 
tabla fuente se est� insertando en la nueva tabla, pero no 
todo el registro. 
(O cuando los esquemas de las tablas no son iguales.)

INSERT INTO phone_book2 ( [name], [phoneNumber] )
 

SELECT [name], [phoneNumber]
FROM phone_book
WHERE name IN ('John Doe', 'Peter Doe')


SELECT
-------------------------------------------------
El SELECT produce una tabla (temporal), y el esquema de la 
tabla temporal debe coincidir con el esquema de la tabla 
donde los datos son insertados.


UPDATE
-------------------------------------------------
Una sentencia UPDATE de SQL es utilizada para modificar los 
valores de un conjunto de registros existentes en una tabla.
Ejemplo

UPDATE My_table SET field1 = 'updated value asd' 
WHERE field2 = 'N';

DELETE
-------------------------------------------------
Una sentencia DELETE de SQL borra uno o m�s registros 
existentes en una tabla.
Forma b�sica

SQL="DELETE FROM ''tabla'' WHERE ''columna1'' = ''valor1''"

Ejemplo

DELETE FROM My_table WHERE field2 = 'N';



Recuperaci�n de clave
-------------------------------------------------
Los dise�adores de base de datos que usan una clave suplente 
como la clave principal para cada tabla, se ejecutar� en el 
ocasional escenario en el que es necesario recuperar 
autom�ticamente la base de datos, generando una clave 
primaria de una sentencia SQL INSERT para su uso en otras 
sentencias SQL. La mayor�a de los sistemas no permiten 
sentencias SQL INSERT para retornar fila de datos. Por lo 
tanto, se hace necesario aplicar una soluci�n en tales 
escenarios.


Implementaciones comunes incluyen:

    Utilizando un procedimiento almacenado espec�fico de base 
	de datos que genera la clave suplente, realice la 
	operaci�n INSERT, y finalmente 
	devuelve la clave generada.
    Utilizando una sentencia SELECT espec�fica de base de 
	datos, sobre una tabla temporal que contiene la �ltima 
	fila insertada. DB2 implementa esta 
	caracter�stica de la siguiente manera:

	
SELECT *
FROM NEW TABLE 
( INSERT INTO phone_book VALUES 
( 'Cristobal Jeldrez','0426.817.10.30' ) ) AS t

    Utilizando una sentencia SELECT despu�s de la sentencia 
	INSERT con funci�n espec�fica de base de datos, que 
	devuelve la clave primaria 
	generada por el registro insertado m�s recientemente.
    Utilizando una combinaci�n �nica de elementos del 
	original SQL INSERT en una posterior sentencia SELECT.
    Utilizando un GUID en la sentencia SQL INSERT y la 
	recupera en una sentencia SELECT.
    Utilizando la funci�n de PHP mysql_insert_id() de MySQL 
	despu�s de la sentencia INSERT.
    Utilizando un INSERT con la cl�usula RETURNING para 
	Oracle, que s�lo se puede utilizar dentro de un PL/SQL 
	bloque, en el caso de PostgreSQL se 
	puede usar tambi�n tanto con SQL como con PL/SQL.

	
INSERT INTO phone_book 
VALUES ( 'Cristobal Jeldrez','0426.817.10.30' )
RETURNING phone_book_id INTO v_pb_id

    En el caso de MS SQL se puede utilizar la siguiente 
	instrucci�n:

SET NoCount ON;
INSERT INTO phone_book VALUES 
( 'Cristobal Jeldrez','0426.817.10.30' );
SELECT @@IDENTITY AS ID


Disparadores
-------------------------------------------------
Los disparadores, tambi�n conocidos como desencadenantes 
(triggers en ingl�s) son definidos sobre la tabla en la que 
opera la sentencia INSERT, 
los desencadenantes son evaluados en el contexto de la 
operaci�n. Desencadenantes BEFORE INSERT permiten la 
modificaci�n de los valores que se 
insertar� en la tabla. Desencadenantes AFTER INSERT no puede
modificar los datos de ahora en adelante, pero se puede 
utilizar para iniciar acciones en otras tablas, por ejemplo 
para aplicar mecanismos de auditor�a.
Sistemas de gesti�n de base de datos

Los sistemas de gesti�n de base de datos con soporte SQL m�s 
utilizados son, por orden alfab�tico:

    DB2
    Firebird
    HSQL
    Informix
    Interbase
    MariaDB
    Microsoft SQL Server
    MySQL
    Oracle
    PostgreSQL
    PervasiveSQL
    SQLite
    Sybase ASE
 */
