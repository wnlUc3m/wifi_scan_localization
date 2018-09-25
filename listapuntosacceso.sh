#!/usr/bin/env python
import pymysql.cursors
import pymysql

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)
total_puntos=0
num_redes=0
num_redes_universidad=0
num_puntos_universidad=0
num_redes_uni_noof=0
num_puntos_universidad_noof=0
num_redes_vecinos=0
num_puntos_normales=0
num_puntos_tipicos=0
planta=2
array = []
resultado2=[]
num_macs_raras=0

sql = "select distinct essid from EscaneoTotal;"
num_redes=cur.execute(sql)
filas = cur.fetchall()
db.close()


for fila in filas:
    a=fila['essid']   
    
    sql2 = "SELECT distinct mac FROM EscaneoTotal WHERE essid = '"+str(a)+"';"
    db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

    cur = db.cursor(pymysql.cursors.DictCursor)
    num_ap=cur.execute(sql2)
    filas2=cur.fetchall()
    db.close()
    total_puntos=total_puntos + num_ap

    resultado="Red: "+str(a)+" / Cantidad de Puntos: "+str(num_ap)
    print(resultado)
   
    if(a.find("UC3M")!=-1):
		num_redes_universidad = num_redes_universidad + 1
		num_puntos_universidad = num_puntos_universidad + num_ap
    if(a.find("eduroam")!=-1):
		num_redes_universidad=num_redes_universidad+1
		num_puntos_universidad=num_puntos_universidad+num_ap
    if(a.find("x00")!=-1):
		num_redes_universidad=num_redes_universidad+1
		num_puntos_universidad=num_puntos_universidad+num_ap
    if(a.find("WLIT")!=-1):
		num_redes_universidad=num_redes_universidad+1
		num_puntos_universidad=num_puntos_universidad+num_ap
    if(a.find("aoliva")!=-1):
		num_puntos_universidad_noof=num_puntos_universidad_noof+num_ap
		num_redes_uni_noof=num_redes_uni_noof+1
		
    if(a.find("TSCWLANG")!=-1):
		num_puntos_universidad_noof=num_puntos_universidad_noof+num_ap
		num_redes_uni_noof=num_redes_uni_noof+1
		
    if(a.find("cortijo")!=-1):
		num_puntos_universidad_noof=num_puntos_universidad_noof+num_ap
		num_redes_uni_noof=num_redes_uni_noof+1

    if(a.find("riasbaixas")!=-1):
		num_puntos_universidad_noof=num_puntos_universidad_noof+num_ap
		num_redes_uni_noof=num_redes_uni_noof+1
		
    if(a.find("WORST")!=-1):
		num_puntos_universidad_noof=num_puntos_universidad_noof+num_ap
		num_redes_uni_noof=num_redes_uni_noof+1

    if(a.find("MOVISTAR")!=-1):
		num_puntos_normales=num_puntos_normales+num_ap
		num_redes_vecinos=num_redes_vecinos+1
		
    if(a.find("ONO")!=-1):
		num_puntos_normales=num_puntos_normales+num_ap
		num_redes_vecinos=num_redes_vecinos+1

    if(a.find("Orange")!=-1):
		num_puntos_normales=num_puntos_normales+num_ap
		num_redes_vecinos=num_redes_vecinos+1		
    if(a.find("vodafone")!=-1):
		num_puntos_normales=num_puntos_normales+num_ap
		num_redes_vecinos=num_redes_vecinos+1		
    if(a.find("JAZZTEL")!=-1):
		num_puntos_normales=num_puntos_normales+num_ap
		num_redes_vecinos=num_redes_vecinos+1
    if(a.find("Lowi")!=-1):
		num_puntos_normales=num_puntos_normales+num_ap
		num_redes_vecinos=num_redes_vecinos+1		
    if(a.find("MASMOVIL")!=-1):
		num_puntos_normales=num_puntos_normales+num_ap
		num_redes_vecinos=num_redes_vecinos+1
    if(a.find("MiFibra")!=-1):
		num_puntos_tipicos=num_puntos_tipicos+num_ap
		num_redes_vecinos=num_redes_vecinos+1
		for fila2 in filas2:
			array.append(str(fila2['mac']))
		
    if(a.find("WLAN")!=-1):
		num_puntos_tipicos=num_puntos_tipicos+num_ap
		num_redes_vecinos=num_redes_vecinos+1
    if(a.find("MIWIFI")!=-1):
		num_puntos_tipicos=num_puntos_tipicos+num_ap
		num_redes_vecinos=num_redes_vecinos+1		
		
    num_ap=0

    for fila2 in filas2:
	b=fila2['mac']
	if(a.find("Orange")!=-1):
		print(b)
	sql3 = "SELECT distinct essid FROM EscaneoTotal WHERE mac = '"+str(b)+"';"
        db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

        cur = db.cursor(pymysql.cursors.DictCursor)
        num_essid=cur.execute(sql3)
        filas3=cur.fetchall()
        db.close()
	if(num_essid>1):
		#print("bingo")
		num_macs_raras=num_macs_raras+1
		for fila3 in filas3:
			c=fila3['essid']
			#print(str(c))
for aux2 in resultado2:
	print(aux2)
print("El numero total de redes es: "+str(num_redes))
print("El numero total de puntos es: "+str(total_puntos))
print("El numero total de redes de la universidad: "+str(num_redes_universidad))
print("El numero total de puntos de la universidad: "+str(num_puntos_universidad))
print("El numero total de redes de la universidad no oficiales: "+str(num_redes_uni_noof))
print("El numero total de puntos de la universidad no oficiales: "+str(num_puntos_universidad_noof))
print("El numero total de redes de vecinos: "+str(num_redes_vecinos))
print("El numero total de puntos de companias normales es: "+str(num_puntos_normales))
print("El numero total de puntos de wifis caseros sin nombre de compania es: "+str(num_puntos_tipicos))
print("El numero total de puntos identificados: "+str(num_puntos_universidad+num_puntos_universidad_noof+num_puntos_normales+num_puntos_tipicos))
print("El numero total de macs con varias essid asignadas es: "+str(num_macs_raras))

