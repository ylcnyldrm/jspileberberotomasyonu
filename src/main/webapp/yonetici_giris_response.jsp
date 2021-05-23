
 <%@page import="classes.Veritabanibaglantisi"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>   
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
   
   String eskiSifre=request.getParameter("eskiSifre");
   String yeniSifre=request.getParameter("yeniSifre");
   System.out.print("USERNAME"+eskiSifre);
   System.out.print("ŞİFRE"+yeniSifre);
  
   if(eskiSifre!=null & yeniSifre!=null)
   {    
	   ResultSet rs= vt.dbdenVeriCek("select kullanici_sifre from kullanici");
	   
	   try{  
		   rs.next();
		    if(rs.getString("yonetici_ad").equals(eskiSifre) && rs.getString("yonetici_sifre").equals(yeniSifre)){
		    	System.out.print("Bağlantı başarılı userName = "+eskiSifre+"sifre= "+yeniSifre); 
		    	 response.sendRedirect("yonetici_main_yonlendirme.jsp");
		    	
		    }
		    else {
		    	System.out.print("Bağlantı başarılı userName = "+eskiSifre+"sifre= "+yeniSifre); 
		    	 response.sendRedirect("error.jsp");
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