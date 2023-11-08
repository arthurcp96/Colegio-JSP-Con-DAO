package ar.org.centro8.curso.java.repositories.interfaces;

import java.util.ArrayList;
import java.util.List;

import ar.org.centro8.curso.java.entities.Alumno;

public interface I_AlumnoRepository {
	void save(Alumno alumnos);
	void remove(Alumno alumnos);
	void update(Alumno alumnos);
	List<Alumno> getAll();
	default Alumno getById(int id) {
		return getAll()
						.stream()
						.filter(alumno->alumno.getId()==id)
						.findFirst()
						.orElse(new Alumno());
	}
	default List<Alumno> getLikeApellido(String apellido){
		if(apellido==null) return new ArrayList<Alumno>();
		return getAll()
						.stream()
						.filter(alumno->alumno
											.getApellido()
											.toLowerCase()
											.contains(apellido.toLowerCase()))
						.toList();
	}
}