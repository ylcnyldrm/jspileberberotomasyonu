 <%@page import="java.time.LocalDate"%>
<%@page import="org.eclipse.jdt.internal.compiler.ast.LocalDeclaration"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.servlet.jsp.tagext.TryCatchFinally"%>
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
  LocalDate startDate = LocalDate.now();
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
   
   Veritabanibaglantisi vt= new Veritabanibaglantisi();
   try {
	   Boolean sonuc= vt.execute("insert into randevu.berberler (ilce_id,berber_ka,sifre,berber_ad,"+
       "berber_soyad,berber_tc,"+
	   "berber_mail,berber_cinsiyet,berber_kayit_tarihi)  values ('"+ilceid+"','"+ka+"','"+sifre+"','"+ad +"','"+soyad +"','"+tc +"','"+mail +"','"+cinsiyet +"','"+startDate+"'   )"); 
			  
	   if(sonuc){
		   out.print("KAYIT BAŞARILI");
		   
	   }else {
		   out.print("KAYIT BAŞARISIZ");
		   
	   }
   } 
   
   catch(SQLException e )
   
   {
	   
	   System.out.println("VERİ TABANI VER EKLEME EXCEPTİON " +e );
	   
   }
   
   %>
   
   
   
</body>
</html>