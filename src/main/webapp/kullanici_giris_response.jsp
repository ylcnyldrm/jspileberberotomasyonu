 <%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.List"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
 <meta contentType="text/html; charset="UTF-8"/>
<title>Insert title here</title>
</head>
<body>

  <%
   Veritabanibaglantisi vt = new Veritabanibaglantisi();
   int kullaniciid; 
   String email=request.getParameter("mail");
   String sifre=request.getParameter("sifre");
    
   if(email!=null & sifre!=null)
   {    
	   ResultSet rs= vt.dbdenVeriCek("select * from kullanici where kullanici_mail='"+email+"' and kullanici_sifre='"+sifre+"' ");
	   
	   try{
		   
		   rs.next();  
		   
		   kullaniciid= Integer.parseInt(rs.getString("kullanici_id")); 
		   if(rs.getString("kullanici_mail").equals(email) && rs.getString("kullanici_sifre").equals(sifre)){
		     
			   String kullaniciKayitTarih= rs.getString("kullanici_kayit_tarih"); 
			   LocalDate today=LocalDate.now(); 
			   String currentDate=today.toString(); 
			   SimpleDateFormat myformat=new SimpleDateFormat("yyyy-MM-dd");
		       String secondDate1 =currentDate; 
		       
		       
		 	   Date firstDate = myformat.parse(kullaniciKayitTarih);
			   Date secondDate = myformat.parse(secondDate1);
			   long dif = firstDate.getTime()- secondDate.getTime();
	  		   int daysBetween =(int) (dif/(1000*60*60*24));
			   session.setAttribute("girenKullaniciid",kullaniciid);   
			   if(daysBetween <60){ 
			    	  response.sendRedirect("kullanici_main_yonlendirme.jsp"); 
			   }
			   else { 
				     response.sendRedirect("kullanici_parola_guncelle.jsp");
			   }
			    
		    }
		    else { 
		    	 
		    response.sendRedirect("error.jsp");
		    }  
		     
			   
	   }catch(SQLException e){
		   
			System.out.print("e"+e); 
	   }
	   vt.baglantiyiKes();
   } 
   else {
	    out.print("L??TFEN MA??L VE ????FREN??Z?? G??R??N??Z");
		System.out.print("NULL GELD?? DE??ERLER "); 
   }
   %> 

</body>
</html>