 <%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
    <
<!DOCTYPE html>
<html>
<head>

 <link rel="stylesheet" href="css/login.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Sign in</title>
 <meta contentType="text/html; charset="UTF-8"/>

</head>
<body>
 
  <div class="main">
    <p class="sign" align="center">Sign in</p>
    <form class="form1"  action="yonetici_giris_response.jsp" method="post">
      <input class="un " type="text" align="center"  name="username" placeholder="Username">
      <input class="pass" type="password" align="center"  name="password" placeholder="Password">
      <input type="submit"  class="submit"   align="center" value="Login">   
      <p class="forgot" align="center"><a href="#">Forgot Password?</p> 
      </form> 
    </div>
    
</body>
</html>