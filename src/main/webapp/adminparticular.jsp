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
<form action="#" method="post">
product id<input type="text" name="n1">
<input type="submit">
</form>

<%
String a=request.getParameter("n1");
if(a!=null)
{
	try
	{

		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshopper","root","admin");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from product where pid='"+a+"' ");
		if(rs.next())
		{
			%>
			<p> pname<%= rs.getString(2) %></p>
			<p>image<img src="<%=rs.getString(3) %> " width="200px" height="200px"></p>
			<p>price <%=rs.getInt(4) %></p>
			
   <% 
		}
		
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
}
	
	%>

</body>
</html>
