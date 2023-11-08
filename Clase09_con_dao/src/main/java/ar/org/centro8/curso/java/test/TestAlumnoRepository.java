package ar.org.centro8.curso.java.test;

import ar.org.centro8.curso.java.entities.Alumno;
import ar.org.centro8.curso.java.repositories.interfaces.I_AlumnoRepository;
import ar.org.centro8.curso.java.repositories.jdbc.AlumnoRepository;

public class TestAlumnoRepository {
	public static void main (String []args) {
		I_AlumnoRepository ar = new AlumnoRepository();
		
		System.out.println("---save---");	
		Alumno alumno = new Alumno ("juan","perez",21,2);
		ar.save(alumno);
		System.out.println(alumno);
		
		System.out.println("-- remove() --");
		ar.remove(ar.getById(3));
		
		System.out.println("-- getAll() --");
		ar.getAll().forEach(System.out::println);
		
		System.out.println("-- getLikeApellido() --");
		ar.getLikeApellido("per").forEach(System.out::println);
	
		
		
		
	}
}