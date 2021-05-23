 <%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
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
   Veritabanibaglantisi vt = new Veritabanibaglantisi();
   int girenKullaniciid=(int)session.getAttribute("girenKullaniciid");  
   String eskiSifre=request.getParameter("eskiSifre");
   String yeniSifre=request.getParameter("yeniSifre");
   System.out.print("USERNAME"+eskiSifre);
   System.out.print("ŞİFRE"+yeniSifre);
   System.out.print("GİREN KULLANİCİ İD "+girenKullaniciid);
  
   if(eskiSifre!=null & yeniSifre!=null)
   {    
	   ResultSet rs= vt.dbdenVeriCek("select kullanici_sifre from randevu.kullanici where kullanici_id='"+girenKullaniciid+"'");
	   rs.next();
	   System.out.print(" RS GETSTRİNG 2  "+rs.getString(1).toString()); 
	    try{   
		   if (rs.getString(1).equals(eskiSifre)){
			   Boolean b= vt.execute("update randevu.kullanici set kullanici_sifre='"+yeniSifre.toString()+"' where kullanici_id='"+girenKullaniciid+"'  ");   
			   if(b){
				   out.print("GÜNCELLEME İŞLEMİ BAŞARILI"); 
			   }else {
				   out.print("GÜNCELLEME İŞLEMİ BAŞARISIZ"); 
			   } 
		   }
		   else {
			   out.print("ESKİ ŞİFRENİZ DOĞRU DEĞİLDİR.");
		   }   
	   }catch(SQLException e){
		   
			System.out.print("e"+e); 
	   }
	   vt.baglantiyiKes();  
   }  
   else {
	   
		System.out.print("NULL GELDİ DEĞERLER "); 
   }
   %> 

</body>
</html>