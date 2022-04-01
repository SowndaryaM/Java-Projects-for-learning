<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

</head>
<body>
<br><br>
<h2>SignUp page</h2>
<br>
<div>
<form method="post" action="signupAction.jsp">

<input type="text" name="name" placeholder="Enter Name" required>
<input type="email" name="email" placeholder="Enter Email" required>
<input type="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
<input type="password" name="password" placeholder="Enter Password" required>
<input type="submit" value="Signup">
</form>
<h4><a href="login.jsp">Login</a></h4>
</div>
<div>
<%
String msg = request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1 style="color:green;">Successfully Registered</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1 style="color:red;">Something went wrong! try again</h1>
<%} %>
</div>
</body>
</html>