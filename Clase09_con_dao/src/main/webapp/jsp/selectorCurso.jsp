<%@page import="ar.org.centro8.curso.java.entities.Curso"%>
<%@page import="java.util.List"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.CursoRepository"%>
<%@page import="ar.org.centro8.curso.java.repositories.interfaces.I_CursoRepository"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.ResultSet"%>

<%

I_CursoRepository sr=new CursoRepository();
List<Curso> listar=sr.getAll();
for(Curso curso: listar){
	
	out.print("<option value='"+curso.getId()+"'>"+
	                                              curso.getId()+" - "
			                                      +curso.getTitulo()+" - "
	                                              +curso.getProfesor()+" - "
			                                      +curso.getDia()+" - "+
	                                              curso.getTurno()+
	                                              "</option>");
	
}
%>