
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
   
   String mail=request.getParameter("mail");
   String sifre=request.getParameter("sifre");
   System.out.print("mail"+mail);
   System.out.print("ŞİFRE"+sifre);
  
   if(mail!=null & sifre!=null)
   {   
	   ResultSet rs= vt.dbdenVeriCek("select * from yonetici where yonetici_mail='"+mail+"' and yonetici_sifre='"+Integer.parseInt(sifre)+"' ");
	   
	   if(rs!=null){
		   
		   try{  
			   rs.next();
			    if(rs.getString("yonetici_mail").equals(mail) && rs.getString("yonetici_sifre").equals(sifre)){
			    	System.out.print("Bağlantı başarılı userName = "+mail+"sifre= "+sifre); 
			    	 response.sendRedirect("yonetici_main_yonlendirme.jsp");
			    	
			    }
			    else {
			    	System.out.print("Bağlantı başarılı userName = "+mail+"sifre= "+sifre); 
			    	 response.sendRedirect("error.jsp");
			    }
			    
		   }catch(SQLException e){
			   
				System.out.print("e"+e); 
		   }
		   
		   vt.baglantiyiKes();
		   
	   }else {
		   
		   out.print(" BÖYLE BİR YÖNETİCİ BULUNAMAMAKTADIR.  ");
	   }
	   
	 
   } 
   else {
	   
		System.out.print("NULL GELDİ DEĞERLER "); 
   }
   %> 
    
</body>
</html>