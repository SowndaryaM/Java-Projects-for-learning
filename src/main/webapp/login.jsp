<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<br><br>
<h2>Login page</h2>
<br>
<div>
<form method="post" action="loginAction.jsp">
<input type="email" name="email" placeholder="Enter Email" required><br><br>
<input type="password" name="password" placeholder="Enter password" required><br><br>
<input type="submit" value="Login">
</form>
<h4><a href="signup.jsp">SignUp</a></h4>
</div>
<%
String msg=request.getParameter("msg");
if("notRegisteredAnyUser".equals(msg))
{
%>
<h3 style="color:red;">Incorrect Username or Password</h3>
<%
}
%>
<%
if("invaliduser".equals(msg))
{
%>
<h3 style="color:red;">Something went wrong! Try again!</h3>
<%} %>

</body>
</html>