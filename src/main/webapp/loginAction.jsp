<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
if("admin@gmail.com".equals(email) && "admin".equals(password))
{
//since we are using admin user in different pages and at different places we are storing it in session:
	session.setAttribute("email", email);
    response.sendRedirect("admin/adminHome.jsp");
}
else
{
	int z=0;
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st = con.createStatement();
	ResultSet rs= st.executeQuery("select * from users where email='"+email+"'and password='"+password+"'");
	while(rs.next())
	{
		z=1;
		session.setAttribute("email", email);
		//if any emails or users are registred in the table then send the response to home page or else send it to login page
		response.sendRedirect("home.jsp");
	}
	
	if(z==0)
	{
		response.sendRedirect("login.jsp?msg=notRegisteredAnyUser");
	}
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("login.jsp?msg=invaliduser");
}
}
%>