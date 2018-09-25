package paquete;

import java.util.Date;

public class CoordenadaConPeso{

	private float longitud;
	private float latitud;
	private int peso;


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

	public int getPeso(){

		return peso;
	}

	public void setPeso(int p){

		peso = p;
	}

	@Override
	public String toString() {
		return "Coordenada [latitud=" + latitud + ", longitud=" + longitud +"]";
	}
}
