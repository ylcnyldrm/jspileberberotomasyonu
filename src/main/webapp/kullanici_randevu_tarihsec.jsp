 <%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

   <title>jQuery DatePicker</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
        <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
        <script>
            $(function () {
                $("#datepicker").datepicker();
            });
        </script>
 
</head>
<body>
 

    <form action="kullanici_randevu_tarihsec_response.jsp">
            <label for="datepicker">Randevu Tarihini Seçiniz:</label>
                <input type="text" name="tarih" id="datepicker"> 
            <input type="submit" value="Submit">
        </form>

</body>
</html>