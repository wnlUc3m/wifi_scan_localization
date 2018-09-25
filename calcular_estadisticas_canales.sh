#!/usr/bin/env python
import pymysql.cursors
import pymysql


db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)

sql = "select distinct chan from EscaneoTotal;"
cantidad=cur.execute(sql)
filas = cur.fetchall()
db.close()
print("El numero de canales distintos escaneados son: "+str(cantidad))

print("")
print("Estadisticas por essid")
print("")
db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)

sql = "select distinct essid from EscaneoTotal;"
cur.execute(sql)
filas = cur.fetchall()
db.close()
cantidad=0

for fila in filas:
    a=fila['essid']
    
    sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    num=cur.execute(sql2)
    filas2=cur.fetchall()
    db.close()

    print ("El numero de canales para "+str(a)+" es: "+str(num))
    
print("")
print("Estadisticas por canal")
print("")

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)

sql = "select distinct chan from EscaneoTotal;"
cur.execute(sql)
filas = cur.fetchall()
db.close()
cantidad=0

for fila in filas:
    b=fila['chan']
    
    sql2 = "select distinct mac from EscaneoTotal where chan='"+str(b)+"';"
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    num=cur.execute(sql2)
    filas2=cur.fetchall()
    db.close()
    cantidad=cantidad+num
    print ("El numero de puntos de acceso para el canal "+str(b)+" es: "+str(num))
    
print(cantidad)
print("")
print("Estadisticas por oficiales y no oficiales")
print("")

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)

sql = "select distinct essid from EscaneoTotal;"
cur.execute(sql)
filas = cur.fetchall()
db.close()
cantidad=0

for fila in filas:
    a=fila['essid']
    
    if(a.find("UC3M")!=-1):
		sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    		db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

   		cur = db.cursor(pymysql.cursors.DictCursor)
    		num=cur.execute(sql2)
   		filas2=cur.fetchall()
    		db.close()
		print(a)
		for fila2 in filas2:
			x=fila2['chan']
			print(x)
    if(a.find("eduroam")!=-1):
		sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    		db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

   		cur = db.cursor(pymysql.cursors.DictCursor)
    		num=cur.execute(sql2)
   		filas2=cur.fetchall()
    		db.close()
		print(a)
		for fila2 in filas2:
			x=fila2['chan']
			print(x)
    if(a.find("x00")!=-1):
		sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    		db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

   		cur = db.cursor(pymysql.cursors.DictCursor)
    		num=cur.execute(sql2)
   		filas2=cur.fetchall()
    		db.close()
		print(a)
		for fila2 in filas2:
			x=fila2['chan']
			print(x)
    if(a.find("WLIT")!=-1):
		sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    		db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

   		cur = db.cursor(pymysql.cursors.DictCursor)
    		num=cur.execute(sql2)
   		filas2=cur.fetchall()
    		db.close()
		print(a)
		for fila2 in filas2:
			x=fila2['chan']
			print(x)
    if(a.find("aoliva")!=-1):
		sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    		db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

   		cur = db.cursor(pymysql.cursors.DictCursor)
    		num=cur.execute(sql2)
   		filas2=cur.fetchall()
    		db.close()
		print(a)
		for fila2 in filas2:
			x=fila2['chan']
			print(x)
		
    if(a.find("TSCWLANG")!=-1):
		sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    		db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

   		cur = db.cursor(pymysql.cursors.DictCursor)
    		num=cur.execute(sql2)
   		filas2=cur.fetchall()
    		db.close()
		print(a)
		for fila2 in filas2:
			x=fila2['chan']
			print(x)
		
    if(a.find("cortijo")!=-1):
		sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    		db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

   		cur = db.cursor(pymysql.cursors.DictCursor)
    		num=cur.execute(sql2)
   		filas2=cur.fetchall()
    		db.close()
		print(a)
		for fila2 in filas2:
			x=fila2['chan']
			print(x)

    if(a.find("riasbaixas")!=-1):
		sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    		db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

   		cur = db.cursor(pymysql.cursors.DictCursor)
    		num=cur.execute(sql2)
   		filas2=cur.fetchall()
    		db.close()
		print(a)
		for fila2 in filas2:
			x=fila2['chan']
			print(x)
		
    if(a.find("WORST")!=-1):
		sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    		db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

   		cur = db.cursor(pymysql.cursors.DictCursor)
    		num=cur.execute(sql2)
   		filas2=cur.fetchall()
    		db.close()
		print(a)
		for fila2 in filas2:
			x=fila2['chan']
			print(x)

print("")
print("Estadisticas AP universidad")
print("")

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)

sql = "select distinct essid from EscaneoTotal;"
cur.execute(sql)
filas = cur.fetchall()
db.close()
cantidad=0

for fila in filas:
    a=fila['essid']
    
    sql2 = "select distinct chan from EscaneoTotal where essid='"+str(a)+"';"
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    num=cur.execute(sql2)
    filas2=cur.fetchall()
    db.close()
    if(a.find("UC3M")!=-1):
	print(a)
    	for fila2 in filas2:
		b=fila2['chan']
		sql3 = "select distinct mac from EscaneoTotal where essid='"+str(a)+"' and chan='"+str(b)+"';"
	    	db = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4')

	    	cur = db.cursor(pymysql.cursors.DictCursor)
	    	num3=cur.execute(sql3)
	    	filas3=cur.fetchall()
	    	db.close()
		print("El canal "+str(b)+" tiene "+str(num3)+" distintos AP")
    if(a.find("eduroam")!=-1):
	print(a)
    	for fila2 in filas2:
		b=fila2['chan']
		sql3 = "select distinct mac from EscaneoTotal where essid='"+str(a)+"' and chan='"+str(b)+"';"
	    	db = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4')

	    	cur = db.cursor(pymysql.cursors.DictCursor)
	    	num3=cur.execute(sql3)
	    	filas3=cur.fetchall()
	    	db.close()
		print("El canal "+str(b)+" tiene "+str(num3)+" distintos AP")
    if(a.find("x00")!=-1):
	print(a)
    	for fila2 in filas2:
		b=fila2['chan']
		sql3 = "select distinct mac from EscaneoTotal where essid='"+str(a)+"' and chan='"+str(b)+"';"
	    	db = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4')

	    	cur = db.cursor(pymysql.cursors.DictCursor)
	    	num3=cur.execute(sql3)
	    	filas3=cur.fetchall()
	    	db.close()
		print("El canal "+str(b)+" tiene "+str(num3)+" distintos AP")
    if(a.find("WLIT")!=-1):
	print(a)
    	for fila2 in filas2:
		b=fila2['chan']
		sql3 = "select distinct mac from EscaneoTotal where essid='"+str(a)+"' and chan='"+str(b)+"';"
	    	db = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4')

	    	cur = db.cursor(pymysql.cursors.DictCursor)
	    	num3=cur.execute(sql3)
	    	filas3=cur.fetchall()
	    	db.close()
		print("El canal "+str(b)+" tiene "+str(num3)+" distintos AP")
    if(a.find("aoliva")!=-1):
	print(a)
    	for fila2 in filas2:
		b=fila2['chan']
		sql3 = "select distinct mac from EscaneoTotal where essid='"+str(a)+"' and chan='"+str(b)+"';"
	    	db = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4')

	    	cur = db.cursor(pymysql.cursors.DictCursor)
	    	num3=cur.execute(sql3)
	    	filas3=cur.fetchall()
	    	db.close()
		print("El canal "+str(b)+" tiene "+str(num3)+" distintos AP")		
    if(a.find("TSCWLANG")!=-1):
	print(a)
    	for fila2 in filas2:
		b=fila2['chan']
		sql3 = "select distinct mac from EscaneoTotal where essid='"+str(a)+"' and chan='"+str(b)+"';"
	    	db = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4')

	    	cur = db.cursor(pymysql.cursors.DictCursor)
	    	num3=cur.execute(sql3)
	    	filas3=cur.fetchall()
	    	db.close()
		print("El canal "+str(b)+" tiene "+str(num3)+" distintos AP")		
    if(a.find("cortijo")!=-1):
	print(a)
    	for fila2 in filas2:
		b=fila2['chan']
		sql3 = "select distinct mac from EscaneoTotal where essid='"+str(a)+"' and chan='"+str(b)+"';"
	    	db = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4')

	    	cur = db.cursor(pymysql.cursors.DictCursor)
	    	num3=cur.execute(sql3)
	    	filas3=cur.fetchall()
	    	db.close()
		print("El canal "+str(b)+" tiene "+str(num3)+" distintos AP")
    if(a.find("riasbaixas")!=-1):
	print(a)
    	for fila2 in filas2:
		b=fila2['chan']
		sql3 = "select distinct mac from EscaneoTotal where essid='"+str(a)+"' and chan='"+str(b)+"';"
	    	db = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4')

	    	cur = db.cursor(pymysql.cursors.DictCursor)
	    	num3=cur.execute(sql3)
	    	filas3=cur.fetchall()
	    	db.close()
		print("El canal "+str(b)+" tiene "+str(num3)+" distintos AP")
    if(a.find("WORST")!=-1):
	print(a)
    	for fila2 in filas2:
		b=fila2['chan']
		sql3 = "select distinct mac from EscaneoTotal where essid='"+str(a)+"' and chan='"+str(b)+"';"
	    	db = pymysql.connect(host='localhost',
		                     user='root',
		                     password='jorge',
		                     db='tfg',
		                     charset='utf8mb4')

	    	cur = db.cursor(pymysql.cursors.DictCursor)
	    	num3=cur.execute(sql3)
	    	filas3=cur.fetchall()
	    	db.close()
		print("El canal "+str(b)+" tiene "+str(num3)+" distintos AP")




print("-------------------------------------------------------------")



db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)

sql = "select distinct mac from EscaneoTotal;"
cur.execute(sql)
filas = cur.fetchall()
db.close()
cantidad=0

for fila in filas:
    b=fila['mac']
    
    sql2 = "select distinct chan from EscaneoTotal where mac='"+str(b)+"';"
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    num=cur.execute(sql2)
    filas2=cur.fetchall()
    db.close()
    if(num>1):
	cantidad=cantidad+1
   	print ("El numero canales para la mac: "+str(b)+" es: "+str(num))
print(cantidad)
