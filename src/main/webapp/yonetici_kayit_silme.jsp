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
  Veritabanibaglantisi vt=new Veritabanibaglantisi();
  int gelenBerberid=Integer.parseInt(request.getParameter("id"));
  Boolean  b=  vt.execute("delete from randevu.berberler where berber_id='"+gelenBerberid+"'");
  if(b){
	  out.print("SİLME İŞLEMİ BAŞARILI");
  }
  else {
	  out.print("SİLME İŞLEMİ BAŞARISIZ");
  } 
  %>
</body>
</html>