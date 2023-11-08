<%@page import="ch.qos.logback.core.recovery.ResilientSyslogOutputStream"%>
<%@page import="ar.org.centro8.curso.java.enums.Turno"%>
<%@page import="ar.org.centro8.curso.java.enums.Dia"%>
<%@page import="ar.org.centro8.curso.java.entities.Curso"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.CursoRepository"%>
<%@page import="ar.org.centro8.curso.java.repositories.interfaces.I_CursoRepository"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.PreparedStatement"%>
<%
String titulo = request.getParameter("titulo");
String profesor = request.getParameter("profesor");
String dia = request.getParameter("dia");
String turno = request.getParameter("turno");
if (titulo != null && profesor != null) {
	I_CursoRepository cr=new CursoRepository();
	Curso curso=new Curso(titulo, profesor, Dia.valueOf(dia), Turno.valueOf(turno));
	cr.save(curso);
	if(curso.getId()>0) out.print("Se guardo el curso id: " + curso.getId());
	else 				out.print("No se pudo guardar el curso!");
}
%>