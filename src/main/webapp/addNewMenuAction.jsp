<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String menuName=request.getParameter("menuName");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into menus values(?)");
	ps.setString(1, menuName);
	ps.executeUpdate();
	response.sendRedirect("addNewMenu.jsp?msg=valid");
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addNewMenu.jsp?msg=invalid");
}
%>