 <%@ page language="java" contentType="text/html; charset=UTF-8" %>
  
<!DOCTYPE html>
<html>
<head>  
  <link rel="stylesheet" href="css/login.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Sign in</title>
<meta charset="ISO-8859-1"> 
</head>
<body>
 
 
<div class="main">
    <p class="sign" align="center">Lütfen Giriş Türünü Seçin</p>
    <form class="form1"  action="kullanici_giris.jsp" method="post">
      <input type="submit"  class="submit"   align="center" value="Kullanıcı Girişi">     
      </form> 
      <form class="form1"  action="berber_giris.jsp" method="post"> 
       <input type="submit"  class="submit"   align="center" value="Berber Girisi">     
      </form> 
      <form class="form1"  action="yonetici_giris.jsp" method="post">
        <input type="submit"  class="submit"   align="center" value="Yonetici Girisi">    
      </form> 
    </div> 
    
    
</body>
</html>