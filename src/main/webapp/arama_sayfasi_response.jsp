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
    <tr>
              <th>KATEGORI ADI</th>
        <th>GUNCELLE</th>
        <th>SIL</th>
      </tr>
<%-- <%
try{
String kategori=request.getParameter("kategori"); 
ResultSet rs=sayiCrud.selectAllData();
while(rs.next()){
    String kategoriad=rs.getString("kategoriad");
    if(kategori.equals(kategoriad)){
%>
<tr>
<td><%=rs.getString("kategoriad")%></td>
<td><a href='kategori_guncelleme.jsp?idkategori=<%=rs.getString("idkategori")%>'>Update<span class="glyphicon glyphicon-edit" style="font-size:24px; color:green;"></span></a></td>
<td><a href='kategori_sil.jsp?idkategori=<%=rs.getString("idkategori")%>'>Delete<span class="glyphicon glyphicon-remove" style="font-size:24px; color:red;"></span></a></td> 
</tr>
<%
    }}
}
catch (Exception e) {
e.printStackTrace();
}
%> --%>
</table>

</body>
</html>