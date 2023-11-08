package ar.org.centro8.curso.java.repositories.interfaces;

import java.util.ArrayList;
import java.util.List;

import ar.org.centro8.curso.java.entities.Curso;

public interface I_CursoRepository {
	void save(Curso curso);
	void remove(Curso curso);
	void update(Curso curso);
	List<Curso> getAll();
	default Curso getById(int id) {
		return getAll()
						.stream()
						.filter(curso->curso.getId()==id)
						.findFirst()
						.orElse(new Curso());
	}
	default List<Curso> getLikeTitulo(String titulo){
		if(titulo==null) return new ArrayList<Curso>();
		return getAll()
						.stream()
						.filter(curso->curso
											.getTitulo()
											.toLowerCase()
											.contains(titulo.toLowerCase()))
						.toList();
	}
}
