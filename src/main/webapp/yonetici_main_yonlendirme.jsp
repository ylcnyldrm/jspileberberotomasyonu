<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="css/login.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
 
  <title>Yönetici Main</title>
 <meta contentType="text/html; charset="UTF-8"/>

<meta charset="ISO-8859-1">
 
</head>
<body>

<div class="main">
    <p class="sign" align="center">İşlem Türünü Seçin</p>
    <form class="form1"  action="yonetici_kayit_ekleme.jsp" method="post">
      <input type="submit"  class="submit"   align="center" value="Ekleme">     
      </form> 
      <form class="form1"  action="yonetici_kayit_silme.jsp" method="post"> 
       <input type="submit"  class="submit"   align="center" value="Detaylı Arama ve Filtreleme">     
      </form> 
      <form class="form1"  action="yonetici_kayit_guncelleme.jsp" method="post">
        <input type="submit"  class="submit"   align="center" value="Güncelleme">    
      </form>
      <form class="form1"  action="yonetici_kayit_listeleme.jsp" method="post">
        <input type="submit"  class="submit"   align="center" value="Listeleme">    
      </form>  
    </div> 
    
    
</body>
</html>