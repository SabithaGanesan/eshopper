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

String a=request.getParameter("b");
String b=session.getAttribute("sabitha").toString();
try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshopper","root","admin");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from product where pid='"+a+"' ");
		while(rs.next())
		{
			%>
			
			
			<img src="<%=rs.getString(3) %>" width="200px" height="200px"><br><br>
			<h3><%=rs.getString(2) %></h3>
			<h5><%=rs.getString(4) %></h5>
			
			<%
			}
			
		}
	catch(Exception e)
	{
		out.println(e);
	}
	
	
	%>
	
	
	
	<h3>Order Address</h3>
	
	<form action="#" method="post">
	pid<input Type="text" value="<%=a%>" >
	
	Address<input type="text" name="n1">
	phone<input type="text" name="n2">
	<input type="submit">
	</form>
	
	<%
	String x=request.getParameter("n1");
    String y=request.getParameter("n2");
    if(x!=null && y!=null)
    {
    	
   
    try
	{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshopper","root","admin");
		Statement st=con.createStatement();
		st.executeUpdate("insert into order1 values('"+a+"' ,'"+b+"' , '"+x+"' ,'"+y+"')");
		out.println("<script>alert('order sucessfully')</script>");
	}
    
		catch(Exception e)
		{
			out.println(e);
		}
    }
		
		
		%>
		

</body>
</html>