<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.container {
  position: relative;
  text-align: center;
  color: white;
}

.bottom-left {
   position: absolute;
  top: 73%;
  font-weight: bold;
  font-size: 20px;
/*   right: 80%; */
  text-align: left;
  font-family: cursive;
  
}

.top-left {
  position: absolute;
  top: 40%;
  font-weight: bold;
  font-size: 35px;
/*   right: 80%; */
  text-align: left;
  font-family: cursive;
}

.top-right {
  position: absolute;
  top: 8px;
  right: 16px;
}

.bottom-right {
  position: absolute;
  bottom: 8px;
  right: 16px;
}

.centered1 {
  position: absolute;
  top: 17%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.centered2 {
  position: absolute;
  top: 27%;
  left: 52%;
  transform: translate(-50%, -50%);
  font-family: cursive;
  font-weight: bold;
  font-size: 50px;
  color:Red;
}

.container .btn {
  position: absolute;
  top: 59%;
  left: 47px;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: red;
  color: white;
  font-size: 20px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  font-family: cursive;
  font-weight: bold;
}

.container .btn:hover {
  background-color: white;
  color: black;
  font-family: cursive;
  font-weight: bold;
}
.container .btn2 {
  position: absolute;
  top: 71%;
  left: 10%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color: red;
  color: white;
  font-size: 20px;
  padding: 12px 24px;
  border: none;
  cursor: pointer;
  border-radius: 5px;
  text-align: center;
  font-family: cursive;
  font-weight: bold;
}

.container .btn2:hover {
  background-color: white;
  color: black;
  font-family: cursive;
  font-weight: bold;
}

input[type=text] {
  width: 29%;
  padding: 10px 10px;
  margin: 8px 0;
  box-sizing: border-box;
  border: 3px solid #ccc;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
  margin-left: 4px;
}

input[type=text]:focus {
  border: 3px solid #555;
}
</style>
</head>
<body>
<div class="container">
  <img src="images/pepper_vegetables_underwater-wallpaper-2880x1620.jpg" style="width:100%;">
  
<div class="centered1"><a href="HomePage.jsp"><img src="images/logo1.png"></a></div>
  
<div class="top-left"> Enter the new menu name to be added in the list: 

<form method="post" action="addNewMenuAction.jsp">
<input type="text" name="menuName" placeholder="Enter the menu" required></div><br><br>
<button class="btn" > Add </button>
<!-- <input type="submit" value="Add"> -->
</form>
</div>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<div class="bottom-left" style="color:green;"><h4>Successfully Menu Got Added....</h4></div>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<div class="bottom-left" style="color:red;"><h4>Something went wrong! try again</h4></div>
<%} %>
</body>
</html>