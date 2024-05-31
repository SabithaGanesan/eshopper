<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>


    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | E-Shopper</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    
</head><!--/head-->

<body>
	
		
				
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-user"></i> <%
								
								String a=session.getAttribute("sabitha").toString();
								out.println(a);
								
								
								%></a></li>
								<li><a href="#"><i class="fa fa-star"></i> Wishlist</a></li>
								<li><a href="userview.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="userview.jsp"><i class="fa fa-shopping-cart"></i> Cart</a></li>
								<li><a href="userlogin.jsp"><i class="fa fa-lock"></i> signout</a></li>
							</ul>
						</div>
					</div>
		
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						
				</div>
			</div>
			</div>
		</div><!--/header-bottom-->

	
	
	
				
				<div class="col-sm-9 padding-right">
					
						
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
								
								<div class="col-sm-3">
								<img src="<%=rs.getString(3) %>" width="200px" height="200px"><br>
								<h3><%=rs.getString(2) %></h3>
								<h5><%=rs.getString(4) %></h5>
								<input type ="submit" value="view cart" onclick="get('<%=rs.getString(1)%>')">
								
								
								</div>
								<%
								}
								
							}
						catch(Exception e)
						{
							out.println(e);
						}
						
						
						%>
			</div>
		
				
	
	 <div class="cart1" style="border:2px solid">
    <ul id="cart2">
    </ul>
    </div>
    <script>
    
   
    function get(a,b)
    {
    
    	window.location.href="/eshopper/userview.jsp?b="+a+" ";
    }
    
    
    </script>

	

  
    
   
</body>
</html>