<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st = con.createStatement();
	//String q1 = "create table users(name varchar(100),email varchar(100)primary key,mobilenumber bigint, password varchar(100), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
	//System.out.println(q1);
	//st.execute(q1);
	String q2 = "create table menus(menuName varchar(200)primary key)";
	System.out.println(q2);
	st.execute(q2);
	System.out.println("Table created");
	con.close();
	}
catch(Exception e)
{
	System.out.println(e);
}

%>