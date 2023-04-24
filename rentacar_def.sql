CREATE DATABASE IF NOT EXISTS carsg5 character set utf8mb4 collate utf8mb4_0900_ai_ci;
DROP USER if EXISTS carsg5@localhost;
create user carsg5@localhost identified by 'Carsg5123.';
grant all privileges on carsg5.* to carsg5@localhost;

CREATE DATABASE IF NOT EXISTS carg3 character set utf8mb4 collate utf8mb4_0900_ai_ci;
DROP USER if EXISTS carg3@localhost;
create user carg3@localhost identified by 'Carg3123.';
grant all privileges on carg3.* to carg3@localhost;

INSERT INTO gamas(id_gama,name,description) VALUES(1,'Urbanos - Segmento A','Son los más pequeños de cada casa. Coches destinados a un uso casi individual. Sus medidas a día de hoy oscilan entre los 2,7 metros y los 3,7 metros aproximadamente.');
INSERT INTO gamas(id_gama,name,description) VALUES(2,'Utilitarios - Segmento B','Mejoran las capacidades de sus hermanos pequeños. Mejor habitabilidad y mejor capacidad de carga. Su tamaño oscila entre los 3,7 y los 4,2 metros.');
INSERT INTO gamas(id_gama,name,description) VALUES(3,'Compactos - Segmento C','Sus medidas habituales suelen oscilar entre los 4,2 y 4,6 metros. Lo más habitual es encontrarlo en sus formas clásicas, pero también pueden adoptar diferentes soluciones Familiares, coupé, y descapotables son las más comunes.');
INSERT INTO gamas(id_gama,name,description) VALUES(4,'Berlinas - Segmentos D, E y F','En este caso podemos dividirlo a su vez en tres grupos: segmento D con medidas de entre 4,6 y 4,8 metros, y segmento E, con medidas entre 4,8 y 5 metros y segmento F con medidas superiores a 5 metros.');
INSERT INTO gamas(id_gama,name,description) VALUES(5 ,'Monovolúmenes - Segmento MPV','Históricamente han sido los modelos más ideales para las familias. La función al servicio de la forma. Se les reconoce fácilmente por sus proporciones y sus grandes medidas.');
INSERT INTO cars(id_car,brand,name,description,year,id_gama) VALUES(1,'SEAT','SEAT Mii','es un automóvil de turismo del segmento vehículo 100% eléctrico, a la venta desde el cuarto trimestre de 2011.',2011,1);
INSERT INTO cars(id_car,brand,name,description,year,id_gama) VALUES(2,'Fiat','Fiat 500i','El Fiat 500 eléctrico es la mayor novedad para el urbanita italiano. Cuenta con un motor de 118 CV (87 kW) que le permite acelerar de 0 a 100 km/h en 9 segundos y llegar hasta una velocidad máxima de 150 km/h.',2020 ,1);
INSERT INTO cars(id_car,brand,name,description,year,id_gama) VALUES(3,'Renault','Clio','Es uno de los modelos más vendidos de la compañía francesa.Disponible en carrocería de cinco puertas y en versión familiar (Renault Clio Sport Tourer)',2019,2);
INSERT INTO cars(id_car,brand,name,description,year,id_gama) VALUES(4,'Audi ','Audi A1','En apariencia, el Audi A1 2019 sigue el concepto de originalidad del Audi Q2 y pinta bien su línea respecto a lo que encontramos en otros modelos de la casa, como el A3.',2019,2);
INSERT INTO cars(id_car,brand,name,description,year,id_gama) VALUES(5,'Volkswagen','Golf','Es un automóvil producido por el fabricante alemán de automóviles Volkswagen desde 1974.De altas prestaciones y uno de los más vendidos en la historia, con más de 30 millones de unidades fabricadas,',2011,1);
INSERT INTO clients (id_client,age,name,email,password) VALUES(1,25,'NUBIA AFRICANO RODRIGUEZ','jcgarzon@basewarnet.com','NAFRICANO123');
INSERT INTO clients (id_client,age,name,email,password) VALUES(2,26,'EMEL JULIO DIAZ DIAZ','jcgarzon@basewarnet.com','EDIAZ123');
INSERT INTO clients (id_client,age,name,email,password) VALUES(3,27,'ATALA EDY LAMADRID VIVIEL','atala.lamadrid@yahoo.com','ALAMADRID123');
INSERT INTO clients (id_client,age,name,email,password) VALUES(4,28,'LILIANA FABIOLA DIAZ POVEDA','lilidiaz513@hotmail.com','LDIAZ123');
INSERT INTO clients (id_client,age,name,email,password) VALUES(5,29,'JULIO CESAR DIAZ REUTER','jramireza@famisanar.com.co','JDIAZ123');
INSERT INTO messages(id_message,message_text,id_car,id_client) VALUES(1,'MENSAJE 1',1,1);
INSERT INTO messages(id_message,message_text,id_car,id_client) VALUES(2,'MENSAJE 2',2,2);
INSERT INTO messages(id_message,message_text,id_car,id_client) VALUES(3,'MENSAJE 3',3,3);
INSERT INTO messages(id_message,message_text,id_car,id_client) VALUES(4,'MENSAJE 4',4,4);
INSERT INTO messages(id_message,message_text,id_car,id_client) VALUES(5,'MENSAJE 5',5,5);
INSERT INTO reservations(id_reservation,devolution_date,start_date,status,id_car,id_client)
VALUES(1,'2023-04-16','2023-04-17','created',1,1);
INSERT INTO reservations(id_reservation,devolution_date,start_date,status,id_car,id_client)
VALUES(2,'2023-04-17','2023-04-20','created',2,1);
INSERT INTO reservations(id_reservation,devolution_date,start_date,status,id_car,id_client)
VALUES(3,'2023-04-18','2023-04-20','created',3,2);
INSERT INTO reservations(id_reservation,devolution_date,start_date,status,id_car,id_client)
VALUES(4,'2023-04-18','2023-04-19','created',4,3);
INSERT INTO reservations(id_reservation,devolution_date,start_date,status,id_car,id_client)
VALUES(5,'2023-04-18','2023-04-20','created',5,4);
