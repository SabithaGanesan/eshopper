<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="#" mothod="post">
Username<input type="text" name="n1"><br><br>
password<input type="password" name="n2"><br><br>
<input type="submit">
</form>


<%

String a=request.getParameter("n1");
String b=request.getParameter("n2");
if(a!=null && b!=null)
{
	if(a.equals("admin") && b.equals("admin"))
	{
		response.sendRedirect("adminhome.jsp");
	}
	else
	{
		response.sendRedirect("adminlogin.jsp");
	}
}
%>
</body>
</html>