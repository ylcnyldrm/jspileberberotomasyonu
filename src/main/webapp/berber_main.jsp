 
<%@page import="java.io.IOException"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 BERBER  MAİN 
 
   <form name="f1" method="get" action="#">
       <select name="clr">
           <option>Red</option>
           <option>Blue</option>   
           <option>Green</option>
           <option>Pink</option>
       </select>
     <input type="submit" name="submit" value="Select Color"/>
    </form>
    
        <form action="#" method="post"> 
            <label>Email To</label><br />       
                <input type="text" name="to" /><br /> <br /> 
            <label>Subject</label><br />        
                <input type="text" name="sub" /><br /> <br /> 
            <label for="body">Message</label><br />
                <input type="text" name="msg" /><br /> <br /> 
            <input type="submit"/>
        </form>
   
    <%!
          public String sendMail(String to, String sub, String msg) {
             String res = null;     
            System.out.println("HI"+to+"Hİ2"+sub+"msj"+msg);      
            return res;
         }
     %>

    <%        
    String b ="seçim yap";
    String a = request.getParameter("clr");
    if(a != null){
    	System.out.println(a);
        sendMail(request.getParameter("to"),request.getParameter("sub"),request.getParameter("msg"));
    }
    %>
   
    <form name="f1" method="get" action="#">
       <select name="clr">
           <option> <%if (a!=null){out.print(a);  
           }else {
        	   out.print("SAbb");
           }   %></option> 
       </select>
     <input type="submit" name="submit" value="Select Color"/>
    </form>
</body>
</html>