<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
 
  <meta charset="ISO-8859-1">
 
 	<title>Table V01</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="tablocss/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tablocss/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tablocss/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tablocss/vendor/animate/animate.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tablocss/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tablocss/vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="tablocss/css/util.css">
	<link rel="stylesheet" type="text/css" href="tablocss/css/main.css">
<!--===============================================================================================-->
 
 
 
</head>
<body>
 
 
 <div class="limiter">
		<div class="container-table100">
			<div class="wrap-table100">
				<div class="table100">
					<table>
						<thead>
							<tr class="table100-head">
								<th class="column1">Ad</th>
								<th class="column2">Soyad</th>
								<th class="column3">Cinsiyet</th>
								<th class="column4"></th>
								<th class="column5"></th>
								<th class="column6"></th>
							</tr>
						</thead>
						<tbody>
						<%
						int girenKullaniciid=(int)session.getAttribute("girenKullaniciid");  
						System.out.println("GİREN KD İD "+String.valueOf(girenKullaniciid));
                        Veritabanibaglantisi vt = new Veritabanibaglantisi();
                        ResultSet rs = vt.dbdenVeriCek("SELECT randevu.kullanici.kullanici_ad as kullanıcı_ad, "+
                        "randevu.kullanici.kullanici_soyad as kullanıcı_soyad, "+
                        "randevu.kullanici.kullanici_tc as kullanıcı_tc, "+
                        "randevu.randevu.randevu_tarih as randevu_tarih "+ 
                        "FROM randevu.kullanici,randevu.randevu "+
                        "WHERE randevu.kullanici.kullanici_id='"+girenKullaniciid+"' ");
                          
                         if(rs!=null)
                         {
                             while(rs.next())
                             {
                                 %> 
								<tr>
									<td class="column1"><%=  rs.getString("kullanıcı_ad") %> </td>
									<td class="column2"><%=  rs.getString("kullanıcı_soyad")%>  </td>
									<td class="column3"><%=  rs.getString("kullanıcı_tc") %></td> 
									<td class="column3"><%=  rs.getString("randevu_tarih") %></td> 
									 
								</tr>
                                  
                                 <% 
                             }
                         }
                         else {
                        	 System.out.println("RS BOŞ KANKA ");
                         }
                        %> 
								 
								
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


	

<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
		   
		   
	 }
 }
 
</body>
</html>