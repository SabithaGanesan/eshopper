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

<%
try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshopper","root","admin");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from product");
		while(rs.next())
		{
			%>
			
			<p>pid <%=rs.getString(1) %></p>
			<p>pname <%=rs.getString(2) %></p>
			<p>image<img src="<%=rs.getString(3) %> " width="200px" height="200px"></p>
			<p>price <%=rs.getInt(4) %></p>
			
			<%
		}
		
	}
	catch(Exception e)
	{
		out.println(e);
	}%>

</body>
</html>