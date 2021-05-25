<%@page import="java.sql.SQLException"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 <%
   Veritabanibaglantisi vt = new Veritabanibaglantisi();
   int berberid; 
   String email=request.getParameter("mail");
   String sifre=request.getParameter("sifre");
    
   if(email!=null & sifre!=null)
   {    
	   ResultSet rs= vt.dbdenVeriCek("select * from berberler where berber_mail='"+email+"' and sifre='"+sifre+"' ");
	   
	   try{
		   
		   rs.next();  
		   
		   berberid= Integer.parseInt(rs.getString("berber_id")); 
		   if(rs.getString("berber_mail").equals(email) && rs.getString("sifre").equals(sifre)){
			   
			   response.sendRedirect("berber_randevu_listeleme.jsp");  
			   session.setAttribute("girenBerberid",berberid);    
			    
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
	    out.print("LÜTFEN MAİL VE ŞİFRENİZİ GİRİNİZ");
		System.out.print("NULL GELDİ DEĞERLER "); 
   }
   %> 

</body>
</html>