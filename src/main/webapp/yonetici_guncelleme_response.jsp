<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
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
   Veritabanibaglantisi vt= new Veritabanibaglantisi(); 
   String gelenId=(String)session.getAttribute("guncellenecekKullanicininIdsi");
   System.out.println("guncellenecek KULLANCII ID "+gelenId);
    
   int guncellenecekId=Integer.parseInt(gelenId);
		    
   int ilceid=(int)session.getAttribute("ilceid");  
   String ka=request.getParameter("kullaniciAdi");
   String sifre=request.getParameter("sifre"); 
   String ad=request.getParameter("ad");
   String soyad=request.getParameter("soyad");
   String tc=request.getParameter("tc");
   String mail=request.getParameter("mail");   
   String cinsiyet=request.getParameter("radio");
   
   
   System.out.println("GELEN İLÇENİN İD Sİ "+ilceid);
   System.out.println(ka);
   System.out.println(sifre);
   System.out.println(ad);
   System.out.println(soyad);
   System.out.println(tc);
   System.out.println(mail);
   System.out.println(cinsiyet); 
     try { 
    	Boolean b= vt.execute("update randevu.berberler set ilce_id='"+ilceid+"',berber_ka='"+ka+"',sifre='"+sifre+"',berber_ad='"+ad+"',berber_soyad='"+soyad+"',berber_tc='"+tc+"',berber_mail='"+mail+"',berber_cinsiyet='"+cinsiyet+"' where berber_id='"+guncellenecekId+"'  ");   
	   if(b){
		   out.print("GÜNCELLEME İŞLEMİ BAŞARILI"); 
	   }else {
		   out.print("GÜNCELLEME İŞLEMİ BAŞARISIZ");
		   
	   }
   } 
   
   catch(SQLException e )
   
   {
	   
	   System.out.println("VERİ TABANI VER EKLEME EXCEPTİON " +e );
	   
   } 
   
   %>
</body>
</html>