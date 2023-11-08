<%@page import="ar.org.centro8.curso.java.entities.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="ar.org.centro8.curso.java.repositories.jdbc.AlumnoRepository"%>
<%@page import="ar.org.centro8.curso.java.repositories.interfaces.I_AlumnoRepository"%>
<%@page import="ar.org.centro8.curso.java.connectors.Connector"%>
<%@page import="java.sql.ResultSet"%>

<%  String buscar="";
	if(request.getParameter("buscar")!=null) buscar=request.getParameter("buscar");
	I_AlumnoRepository cr=new AlumnoRepository();
	List<Alumno> lista=cr.getLikeApellido(buscar);
	for(Alumno alumno: lista){
		out.print("<tr>");
		out.print("<th scope='row'>"+alumno.getId()+"</th>");
		out.print("<td>"+alumno.getNombre()+"</td>");
		out.print("<td>"+alumno.getApellido()+"</td>");
		out.print("<td>"+alumno.getEdad()+"</td>");
		out.print("<td>"+alumno.getIdCurso()+"</td>");
		out.println("</tr>");
	}

%>