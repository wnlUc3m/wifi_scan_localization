#!/usr/bin/env python
import pymysql.cursors
import pymysql


db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)


sql = "SELECT * FROM LugarFechaTotal"
cur.execute(sql)
filas = cur.fetchall()
db.close()

for fila in filas:
    idlugfec=fila['id']

print(idlugfec)

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)
a=200
b=200
c=200
d=200
e=200
a2=200
b2=200
c2=200
d2=200
e2=200
a3=200
b3=200
c3=200
d3=200
e3=200
lug=201

sql = "SELECT * FROM Prueba"
cur.execute(sql)
filas = cur.fetchall()
db.close()


for fila in filas:
    a=fila['mac']
    b=fila['essid']
    c=fila['sig']
    d=fila['qual']
    e=fila['chan']
    
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    sql2 = "SELECT * FROM Prueba2 WHERE mac='"+a+"'AND essid='"+b+"';"
    cur.execute(sql2)
    for row in cur:
        a2=row['mac']
        b2=row['essid']
        c2=row['sig']
        d2=row['qual']
        e2=row['chan']

    db.close()
    sql3 = "SELECT * FROM Prueba3 WHERE mac='"+a+"'AND essid='"+b+"';"
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    numprueba=cur.execute(sql3)
    db.close()
    for row in cur:
        a3=row['mac']
        b3=row['essid']
        c3=row['sig']
        d3=row['qual']
        e3=row['chan']


    if((c2 != 200) & (c3 != 200)):
        c0=c+c2+c3
        d0=d+d2+d3
        c00=int(round(c0/3))
        d00=int(round(d0/3))
    else:
        if(c2 != 200):
            c0=c+c2
            d0=d+d2
            c00=int(round(c0/2))
            d00=int(round(d0/2))
        if(c3 != 200):
            c0=c+c3
  	    d0=d+d3
            c00=int(round(c0/2))
	    d00=int(round(d0/2))
        if((c2 == 200) & (c3 == 200)):
	    c00=c;
            d00=d;

    sql4 = "SELECT * FROM EscaneoTotal WHERE mac='"+a+"'AND essid='"+b+"'AND lugar = '"+str(lug)+"'AND idlugarfecha = '"+str(idlugfec)+"';"
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    num=cur.execute(sql4)
    if(num == 0):
    
	    sql0="INSERT INTO EscaneoTotal (essid,mac,sig,qual,chan,lugar,idlugarfecha) VALUES ('"+b+"','"+a+"','"+str(c00)+"','"+str(d00)+"','"+str(e)+"','"+str(lug)+"',"+str(idlugfec)+");"

	    connection = pymysql.connect(host='localhost',
		                 user='root',
		                 password='jorge',
		                 db='tfg',
		                 charset='utf8mb4',
		                 cursorclass=pymysql.cursors.DictCursor)

	    try:
		with connection.cursor() as cursor:
		# Create a new record
		    	cursor.execute(sql0)
		connection.commit()

	    finally:
		connection.close()
    else:
	print("Ya existe")

print("inserciones de la primera tabla realizadas")
print("comenzamos con la segunda tabla")

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)
a=200
b=200
c=200
d=200
e=200
a2=200
b2=200
c2=200
d2=200
e2=200

sql = "SELECT * FROM Prueba2"
cur.execute(sql)
filas = cur.fetchall()
db.close()


for fila in filas:
    a=fila['mac']
    b=fila['essid']
    c=fila['sig']
    d=fila['qual']
    e=fila['chan']
    
    
    db = pymysql.connect(host='localhost',
		                 user='root',
		                 password='jorge',
		                 db='tfg',
		                 charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    sql2 = "SELECT * FROM Prueba3 WHERE mac='"+a+"'AND essid='"+b+"';"
    cur.execute(sql2)
    for row in cur:
	a2=row['mac']
	b2=row['essid']
	c2=row['sig']
	d2=row['qual']
	e2=row['chan']


    db.close()

    if(c2 != 200):
	c0=c+c2
	d0=d+d2
	c00=int(round(c0/2))
	d00=int(round(d0/2))
    else:
	    c00=c
	    d00=d

    sql4 = "SELECT * FROM EscaneoTotal WHERE mac='"+a+"'AND essid='"+b+"'AND lugar = '"+str(lug)+"'AND idlugarfecha = '"+str(idlugfec)+"';"
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    num=cur.execute(sql4)
    if(num == 0):
	    sql0="INSERT INTO EscaneoTotal (essid,mac,sig,qual,chan,lugar,idlugarfecha) VALUES ('"+b+"','"+a+"','"+str(c00)+"','"+str(d00)+"','"+str(e)+"','"+str(lug)+"',"+str(idlugfec)+");"

	    connection = pymysql.connect(host='localhost',
			             user='root',
			             password='jorge',
			             db='tfg',
			             charset='utf8mb4',
			             cursorclass=pymysql.cursors.DictCursor)

	    try:
		with connection.cursor() as cursor:
		# Create a new record
	   		cursor.execute(sql0)
	   		print("insercion en base final")
		connection.commit()

	    finally:
		connection.close()
    
print("Inserciones segunda tabla finalizadas")
print("comenzamos la tercera tabla")

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)
a=200
b=200
c=200
d=200
e=200
a2=200
b2=200
c2=200
d2=200
e2=200

sql = "SELECT * FROM Prueba3"
cur.execute(sql)
filas = cur.fetchall()
db.close()


for fila in filas:
    a=fila['mac']
    b=fila['essid']
    c=fila['sig']
    d=fila['qual']
    e=fila['chan']

    
    c00=c
    d00=d

    sql4 = "SELECT * FROM EscaneoTotal WHERE mac='"+a+"'AND essid='"+b+"'AND lugar = '"+str(lug)+"'AND idlugarfecha = '"+str(idlugfec)+"';"
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    num=cur.execute(sql4)
    if(num == 0):
	    sql0="INSERT INTO EscaneoTotal (essid,mac,sig,qual,chan,lugar,idlugarfecha) VALUES ('"+b+"','"+a+"','"+str(c00)+"','"+str(d00)+"','"+str(e)+"','"+str(lug)+"',"+str(idlugfec)+");"

	    connection = pymysql.connect(host='localhost',
			             user='root',
			             password='jorge',
			             db='tfg',
			             charset='utf8mb4',
			             cursorclass=pymysql.cursors.DictCursor)

	    try:
		with connection.cursor() as cursor:
		# Create a new record
	   		cursor.execute(sql0)
	   		print("insercion en base final")
		connection.commit()

	    finally:
		connection.close()

print("Inserciones tercera tabla finalizadas")
