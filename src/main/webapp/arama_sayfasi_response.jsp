<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
 <%
 String kategori=request.getParameter("kategori"); 
 System.out.println("GELEN DEĞÜÜÜER"+kategori);
 %>
 <table class="table table-bordered" >
   
<%
Veritabanibaglantisi vt = new Veritabanibaglantisi();
try{ 
ResultSet rs=vt.dbdenVeriCek("select * from randevu.berberler where berber_id= '"+kategori+"' ");

while(rs.next()){
   
%>
<tr>
<td>  BERBER AD = <%=rs.getString("berber_ad")%></td>
 <td> BERBER ŞİFRE = <%=rs.getString("sifre")%></td>
 <td> BERBER BERBER TC =<%=rs.getString("berber_tc")%></td>
 <td> BERBER MAİL = <%=rs.getString("berber_mail")%></td>
</tr>
<%
    }
}
catch (Exception e) {
e.printStackTrace();
}
%> 
</table>

</body>
</html>