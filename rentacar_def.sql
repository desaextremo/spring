CREATE DATABASE IF NOT EXISTS carsreto3 character set utf8mb4 collate utf8mb4_0900_ai_ci;
DROP USER IF EXISTS  carsreto3@localhost;
create user carsreto3@localhost identified by 'Carsg5123';
grant all privileges on carsreto3.* to carsreto3@localhost;

use carsreto3;

DROP TABLE IF EXISTS admin;
DROP TABLE IF EXISTS gama;
DROP TABLE IF EXISTS car;
DROP TABLE IF EXISTS client;
DROP TABLE IF EXISTS message;
DROP TABLE IF EXISTS reservation;

CREATE TABLE admin (
  id_admin int NOT NULL AUTO_INCREMENT,
  email varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  PRIMARY KEY (id_admin)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE gama (
  id_gama int NOT NULL AUTO_INCREMENT,
  description varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id_gama)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE car (
  id_car int NOT NULL AUTO_INCREMENT,
  brand varchar(255) DEFAULT NULL,
  description varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  year int DEFAULT NULL,
  gama_id int DEFAULT NULL,
  PRIMARY KEY (id_car),
  KEY fk_car_gama (gama_id),
  CONSTRAINT fk_car_gama FOREIGN KEY (gama_id) REFERENCES gama (id_gama)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE client (
  id_client int NOT NULL AUTO_INCREMENT,
  age int DEFAULT NULL,
  email varchar(255) DEFAULT NULL,
  name varchar(255) DEFAULT NULL,
  password varchar(255) DEFAULT NULL,
  PRIMARY KEY (id_client)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE message (
  id_message int NOT NULL AUTO_INCREMENT,
  message_text varchar(255) DEFAULT NULL,
  car_id int DEFAULT NULL,
  client_id int DEFAULT NULL,
  PRIMARY KEY (id_message),
  KEY fk_message_car (car_id),
  KEY fk_message_client (client_id),
  CONSTRAINT fk_message_car FOREIGN KEY (car_id) REFERENCES car (id_car),
  CONSTRAINT fk_message_client FOREIGN KEY (client_id) REFERENCES client (id_client)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE reservation (
  id_reservation int NOT NULL AUTO_INCREMENT,
  devolution_date datetime(6) DEFAULT NULL,
  start_date datetime(6) DEFAULT NULL,
  status varchar(255) DEFAULT NULL,
  car_id int DEFAULT NULL,
  client_id int DEFAULT NULL,
  PRIMARY KEY (id_reservation),
  KEY fk_reservation_car (car_id),
  KEY fk_reservation_client (client_id),
  CONSTRAINT fk_reservation_car FOREIGN KEY (car_id) REFERENCES car (id_car),
  CONSTRAINT fk_reservation_client FOREIGN KEY (client_id) REFERENCES client (id_client)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

DROP TABLE IF EXISTS score;
CREATE TABLE score (
  id_score int NOT NULL AUTO_INCREMENT,
  message_text varchar(255) DEFAULT NULL,
  stars int DEFAULT NULL,
  reservation_id_reservation int DEFAULT NULL,
  PRIMARY KEY (id_score),
  KEY fk_score_reservation (reservation_id_reservation),
  CONSTRAINT fk_score_reservation FOREIGN KEY (reservation_id_reservation) REFERENCES reservation (id_reservation)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;