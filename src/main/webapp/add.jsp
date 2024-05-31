<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action = "#" method="post">
product id<input type="text" name="n1"><br><br>
product name<input type="text" name="n2"><br><br>
image<input type="text" name="n3"><br><br>
price<input type="text" name="n4"><br><br>
<input type="submit">
</form>

<%
String a=request.getParameter("n1");
String b=request.getParameter("n2");
String c=request.getParameter("n3");
String d=request.getParameter("n4");

if(a!=null && b!=null && c!=null && d!=null)
	
{
	try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshopper","root","admin");
		Statement st=con.createStatement();
		st.executeUpdate("insert into product values('"+a+"' ,'"+b+"' , '"+c+"' ,'"+d+"')");
		out.println("insert successfully");
	}
	catch(Exception e)
	{
		out.println(e);
	}
}

%>
</body>
</html>