 <%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
<%
  int berberid=(int)session.getAttribute("id");    
 String tarih = request.getParameter("tarih");
 int girenKullaniciid=(int)session.getAttribute("girenKullaniciid");     
 
 System.out.println("es TARİH "+tarih);
 System.out.println("seçilen berberin İD Sİ  "+berberid);
  if (tarih !=null && girenKullaniciid !=0 && berberid !=0 ){
	  
	 Veritabanibaglantisi vt = new Veritabanibaglantisi();
	 
	 Date date = new SimpleDateFormat("yyyy/MM/dd").parse(tarih);
	 String stringDate = new SimpleDateFormat("yyyy-MM-dd").format(date);
	
	 
	 System.out.println("es TARİH "+tarih);
     System.out.println("yeni TARİH "+stringDate);
	  
	 Boolean sonuc= vt.execute("insert into randevu.randevu (berber_id,kullanici_id,randevu_tarih) values ('"+berberid+"','"+girenKullaniciid+"','"+stringDate+"' )"); 
	  if(sonuc){
		  response.sendRedirect("kullanici_main_yonlendirme.jsp");  
			 out.println("RANDEVU ALINDI.");
		   
	   }else {
		   out.println("RANDEVU ALINAMADI.");
		   
	   }
 
 }
 else {
	 
	 out.println("RANDEVU ALINAMADI");
 } 
%>

</body>
</html>