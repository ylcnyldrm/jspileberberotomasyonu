	
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - SB Admin</title>
        <link href="css1/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head> 
    <body>  
            <ul class="navbar-nav ml-auto ml-md-0"> 
            </ul> 
                <form class="form-inline" method="post" action="arama_sayfasi_response.jsp">
               <select id="idTur" > 
   	<% 
	Veritabanibaglantisi vt = new Veritabanibaglantisi();
   	ResultSet rs = vt.dbdenVeriCek("select * from randevu.berberler");
  	while(rs.next()) 
  	{ %> 
  <option  value="<%=rs.getString("berber_id")%>"><%=rs.getString("berber_ad")%></option>
  	<% } %></select>
  	      <input type="hidden" class="form-control" id="kategori" name="kategori"  />
<button type="submit" name="save" class="btn btn-primary">Search</button>
</form>
  
           <script>
$(function(){
$("#idTur").change(function() {
var deger = $(this).val();
$("#kategori").val(deger);
});
})

</script>
    </body>
</html>
