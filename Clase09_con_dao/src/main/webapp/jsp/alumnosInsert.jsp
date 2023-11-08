<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@page import="ar.org.centro8.curso.java.entities.Alumno"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.AlumnoRepository"%>
<%@page import="ar.org.centro8.curso.java.repositories.interfaces.I_AlumnoRepository"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.PreparedStatement"%>
<% 
String nombre = request.getParameter("nombre");
String apellido = request.getParameter("apellido");
String edad = request.getParameter("edad");
String idCurso = request.getParameter("idCurso");


if (nombre != null && apellido!= null && edad != null && idCurso!=null) {
	I_AlumnoRepository ar=new AlumnoRepository();
	Alumno alumno=new Alumno(nombre, apellido, Integer.valueOf(edad), Integer.valueOf(idCurso));
	ar.save(alumno);
	if(alumno.getId()>0) out.print("Se guardo el alumno id: " + alumno.getId());
	else 				 out.print("No se pudo guardar el alumno!");
}
%>

