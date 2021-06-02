<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<% 
  Veritabanibaglantisi vb = new Veritabanibaglantisi();
  String gelenDeger=request.getParameter("arama_ad"); 
  ResultSet rs= vb.dbdenVeriCek("SELECT * FROM randevu.berberler WHERE berber_cinsiyet like '"+gelenDeger+"' ");
  if(rs!=null)
  {
  while(rs.next())
  {
  %>
  <tr>
  <td class="column1"> AD = <%=  rs.getString("berber_ad") %> </td> <br>
  <td class="column2"> SOYAD = <%=  rs.getString("berber_soyad")%>  </td>  <br>
  <td class="column3">MAİL=<%=  rs.getString("berber_mail") %></td>  <br>
  <td class="column3">CİNSİYET =<%=  rs.getString("berber_cinsiyet") %></td>   <br>
  </tr>
  <% 
     }
    }
    %>
</body>
</html>