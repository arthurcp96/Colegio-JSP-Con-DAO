package ar.org.centro8.curso.java.test;


import java.sql.ResultSet;

import ar.org.centro8.curso.java.connectors.Connector;

public class TestConnector {

	public static void main(String[] args) {
		try(ResultSet rs=Connector
									.getConnection()
									.createStatement()
									.executeQuery("select version()")){
			if(rs.next()) 		System.out.println("Se conecto a "+rs.getString(1));
			else				System.out.println("No se pudo conectar a la BD!");
		} catch (Exception e) {
			System.out.println("No se pudo conectar a la BD!");
			System.out.println(e);
		}
	}

}
