package ar.org.centro8.curso.java.test;

import ar.org.centro8.curso.java.entities.Curso;
import ar.org.centro8.curso.java.enums.Dia;
import ar.org.centro8.curso.java.enums.Turno;
import ar.org.centro8.curso.java.repositories.interfaces.I_CursoRepository;
import ar.org.centro8.curso.java.repositories.jdbc.CursoRepository;

public class TestCursoRepository {
	public static void main(String[] args) {
		
		I_CursoRepository cr=new CursoRepository();
		
		System.out.println("-- save() --");
		Curso curso=new Curso("Alfareria","Gerez",Dia.MARTES,Turno.NOCHE);
		cr.save(curso);
		System.out.println(curso);		
		
		System.out.println("-- remove() --");
		cr.remove(cr.getById(3));
		
		System.out.println("-- getAll() --");
		cr.getAll().forEach(System.out::println);
		
		System.out.println("-- getLikeTitulo() --");
		cr.getLikeTitulo("plom").forEach(System.out::println);
	}
}
