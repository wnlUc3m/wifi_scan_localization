#!/usr/bin/env python
import pymysql.cursors
import pymysql

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)
sql = "select * from Lugares where planta=-1;"
num=cur.execute(sql)
filas = cur.fetchall()
db.close()
lugar=0
cuenta=0
essid='eduroam'
for fila in filas:

    cuenta=cuenta+1
    lugar=fila['lugar']

   
    sql2 = "select * from EscaneoTotal where essid='"+str(essid)+"' and lugar='"+str(lugar)+"' order by qual desc limit 1;"
    db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    cur = db.cursor(pymysql.cursors.DictCursor)
    num2=cur.execute(sql2)
    filas2 = cur.fetchall()
    db.close()
    
    if(num2 > 0):
    	for fila2 in filas2:
    		qual=fila2['qual']
		print(str(cuenta)+","+str(qual))
		#print(qual)

    else:
		print(str(cuenta)+", 0")
    		#print("0")


