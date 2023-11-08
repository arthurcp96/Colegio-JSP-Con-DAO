
<%@page import="ar.org.centro8.curso.java.entities.Curso"%>
<%@page import="java.util.List"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.CursoRepository"%>
<%@page import="ar.org.centro8.curso.java.repositories.interfaces.I_CursoRepository"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.ResultSet"%>
<%
	String buscar="";
	if(request.getParameter("buscar")!=null) buscar=request.getParameter("buscar");
	I_CursoRepository cr=new CursoRepository();
	List<Curso> lista=cr.getLikeTitulo(buscar);
	for(Curso curso: lista){
		out.print("<tr>");
		out.print("<th scope='row'>"+curso.getId()+"</th>");
		out.print("<td>"+curso.getTitulo()+"</td>");
		out.print("<td>"+curso.getProfesor()+"</td>");
		out.print("<td>"+curso.getDia()+"</td>");
		out.print("<td>"+curso.getTurno()+"</td>");
		out.println("</tr>");
	}

%>