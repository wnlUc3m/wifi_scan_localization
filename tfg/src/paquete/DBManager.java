package paquete;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.Date;
import java.sql.Timestamp;
// import java.util.Date;


/* data source*/
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;


public class DBManager implements AutoCloseable {

	private Connection connection;

	public DBManager() throws SQLException, NamingException {
		connect();
	}

	private void connect() throws SQLException, NamingException {

		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("jdbc/TFG");
		connection = ds.getConnection();
	}

	/**
	* Close the connection to the database if it is still open.
	*
	*/
	public void close() throws SQLException {
		if (connection != null) {
			connection.close();
		}
		connection = null;
	}


	public List<Coordenada> localizarPuntosAccesoPorPlanta(int planta) throws SQLException {

		String query = "SELECT * FROM Lugares WHERE planta=?";
		PreparedStatement st = connection.prepareStatement(query);
		st.setInt(1,planta);
		ResultSet rs = st.executeQuery();
		int num=0;

		List<Coordenada> coordenadas = new ArrayList<Coordenada>();

		while(rs.next()){
			Coordenada aux = new Coordenada();
			aux.setLatitud(rs.getFloat("latitud"));
			aux.setLongitud(rs.getFloat("longitud"));
			coordenadas.add(aux);
			num=num+1;
		}
		System.out.println("Numero de coordenadas "+num);
		return coordenadas;
	}
	public List<Coordenada> puntosEscaneadosPorPlanta(int planta) throws SQLException {

		String query = "SELECT * FROM Lugares WHERE planta=?";
		PreparedStatement st = connection.prepareStatement(query);
		st.setInt(1,planta);
		ResultSet rs = st.executeQuery();
		int num=0;
		float lat=0;
		float lon=0;
		int lug=0;

		List<Coordenada> coordenadas = new ArrayList<Coordenada>();

		while(rs.next()){
			/*Coordenada aux = new Coordenada();
			aux.setLatitud(rs.getFloat("latitud"));
			aux.setLongitud(rs.getFloat("longitud"));
			coordenadas.add(aux);
			num=num+1;*/

			lat=rs.getFloat("latitud");
			lon=rs.getFloat("longitud");
			lug=rs.getInt("lugar");
			System.out.println("Lugar a escanear "+lug);
			String query2 ="SELECT * FROM EscaneoTotal WHERE lugar=?";
			PreparedStatement st2 = connection.prepareStatement(query2);
			st2.setInt(1,lug);
			ResultSet rs2 = st2.executeQuery();
			if(rs2.next()){
				Coordenada aux = new Coordenada();
				aux.setLatitud(lat);
				aux.setLongitud(lon);
				coordenadas.add(aux);
				num=num+1;	
			}	
		}
		System.out.println("Numero de coordenadas "+num);
		return coordenadas;
	}

	public List<Coordenada> puntosConMalaCalidad(int planta) throws SQLException {

		String query = "SELECT * FROM Lugares WHERE planta=?";
		PreparedStatement st = connection.prepareStatement(query);
		st.setInt(1,planta);
		ResultSet rs = st.executeQuery();
		int num=0;
		float lat=0;
		float lon=0;
		int lug=0;

		List<Coordenada> coordenadas = new ArrayList<Coordenada>();

		while(rs.next()){
			/*Coordenada aux = new Coordenada();
			aux.setLatitud(rs.getFloat("latitud"));
			aux.setLongitud(rs.getFloat("longitud"));
			coordenadas.add(aux);
			num=num+1;*/

			lat=rs.getFloat("latitud");
			lon=rs.getFloat("longitud");
			lug=rs.getInt("lugar");
			System.out.println("Lugar a escanear "+lug);
			String query2 ="SELECT * FROM EscaneoTotal WHERE lugar=?";
			PreparedStatement st2 = connection.prepareStatement(query2);
			st2.setInt(1,lug);
			ResultSet rs2 = st2.executeQuery();
			if(rs2.next()){
				String query3 ="SELECT * FROM EscaneoTotal WHERE lugar=? AND sig>-70 AND essid='eduroam'";
				PreparedStatement st3 = connection.prepareStatement(query3);
				st3.setInt(1,lug);
				ResultSet rs3 = st3.executeQuery();
				if(!rs3.next()){
					Coordenada aux = new Coordenada();
					aux.setLatitud(lat);
					aux.setLongitud(lon);
					coordenadas.add(aux);
					num=num+1;	
					System.out.println("lugar a añadir: "+lug);
				}		
			}	
				
		}
		System.out.println("Numero de coordenadas "+num);
		return coordenadas;
	}
	public List<Coordenada> localizacionAP(int planta) throws SQLException {

		String query = "SELECT * FROM Lugares WHERE planta=?";
		PreparedStatement st = connection.prepareStatement(query);
		st.setInt(1,planta);
		ResultSet rs = st.executeQuery();
		int num=0;
		float lat=0;
		float lon=0;
		int lug=0;

		List<Coordenada> coordenadas = new ArrayList<Coordenada>();

		while(rs.next()){
			/*Coordenada aux = new Coordenada();
			aux.setLatitud(rs.getFloat("latitud"));
			aux.setLongitud(rs.getFloat("longitud"));
			coordenadas.add(aux);
			num=num+1;*/

			lat=rs.getFloat("latitud");
			lon=rs.getFloat("longitud");
			lug=rs.getInt("lugar");
			System.out.println("Lugar a escanear "+lug);
			String query2 ="SELECT * FROM EscaneoTotal WHERE lugar=?";
			PreparedStatement st2 = connection.prepareStatement(query2);
			st2.setInt(1,lug);
			ResultSet rs2 = st2.executeQuery();
			if(rs2.next()){
				String query3 ="SELECT * FROM EscaneoTotal WHERE lugar=? AND qual=100 AND essid='eduroam'";
				PreparedStatement st3 = connection.prepareStatement(query3);
				st3.setInt(1,lug);
				ResultSet rs3 = st3.executeQuery();
				if(rs3.next()){
					Coordenada aux = new Coordenada();
					aux.setLatitud(lat);
					aux.setLongitud(lon);
					coordenadas.add(aux);
					num=num+1;	
				}		
			}	
				
		}
		System.out.println("Numero de coordenadas "+num);
		return coordenadas;
	}
	
	public List<Coordenada> rangoAP(int planta,String mac) throws SQLException {

		String query = "select * from Lugares as A Inner Join EscaneoTotal as B on A.lugar=B.lugar where planta=? AND mac=?";
		PreparedStatement st = connection.prepareStatement(query);
		st.setInt(1,planta);
		st.setString(2,mac);
		ResultSet rs = st.executeQuery();
		int num=0;
		float lat=0;
		float lon=0;
		List<Coordenada> coordenadas = new ArrayList<Coordenada>();

		while(rs.next()){

			lat=rs.getFloat("latitud");
			lon=rs.getFloat("longitud");
			
			Coordenada aux = new Coordenada();
			aux.setLatitud(lat);
			aux.setLongitud(lon);
			coordenadas.add(aux);
			num=num+1;	
		}		
		System.out.println("Numero de coordenadas "+num);
		return coordenadas;
	}

	public List<Coordenada> rangoEssid(int planta,String essid) throws SQLException {

		String query = "select * from Lugares as A Inner Join EscaneoTotal as B on A.lugar=B.lugar where planta=? AND essid=?";
		PreparedStatement st = connection.prepareStatement(query);
		st.setInt(1,planta);
		st.setString(2,essid);
		ResultSet rs = st.executeQuery();
		int num=0;
		float lat=0;
		float lon=0;
		List<Coordenada> coordenadas = new ArrayList<Coordenada>();

		while(rs.next()){

			lat=rs.getFloat("latitud");
			lon=rs.getFloat("longitud");
			
			Coordenada aux = new Coordenada();
			aux.setLatitud(lat);
			aux.setLongitud(lon);
			coordenadas.add(aux);
			num=num+1;	
		}		
		System.out.println("Numero de coordenadas "+num);
		return coordenadas;
	}

	public List<CoordenadaConPeso> CalidadColores(int planta,String mac) throws SQLException {

		String query = "select * from Lugares as A Inner Join EscaneoTotal as B on A.lugar=B.lugar where planta=? AND mac=?";
		PreparedStatement st = connection.prepareStatement(query);
		st.setInt(1,planta);
		st.setString(2,mac);
		ResultSet rs = st.executeQuery();
		int num=0;
		float lat=0;
		float lon=0;
		int p=0;
		List<CoordenadaConPeso> coordenadas = new ArrayList<CoordenadaConPeso>();

		while(rs.next()){

			lat=rs.getFloat("latitud");
			lon=rs.getFloat("longitud");
			p=rs.getInt("qual");
			
			CoordenadaConPeso aux = new CoordenadaConPeso();
			aux.setLatitud(lat);
			aux.setLongitud(lon);
			aux.setPeso(p);
			coordenadas.add(aux);
			num=num+1;	
		}		
		System.out.println("Numero de coordenadas "+num);
		return coordenadas;
	}	

	public List<CoordenadaConPeso> mapaCanales(int planta) throws SQLException {

		String query = "SELECT * FROM Lugares WHERE planta=?";
		PreparedStatement st = connection.prepareStatement(query);
		st.setInt(1,planta);
		ResultSet rs = st.executeQuery();
		int num=0;
		float lat=0;
		float lon=0;
		int lug=0;
		int peso=0;
		
		List<CoordenadaConPeso> coordenadas = new ArrayList<CoordenadaConPeso>();

		while(rs.next()){

			lat=rs.getFloat("latitud");
			lon=rs.getFloat("longitud");
			lug=rs.getInt("lugar");
			System.out.println("Lugar a escanear "+lug);
			String query2 ="SELECT * FROM EscaneoTotal WHERE lugar=?";
			PreparedStatement st2 = connection.prepareStatement(query2);
			st2.setInt(1,lug);
			ResultSet rs2 = st2.executeQuery();

			if(rs2.next()){
				System.out.println("Tenemos datos");
				String query3 ="SELECT * from Lugares as A Inner Join EscaneoTotal as B on A.lugar=B.lugar where essid='eduroam' and A.lugar=? order by qual desc limit 1;";
				PreparedStatement st3 = connection.prepareStatement(query3);
				st3.setInt(1,lug);
				ResultSet rs3 = st3.executeQuery();
				if(rs3.next()){
					System.out.println("Guardando coordenada con peso");
					CoordenadaConPeso aux = new CoordenadaConPeso();
					aux.setLatitud(lat);
					aux.setLongitud(lon);
					peso=rs3.getInt("chan");
					aux.setPeso(peso);
					System.out.println("Latitud: "+aux.getLatitud()+",Longitud: "+aux.getLongitud()+",Canal: "+aux.getPeso());
					coordenadas.add(aux);
					num=num+1;	
				}		
			}	
		}		
		System.out.println("Numero de coordenadas "+num);
		return coordenadas;



	}

	public List<String> obtenerMacPorPlanta(int planta) throws SQLException {
		
		
		String query = "select distinct mac from Lugares as A Inner Join EscaneoTotal as B on A.lugar=B.lugar where planta=? AND ESSID='eduroam'";
		PreparedStatement st = connection.prepareStatement(query);
		st.setInt(1,planta);
		ResultSet rs = st.executeQuery();
		int num=0;

		List<String> macs = new ArrayList<String>();

		while(rs.next()){
			
			String aux = new String();
			aux=rs.getString("mac");
			macs.add(aux);
			num=num+1;	
		}
		System.out.println("Numero de macs "+num);
		return macs;
	}
	
	public EstadisticaGeneral obtenerEstadisticaEscaneos() throws SQLException {

		String query = "select * from LugarFechaTotal";
		PreparedStatement st = connection.prepareStatement(query);
		ResultSet rs = st.executeQuery();
		EstadisticaGeneral aux = new EstadisticaGeneral();
		int num=0;
		while(rs.next()){

			num=num+1;	
		}
		System.out.println("Total: "+num);
		aux.setTotal(num);
		System.out.println("Total: "+aux.getTotal());
		String query10 = "select * from LugarFechaTotal as A Inner Join Lugares as B on A.lugar=B.lugar where planta=?";
		PreparedStatement st10 = connection.prepareStatement(query10);
		st10.setInt(1,-1);
		ResultSet rs10 = st10.executeQuery();
		int num10=0;
		while(rs10.next()){

			num10=num10+1;	
		}
		aux.setSotano(num10);
		
		String query0 = "select * from LugarFechaTotal as A Inner Join Lugares as B on A.lugar=B.lugar where planta=?";
		PreparedStatement st0 = connection.prepareStatement(query0);
		st0.setInt(1,0);
		ResultSet rs0 = st0.executeQuery();
		int num0=0;
		while(rs0.next()){

			num0=num0+1;	
		}
		aux.setPlanta0(num0);

		String query1 = "select * from LugarFechaTotal as A Inner Join Lugares as B on A.lugar=B.lugar where planta=?";
		PreparedStatement st1 = connection.prepareStatement(query1);
		st1.setInt(1,1);
		ResultSet rs1 = st1.executeQuery();
		int num1=0;
		while(rs1.next()){

			num1=num1+1;	
		}
		System.out.println("Total: "+num1);
		aux.setPlanta1(num1);
		System.out.println("Total: "+aux.getPlanta1());
		

		String query2 = "select * from LugarFechaTotal as A Inner Join Lugares as B on A.lugar=B.lugar where planta=?";
		PreparedStatement st2 = connection.prepareStatement(query2);
		st2.setInt(1,2);
		ResultSet rs2 = st2.executeQuery();
		int num2=0;
		while(rs2.next()){

			num2=num2+1;	
		}
		aux.setPlanta2(num2);

		String query3 = "select * from LugarFechaTotal as A Inner Join Lugares as B on A.lugar=B.lugar where planta=?";
		PreparedStatement st3 = connection.prepareStatement(query3);
		st3.setInt(1,3);
		ResultSet rs3 = st3.executeQuery();
		int num3=0;
		while(rs3.next()){

			num3=num3+1;	
		}
		aux.setPlanta3(num3);		
		
		return aux;

	}
}
