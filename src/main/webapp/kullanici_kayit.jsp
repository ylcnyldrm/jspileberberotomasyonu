<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 
   <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html">
  <title>Yönetici Main</title>
  <meta name="author" content="Jake Rocheleau">
  <link rel="shortcut icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="icon" href="http://static.tmimgcdn.com/img/favicon.ico">
  <link rel="stylesheet" type="text/css" media="all" href="css/styles.css">
  <link rel="stylesheet" type="text/css" media="all" href="css/switchery.min.css">
  <script type="text/javascript" src="js/switchery.min.js"></script>
 
</head>
<body>
 
  
		
  <div id="wrapper">
  
  <h1>Kayıt Ol</h1>
  
  <form id="myform" action="kullanici_kayit_response.jsp" >
  
  <div class="col-2">
    <label>
      Kullanıcı Adı
      <input placeholder="Kullanıcı Adınızı Girin" id="name" name="kullaniciAdi" tabindex="1">
    </label>
  </div>
  <div class="col-2">
    <label>
      Şifre
      <input placeholder="Şifrenizi Girin" id="company" name="sifre" tabindex="2">
    </label>
  </div>
  <div class="col-2">
    <label>
      Ad
      <input placeholder="İsminizi Girin" id="name" name="ad" tabindex="1">
    </label>
  </div>
  <div class="col-2">
    <label>
      Soyad
      <input placeholder="Soyadınızı Girin" id="company" name="soyad" tabindex="2">
    </label>
  </div> 
  <div class="col-3">
    <label>
      Tc
      <input placeholder="Tc Kimlik Numaranızı Girin" id="phone" name="tc" tabindex="3">
    </label>
  </div>
  <div class="col-3">
    <label>
      Mail
      <input placeholder="Mailinizi Girin" id="email" name="mail" tabindex="4">
    </label>
  </div>
  <div class="col-3">
    <label>
      Cinsiyet 
        <input type="radio" name="radio" value="Kadın">Kadın
        <input type="radio" name="radio" value="Erkek">Erkek
    </label>
  </div>  
    <% 
    %>
   <div class="col-submit">
    <button class="submitbtn"    >Submit Form</button>
  </div>
   
<script type="text/javascript">
var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

elems.forEach(function(html) {
  var switchery = new Switchery(html);
});
</script>
</form>  
 
</div> 


</body>
</html>