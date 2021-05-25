 <%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
    <p class="sign" align="center">Berber Girişi</p>
    <form class="form1"  action="berber_giris_response.jsp" method="post">
      <input class="un " type="text" align="center"  name="mail" placeholder="Email">
      <input class="pass" type="password" align="center"  name="sifre" placeholder="Şifre">
      <input type="submit"  class="submit"   align="center" value="Giriş Yap">   
      <p class="forgot" align="center"><a href="#">Şifremi Unuttum?</p> 
      </form> 
    </div> 


</body>
</html>