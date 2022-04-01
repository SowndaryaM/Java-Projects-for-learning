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
  top: 60%;
  font-weight: bold;
  font-size: 35px;
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
  top: 52%;
  left: 13%;
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
</style>
</head>
<body>
<div class="container">
  <img src="images/pepper_vegetables_underwater-wallpaper-2880x1620.jpg" style="width:100%;">
  
  <div class="centered1"><img src="images/logo1.png"></div>
   
  <div class="top-left">Click this button to find your random breakfast menu</div>
  <a href="getRandomMenu.jsp">
  <button class="btn" >Find Today's Breakfast</button> </a>
  
  <div class="bottom-left">Click this to add a new menu </div>
  <a href="addNewMenu.jsp">
  <button class="btn2">Add New Menu</button></a>
   
</div>


</body>
</html>