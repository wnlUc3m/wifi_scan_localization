#!/usr/bin/env python
import pymysql.cursors
import pymysql

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)

sql = "select * from EscaneoTotal where essid='eduroam';"
num=cur.execute(sql)
filas = cur.fetchall()
db.close()
num_de_1_0=0
num_de_1_2=0
num_de_1_3=0
num_de_1=0
num_de_0_1=0
num_de_0_2=0
num_de_0_3=0
num_de_0=0
num_de_2_0=0
num_de_2_1=0
num_de_2_3=0
num_de_2=0

num_de_D_E=0
num_de_D_F=0
num_de_D=0
num_de_E_D=0
num_de_E_F=0
num_de_E=0
num_de_F_D=0
num_de_F_E=0
num_de_F=0
num_total=0
num_total_eduroam=0
menorde58=0
menorwifi=0


for fila in filas:
    a=fila['mac']
    b=fila['qual']
    c=fila['lugar']
    d=fila['idlugarfecha']
	
    
    aux=a[16]
    
    if(aux == '1'):
	num_de_1=num_de_1+1

	a_aux=a[0:16]+'0'
        sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_1_0=num_de_1_0+1
			num_total_eduroam=num_total_eduroam+1
			print(str(b)+","+str(b2))
	else:
		a_aux=a[0:16]+'2'
		sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_1_2=num_de_1_2+1
				num_total_eduroam=num_total_eduroam+1
				print(str(b)+","+str(b2))
		else:
			a_aux=a[0:16]+'3'
			sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
			db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
		    	cur = db.cursor(pymysql.cursors.DictCursor)
		    	num2=cur.execute(sql2)
		    	filas2 = cur.fetchall()
		    	db.close()
			if(num2 > 0):
		    		for fila2 in filas2:
		    			b2=fila2['qual']
					num_de_1_3=num_de_1_3+1
					num_total_eduroam=num_total_eduroam+1
					print(str(b)+","+str(b2))
    			else:
				#print("mac: "+str(a)+",lugar: "+str(c)+",idlugarfecha: "+str(d))
				qual=fila2['qual']
				if(qual<58):
					menorde58=menorde58+1				
				num_total_eduroam=num_total_eduroam+1				
				print(str(b)+",0")

    if(aux == '0'):
	num_de_0=num_de_0+1

	a_aux=a[0:16]+'1'
        sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_0_1=num_de_0_1+1
			num_total_eduroam=num_total_eduroam+1
			print(str(b)+","+str(b2))
	else:
		a_aux=a[0:16]+'2'
		sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_0_2=num_de_0_2+1
				num_total_eduroam=num_total_eduroam+1
				print(str(b)+","+str(b2))
		else:
			a_aux=a[0:16]+'3'
			sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
			db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
		    	cur = db.cursor(pymysql.cursors.DictCursor)
		    	num2=cur.execute(sql2)
		    	filas2 = cur.fetchall()
		    	db.close()
			if(num2 > 0):
		    		for fila2 in filas2:
		    			b2=fila2['qual']
					num_de_0_3=num_de_0_3+1
					num_total_eduroam=num_total_eduroam+1
					print(str(b)+","+str(b2))
    			else:
				print(str(b)+",0")
				qual=fila2['qual']
				if(qual<58):
					menorde58=menorde58+1				
				num_total_eduroam=num_total_eduroam+1 
    if(aux == '2'):
	num_de_2=num_de_2+1

	a_aux=a[0:16]+'0'
        sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_2_0=num_de_2_0+1
			num_total_eduroam=num_total_eduroam+1
			print(str(b)+","+str(b2))
	else:
		a_aux=a[0:16]+'1'
		sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_2_1=num_de_2_1+1
				num_total_eduroam=num_total_eduroam+1
				print(str(b)+","+str(b2))
		else:
			a_aux=a[0:16]+'3'
			sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
			db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
		    	cur = db.cursor(pymysql.cursors.DictCursor)
		    	num2=cur.execute(sql2)
		    	filas2 = cur.fetchall()
		    	db.close()
			if(num2 > 0):
		    		for fila2 in filas2:
		    			b2=fila2['qual']
					num_de_2_3=num_de_2_3+1
					num_total_eduroam=num_total_eduroam+1
					print(str(b)+","+str(b2))
    			else:
				print(str(b)+",0")
				qual=fila2['qual']
				if(qual<58):
					menorde58=menorde58+1				
				num_total_eduroam=num_total_eduroam+1
    if(aux == 'D'):
	num_de_D=num_de_D+1

	a_aux=a[0:16]+'E'
        sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_D_E=num_de_D_E+1
			num_total_eduroam=num_total_eduroam+1
			print(str(b)+","+str(b2))
	else:
		a_aux=a[0:16]+'F'
		sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_D_F=num_de_D_F+1
				num_total_eduroam=num_total_eduroam+1
				print(str(b)+","+str(b2))
		
    		else:
			print(str(b)+",0")
			qual=fila2['qual']
			if(qual<58):
				menorde58=menorde58+1				
			num_total_eduroam=num_total_eduroam+1

    if(aux == 'E'):
	num_de_E=num_de_E+1
	a_aux=a[0:16]+'D'       
	sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_E_D=num_de_E_D+1
			num_total_eduroam=num_total_eduroam+1
			print(str(b)+","+str(b2))
	else:
		a_aux=a[0:16]+'F'
		sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"		
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_E_F=num_de_E_F+1
				num_total_eduroam=num_total_eduroam+1
				print(str(b)+","+str(b2))
		else:
			print(str(b)+",0") 
			qual=fila2['qual']
			if(qual<58):
				menorde58=menorde58+1				
			num_total_eduroam=num_total_eduroam+1
    if(aux == 'F'):
	num_de_F=num_de_F+1

	a_aux=a[0:16]+'D'
        sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_F_D=num_de_F_D+1
			num_total_eduroam=num_total_eduroam+1
			print(str(b)+","+str(b2))
	else:
		a_aux=a[0:16]+'E'
		sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"		
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_F_E=num_de_F_E+1
				num_total_eduroam=num_total_eduroam+1
				print(str(b)+","+str(b2))
		
    		else:
			print(str(b)+",0")
			qual=fila2['qual']
			if(qual<58):
				menorde58=menorde58+1				
			num_total_eduroam=num_total_eduroam+1

db = pymysql.connect(host='localhost',
                             user='root',
                             password='jorge',
                             db='tfg',
                             charset='utf8mb4')

cur = db.cursor(pymysql.cursors.DictCursor)

sql = "select * from EscaneoTotal where essid='Wifi-UC3M';"
num=cur.execute(sql)
filas = cur.fetchall()
db.close()
num_de_1_0=0
num_de_1_2=0
num_de_1_3=0
num_de_1=0
num_de_0_1=0
num_de_0_2=0
num_de_0_3=0
num_de_0=0
num_de_2_0=0
num_de_2_1=0
num_de_2_3=0
num_de_2=0

num_de_D_E=0
num_de_D_F=0
num_de_D=0
num_de_E_D=0
num_de_E_F=0
num_de_E=0
num_de_F_D=0
num_de_F_E=0
num_de_F=0
num_total_wifiuc3m=0

for fila in filas:
    a=fila['mac']
    b=fila['qual']
    c=fila['lugar']
    d=fila['idlugarfecha']
	
    
    aux=a[16]
    
    if(aux == '1'):
	num_de_1=num_de_1+1
	
	a_aux=a[0:16]+'0'
        sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_1_0=num_de_1_0+1
			num_total_wifiuc3m=num_total_wifiuc3m+1

	else:
		a_aux=a[0:16]+'2'
		sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_1_2=num_de_1_2+1
				num_total_wifiuc3m=num_total_wifiuc3m+1

		else:
			a_aux=a[0:16]+'3'
			sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
			db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
		    	cur = db.cursor(pymysql.cursors.DictCursor)
		    	num2=cur.execute(sql2)
		    	filas2 = cur.fetchall()
		    	db.close()
			if(num2 > 0):
		    		for fila2 in filas2:
		    			b2=fila2['qual']
					num_de_1_3=num_de_1_3+1
					num_total_wifiuc3m=num_total_wifiuc3m+1

    			else:
				#print("mac: "+str(a)+",lugar: "+str(c)+",idlugarfecha: "+str(d))				
				print("0,"+str(b))
				qual=fila2['qual']
				if(qual<58):
					menorwifi=menorwifi+1				
				num_total_wifiuc3m=num_total_wifiuc3m+1

    if(aux == '0'):
	num_de_0=num_de_0+1

	a_aux=a[0:16]+'1'
        sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_0_1=num_de_0_1+1
			num_total_wifiuc3m=num_total_wifiuc3m+1

	else:
		a_aux=a[0:16]+'2'
		sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_0_2=num_de_0_2+1
				num_total_wifiuc3m=num_total_wifiuc3m+1

		else:
			a_aux=a[0:16]+'3'
			sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
			db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
		    	cur = db.cursor(pymysql.cursors.DictCursor)
		    	num2=cur.execute(sql2)
		    	filas2 = cur.fetchall()
		    	db.close()
			if(num2 > 0):
		    		for fila2 in filas2:
		    			b2=fila2['qual']
					num_de_0_3=num_de_0_3+1
					num_total_wifiuc3m=num_total_wifiuc3m+1

    			else:
				print("0,"+str(b))
				qual=fila2['qual']
				if(qual<58):
					menorwifi=menorwifi+1	
				num_total_wifiuc3m=num_total_wifiuc3m+1
    if(aux == '2'):
	num_de_2=num_de_2+1

	a_aux=a[0:16]+'0'
        sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_2_0=num_de_2_0+1
			num_total_wifiuc3m=num_total_wifiuc3m+1

	else:
		a_aux=a[0:16]+'1'
		sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_2_1=num_de_2_1+1
				num_total_wifiuc3m=num_total_wifiuc3m+1

		else:
			a_aux=a[0:16]+'3'
			sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
			db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
		    	cur = db.cursor(pymysql.cursors.DictCursor)
		    	num2=cur.execute(sql2)
		    	filas2 = cur.fetchall()
		    	db.close()
			if(num2 > 0):
		    		for fila2 in filas2:
		    			b2=fila2['qual']
					num_de_2_3=num_de_2_3+1
					num_total_wifiuc3m=num_total_wifiuc3m+1

    			else:
				print("0,"+str(b))
				qual=fila2['qual']
				if(qual<58):
					menorwifi=menorwifi+1	
				num_total_wifiuc3m=num_total_wifiuc3m+1
    if(aux == 'D'):
	num_de_D=num_de_D+1

	a_aux=a[0:16]+'E'
        sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_D_E=num_de_D_E+1
			num_total_wifiuc3m=num_total_wifiuc3m+1

	else:
		a_aux=a[0:16]+'F'
		sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_D_F=num_de_D_F+1
				num_total_wifiuc3m=num_total_wifiuc3m+1

		
    		else:
			print("0,"+str(b))
			qual=fila2['qual']
			if(qual<58):
				menorwifi=menorwifi+1	
			num_total_wifiuc3m=num_total_wifiuc3m+1

    if(aux == 'E'):
	num_de_E=num_de_E+1
	a_aux=a[0:16]+'D'       
	sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_E_D=num_de_E_D+1
			num_total_wifiuc3m=num_total_wifiuc3m+1

	else:
		a_aux=a[0:16]+'F'
		sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"		
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_E_F=num_de_E_F+1
				num_total_wifiuc3m=num_total_wifiuc3m+1

		else:
			print("0,"+str(b))
			qual=fila2['qual']
			if(qual<58):
				menorwifi=menorwifi+1	
			num_total_wifiuc3m=num_total_wifiuc3m+1

    if(aux == 'F'):
	num_de_F=num_de_F+1

	a_aux=a[0:16]+'D'
        sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
	db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    	cur = db.cursor(pymysql.cursors.DictCursor)
    	num2=cur.execute(sql2)
    	filas2 = cur.fetchall()
    	db.close()
	if(num2 > 0):
    		for fila2 in filas2:
    			b2=fila2['qual']
			num_de_F_D=num_de_F_D+1
			num_total_wifiuc3m=num_total_wifiuc3m+1

	else:
		a_aux=a[0:16]+'E'
		sql2 = "select * from EscaneoTotal where essid='eduroam' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"		
		db = pymysql.connect(host='localhost',user='root',password='jorge',db='tfg',charset='utf8mb4')
    		cur = db.cursor(pymysql.cursors.DictCursor)
	    	num2=cur.execute(sql2)
	    	filas2 = cur.fetchall()
	    	db.close()
		if(num2 > 0):
	    		for fila2 in filas2:
	    			b2=fila2['qual']
				num_de_F_E=num_de_F_E+1
				num_total_wifiuc3m=num_total_wifiuc3m+1

		
    		else:
			print("0,"+str(b))
			qual=fila2['qual']
			if(qual<58):
				menorwifi=menorwifi+1	
			num_total_wifiuc3m=num_total_wifiuc3m+1

#print("numero total eduroams acabadas en 1 a 0: "+str(num_de_1_0))
#print("numero total eduroams acabadas en 1 a 2: "+str(num_de_1_2))
#print("numero total eduroams acabadas en 1 a 3: "+str(num_de_1_3))
#print("numero total de eduroams acabadas en 1: "+str(num_de_1))
#print("numero total eduroams acabadas en 0 a 1: "+str(num_de_0_1))
#print("numero total eduroams acabadas en 0 a 2: "+str(num_de_0_2))
#print("numero total eduroams acabadas en 0 a 3: "+str(num_de_0_3))
#print("numero total de eduroams acabadas en 0: "+str(num_de_0))
#print("numero total eduroams acabadas en 2 a 0: "+str(num_de_2_0))
#print("numero total eduroams acabadas en 2 a 1: "+str(num_de_2_1))
#print("numero total eduroams acabadas en 2 a 3: "+str(num_de_2_3))
#print("numero total de eduroams acabadas en 2: "+str(num_de_2))

#print("numero total eduroams acabadas en D a E: "+str(num_de_D_E))
#print("numero total eduroams acabadas en D a F: "+str(num_de_D_F))
#print("numero total de eduroams acabadas en D: "+str(num_de_D))
#print("numero total eduroams acabadas en E a D: "+str(num_de_E_D))
#print("numero total eduroams acabadas en E a F: "+str(num_de_E_F))
#print("numero total de eduroams acabadas en E: "+str(num_de_E))
#print("numero total eduroams acabadas en F a D: "+str(num_de_F_D))
#print("numero total eduroams acabadas en F a E: "+str(num_de_F_E))
#print("numero total de eduroams acabadas en F: "+str(num_de_F))
print("El numero total de eduroams es: "+str(num_total_eduroam))
print("El numero total de eduroams con calidad menor de 58 es: "+str(menorde58))
print("El numero total de wifiuc3m es: "+str(num_total_wifiuc3m))
print("El numero total de wifiuc3m con calidad menor de 58 es: "+str(menorwifi))
print("El numero total es: "+str(num_total_eduroam+num_total_wifiuc3m))

#    sql2 = "select * from EscaneoTotal where essid='Wifi-UC3M' and mac='"+a_aux+"' and lugar='"+str(c)+"' and idlugarfecha ='"+str(d)+"';"
#    db = pymysql.connect(host='localhost',
#                             user='root',
#                             password='jorge',
#                             db='tfg',
#                             charset='utf8mb4')
#
#    cur = db.cursor(pymysql.cursors.DictCursor)
#    cur.execute(sql2)
#    filas2 = cur.fetchall()
#    db.close()	
#    for fila2 in filas2:
#        a2=fila2['mac']
#    	b2=fila2['qual']
#    	c2=fila2['lugar']
#    	d2=fila2['idlugarfecha']
#
#    print("MAC de eduroam: "+a)
#    print("Mac de WifiUC3M: "+a_aux)
#    print("---------------")
