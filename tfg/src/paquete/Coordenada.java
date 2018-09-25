package paquete;

import java.util.Date;

public class Coordenada{

	private float longitud;
	private float latitud;


	public float getLatitud(){

		return latitud;
	}

	public void setLatitud(float lat){

		latitud=lat;
	}

	public float getLongitud(){

		return longitud;
	}

	public void setLongitud(float lon){

		longitud = lon;
	}

	

	@Override
	public String toString() {
		return "Coordenada [latitud=" + latitud + ", longitud=" + longitud +"]";
	}
}
