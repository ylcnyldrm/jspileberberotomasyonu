<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="classes.Veritabanibaglantisi"%>
 <%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
 
  <link rel="stylesheet" href="css/login.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Kullanıcı İşlemleri</title>
 <meta contentType="text/html; charset="UTF-8"/>
  
</head>
<body>
 
<div class="main">
    <p class="sign" align="center">Kullanıcı İşlemleri</p>
    <form class="form1"  action="kullanici_randevu_al.jsp" method="post">
      <input type="submit"  class="submit"   align="center" value="Randevu Al">     
      </form> 
      <form class="form1"  action="kullanici_randevu_goruntule.jsp" method="post"> 
       <input type="submit"  class="submit"   align="center" value="Randevularımı Listele">     
      </form> 
      <form class="form1"  action="kullanici_parola_guncelle.jsp" method="post">
        <input type="submit"  class="submit"   align="center" value="Parola Güncelle">    
      </form> 
    </div>  
</body>
</html>