<%@page import="classes.DropDownIslemleri"%>
<%@page
	import="org.eclipse.jdt.internal.compiler.ast.IntLiteralMinValue"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="classes.Veritabanibaglantisi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="error.jsp">
 <input   type="submit"   name="button_clicked" value="ButtonA" />
 <input  type="submit"   name="button_clicked" value="ButtonB" />
 <input type="submit"    name="button_clicked" value="ButtonC" />
</form>

 <%
String buttonClicked = request.getParameter("button_clicked");
if(null == "buttonClicked"){
	out.print("A");
	System.out.print("A TIKLANILDI");
}
  //form not entered.
else if("ButtonA".equals(buttonClicked)){
	System.out.print("B TIKLANILDI");
	out.print("A");
}
  // do stuff for condion A
else if("ButtonB".equals(buttonClicked)){
	System.out.print("C TIKLANILDI");
	out.print("b");
}
  // do stuff for condion B
else if("ButtonC".equals(buttonClicked)){
	System.out.print("D TIKLANILDI");
	out.print("c");
}
  // do stuff for condion C

%>

</body>
</html>