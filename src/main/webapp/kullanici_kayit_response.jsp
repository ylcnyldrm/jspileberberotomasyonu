<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.SQLException"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
   <% 
   LocalDate startDate = LocalDate.now();
   LocalDate endDate = startDate.plusMonths(2);
   int ozelKarakterSayisi = 0; 
   
   
   String ka=request.getParameter("kullaniciAdi");
   String sifre=request.getParameter("sifre"); 
   String ad=request.getParameter("ad");
   String soyad=request.getParameter("soyad");
   String tc=request.getParameter("tc");
   String mail=request.getParameter("mail");   
   String cinsiyet=request.getParameter("radio"); 
   
   for (int i = 0; i < sifre.length(); i++) {
       if (sifre.substring(i, i+1).matches("[^A-Za-z0-9]")) {
    	   ozelKarakterSayisi++;
       }

    } 
   
   if(sifre!=null && ka!=null &&  ad!=null &&  soyad!=null &&  mail!=null &&  cinsiyet!=null &&  tc!=null ){
	   if (sifre.length()>=5 && ozelKarakterSayisi>=3  ){
		   
		   
		   Veritabanibaglantisi vt= new Veritabanibaglantisi();
		   try {
			   Boolean sonuc= vt.execute("insert into randevu.kullanici (kullanici_ad,kullanici_gercek_ad,kullanici_soyad,"+
		       "kullanici_tc,kullanici_cinsiyet,"+
			   "kullanici_mail,kullanici_sifre,kullanici_kayit_tarih)  values ('"+ka+"','"+ad+"','"+soyad +"','"+tc +"','"+cinsiyet +"','"+mail +"','"+sifre +"','"+startDate +"')"); 
					  
			   if(sonuc){
				  response.sendRedirect("kullanici_giris.jsp");
				   
			   }else {
				   out.print("KAYIT BAŞARISIZ TEKRAR DENEYİN"); 
			   }
		   } 
		   
		   catch(SQLException e )
		   
		   { 
			   System.out.println("VERİ TABANI VER EKLEME EXCEPTİON " +e );
			   
		   }  
		   
	   }
	   else {
		   out.print("ŞİFRENİZ ÖZEL KARAKTER İÇERMELİDİR VE UZUNLUĞU EN AZ 6 OLMALIDIR. ");
	   }
	   
   } 
   else {
          // HATA MESAJI VER 
   }

   
   %>
 
 
</body>
</html>