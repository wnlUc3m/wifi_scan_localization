#!/usr/bin/env python
import pymysql.cursors
import pymysql

# Connect to the database
connection = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

try:
    with connection.cursor() as cursor:
        # Create a new record
        sql = "DROP TABLE Prueba;"
	print("Prueba1 borrado")
        cursor.execute(sql)
    connection.commit()

finally:
    connection.close()

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

try:
    with connection.cursor() as cursor:
        # Create a new record
        sql = "DROP TABLE Prueba2;"
	print("Prueba2 borrado")
        cursor.execute(sql)
    connection.commit()

finally:
    connection.close()

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

try:
    with connection.cursor() as cursor:
        # Create a new record
        sql = "DROP TABLE Prueba3;"
	print("Prueba3 borrado")
        cursor.execute(sql)
    connection.commit()

finally:
    connection.close()

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

try:
    with connection.cursor() as cursor:
        # Create a new record
        sql = "CREATE TABLE Prueba(    id   INT              NOT NULL AUTO_INCREMENT,    essid VARCHAR (255)     NOT NULL,    mac VARCHAR (255) NOT NULL,    sig  INT              NOT NULL,    qual INT NOT NULL,    chan INT NOT NULL,           PRIMARY KEY (id) );"
	print("Prueba1 creado")
        cursor.execute(sql)
    connection.commit()

finally:
    connection.close()

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

try:
    with connection.cursor() as cursor:
        # Create a new record
        sql = "CREATE TABLE Prueba2(    id   INT              NOT NULL AUTO_INCREMENT,    essid VARCHAR (255)     NOT NULL,    mac VARCHAR (255) NOT NULL,    sig  INT              NOT NULL,    qual INT NOT NULL,    chan INT NOT NULL,           PRIMARY KEY (id) );"
	print("Prueba2 creado")
        cursor.execute(sql)
    connection.commit()

finally:
    connection.close()

connection = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

try:
    with connection.cursor() as cursor:
        # Create a new record
        sql = "CREATE TABLE Prueba3(    id   INT              NOT NULL AUTO_INCREMENT,    essid VARCHAR (255)     NOT NULL,    mac VARCHAR (255) NOT NULL,    sig  INT              NOT NULL,    qual INT NOT NULL,    chan INT NOT NULL,           PRIMARY KEY (id) );"
	print("Prueba3 creado")
        cursor.execute(sql)
    connection.commit()

finally:
    connection.close()
