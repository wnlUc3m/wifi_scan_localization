#!/usr/bin/env python
import pymysql.cursors
import pymysql

infile = open('guardado02.txt', 'r')
for linea in infile:
    x=linea.split()
    tam = len(x)
    if(tam == 8):
	    a=x[0]
            z=x[1]
	    b=x[2]
	    c=x[5]
	    #c=int(c)
	    d=x[3]
	    #d=int(d)
	    e=x[7]
	    #e=int(e)
	    out="INSERT INTO Prueba3 (essid,mac,sig,qual,chan) VALUES ('"+a+z+"','"+b+"',"+c+","+d+","+e+");"
	    connection = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4',
		                     cursorclass=pymysql.cursors.DictCursor)

	    try:
	    	with connection.cursor() as cursor:
		# Create a new record
			sql = out
			cursor.execute(sql)
	    	connection.commit()

	    finally:
	    	connection.close()
    
    if(tam == 7):
	    a=x[0]
	    b=x[1]
	    c=x[4]
	    #c=int(c)
	    d=x[2]
	    #d=int(d)
	    e=x[6]
	    #e=int(e)
	    out="INSERT INTO Prueba3 (essid,mac,sig,qual,chan) VALUES ('"+a+"','"+b+"',"+c+","+d+","+e+");"
	    connection = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4',
		                     cursorclass=pymysql.cursors.DictCursor)

	    try:
	    	with connection.cursor() as cursor:
		# Create a new record
			sql = out
			cursor.execute(sql)
	    	connection.commit()

	    finally:
	    	connection.close()
infile.close()
