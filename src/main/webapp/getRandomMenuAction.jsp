<%-- <%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
//String menuName=request.getParameter("menuName");
int check=0;

try
{
	Connection con=ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs= st.executeQuery("select menuName from db1.menus ORDER BY RAND() LIMIT 1"); 
	
	/* System.out.println(rs + "hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii" );
	while(rs.next())
	{
		check=1;
		//session.setAttribute("rs", rs);
		System.out.println(rs);
		response.sendRedirect("getRandomMenu.jsp?msg=valid");
	} */
	response.sendRedirect("getRandomMenu.jsp?msg=valid");
}
catch(Exception e)
{
System.out.println(e);
response.sendRedirect("getRandomMenu.jsp?msg=invalid");
}

%>
 --%>