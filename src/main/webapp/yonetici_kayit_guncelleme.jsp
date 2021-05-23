<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
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
<meta charset="ISO-8859-1">
 
</head>
<body>

 <% 
	Veritabanibaglantisi vt = new Veritabanibaglantisi();
	int ilceId = 1;
	int ilid = 1;
	int berberid = 1;
	 %> 
  <div class="col-4">
    
                         LÜTFEN İL SEÇİNİZ
	<form name="f1" method="get" action="#"><select name=iller> 
	<%
	ResultSet rsIller = vt.dbdenVeriCek("select * from randevu.iller");
	if (rsIller != null) {
		while (rsIller.next()) {
	%>
		<option><%=rsIller.getString("il_ad")%></option>
	<%
		}
	%>
		</select> <input type="submit" name="submit" value="Şehir Seçin" />
	</form>
	<%
	} else {
	System.out.print("RS BOŞ");
	}
	%>

	<%
	String iller = request.getParameter("iller");
	if (iller != null) {
		System.out.println("SEÇİLEN İL =  " + iller);
		try {
			ResultSet secilenIlId = vt.dbdenVeriCek("select il_id from randevu.iller where il_ad='" + iller + "' ");
			if (secilenIlId != null) {
		while (secilenIlId.next()) {
			ilid = secilenIlId.getInt(1);
			System.out.print("SEÇİLEN İLİN İDSİ" + ilid);
	%>
	 
	İLCELER
	<form name="f1" method="get" action="#"><select name=ilceler>
			<%
			ResultSet rsilceler = vt.dbdenVeriCek("select * from randevu.ilceler where il_id='" + ilid + "'  ");
			if (rsilceler != null) {
				while (rsilceler.next()) {
			%>
			<option><%=rsilceler.getString("ilce_ad")%></option>
			<%
			}
			%>
		</select> <input type="submit" onclick="document.forms[1].submit();"   name="submit" value="İlçe Seçin" />
	</form>
	<%
	} else {
	System.out.print("RS BOŞ");
	}
	%>
	<%
	}
	}
	} catch (SQLException e) {
	System.out.print("ilidgetir sqlexception" + e);
	}

	}
	%>
	  
	<%
	String ilceler = request.getParameter("ilceler");
	if (ilceler != null) {
		System.out.println("SEÇİLEN İLÇE =  " + ilceler);
		try {
			ResultSet secilenIlceId = vt.dbdenVeriCek("select ilce_id from randevu.ilceler where ilce_ad='" + ilceler + "' ");
			if (secilenIlceId != null) {
	 	while (secilenIlceId.next()) {
			ilceId = secilenIlceId.getInt(1);
			System.out.print("SEÇİLEN İLCENİN İDSİ" + ilceId);
			session.setAttribute("ilceid",ilceId);
	%>
	
	
	İLCELER
	<form name="f1" method="get" action="#"><select name=ilceler>
			<%
			ResultSet rsberberler = vt.dbdenVeriCek("select * from randevu.berberler where ilce_id='" + ilceId + "'  ");
			if (rsberberler != null) {
				while (rsberberler.next()) {
			%>
			<option><%=rsberberler.getString("kullanici_ad")%></option>
			<%
			}
			%>
		</select> <input type="submit"  onclick="document.forms[2].submit();"  name="submit" value="İlçe Seçin" />
	</form>
	<%
	} else {
	System.out.print("RS BOŞ");
	}
	%>
	<%
	}
	}
	} catch (SQLException e) {
	System.out.print("ilidgetir sqlexception" + e);
	}
		 
	}
	%> 
  
   </div>
		
  <div id="wrapper">
  
  <h1>Yönetici Ekranı</h1>
  
  <form id="myform" action="yonetici_guncelleme_response.jsp" >
  
  <div class="col-2">
    <label>
      Kullanıcı Adı
      <input placeholder="What is your full name?" id="name" name="kullaniciAdi" tabindex="1">
    </label>
  </div>
  <div class="col-2">
    <label>
      Şifre
      <input placeholder="Where do you currently work?" id="company" name="sifre" tabindex="2">
    </label>
  </div>
  <div class="col-2">
    <label>
      Ad
      <input placeholder="What is your full name?" id="name" name="ad" tabindex="1">
    </label>
  </div>
  <div class="col-2">
    <label>
      Soyad
      <input placeholder="Where do you currently work?" id="company" name="soyad" tabindex="2">
    </label>
  </div> 
  <div class="col-3">
    <label>
      Tc
      <input placeholder="What is the best # to reach you?" id="phone" name="tc" tabindex="3">
    </label>
  </div>
  <div class="col-3">
    <label>
      Mail
      <input placeholder="What is your e-mail address?" id="email" name="mail" tabindex="4">
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
    <button class="submitbtn" onclick="document.forms[0].submit();"  >Submit Form</button>
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