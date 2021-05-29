 
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.protocol.Resultset"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
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
 
<body>
 
 
  <h1>Randevularım </h1>
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
						int girenBerberid=(int)session.getAttribute("girenBerberid");  
						System.out.println("GİREN KD İD "+String.valueOf(girenBerberid));
                        Veritabanibaglantisi vt = new Veritabanibaglantisi();
                        ResultSet rs = vt.dbdenVeriCek("SELECT randevu.berberler.berber_ad as berber_ad , "+
                        		"randevu.berberler.berber_soyad as berber_soyad, "+
                                "randevu.randevu.randevu_tarih as randevu_tarih  "+
                                "from  randevu.randevu inner join randevu.berberler on "+
                                "randevu.randevu.berber_id=randevu.berberler.berber_id "+
                                "where randevu.randevu.berber_id='"+girenBerberid+"'  ");
                           
                    /* SELECT randevu.kullanici.kullanici_ad as kullanici_ad ,
                        randevu.kullanici.kullanici_soyad as kullanici_soyad
                        from  randevu.randevu inner join randevu.kullanici on
                        randevu.randevu.kullanici_id=randevu.kullanici.kullanici_id 
                        where randevu.randevu.berber_id=7 and randevu.randevu.kullanici_id=5 */
                         if(rs!=null)
                         {
                             while(rs.next())
                             {
                                 %> 
								<tr>
									<td class="column1"><%=  rs.getString("berber_ad") %> </td>
									<td class="column2"><%=  rs.getString("berber_soyad")%>  </td> 
									<td class="column3"><%=  rs.getString("randevu_tarih") %></td> 
									 
								</tr>
                                  
                                 <% 
                             }
                         }
                         else {
                        	 System.out.println("RS BOŞ KANKA ");
                         }
                        %>
							<!-- 	<tr>
									<td class="column1">2017-09-28 05:57</td>
									<td class="column2">200397</td>
									<td class="column3">Samsung S8 Black</td>
									<td class="column4">$756.00</td>
									<td class="column5">1</td>
									<td class="column6">$756.00</td>
								</tr>
								<tr>
									<td class="column1">2017-09-26 05:57</td>
									<td class="column2">200396</td>
									<td class="column3">Game Console Controller</td>
									<td class="column4">$22.00</td>
									<td class="column5">2</td>
									<td class="column6">$44.00</td>
								</tr>
							 
						  -->
								 
								
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