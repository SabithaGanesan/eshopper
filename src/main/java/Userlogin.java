

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.sql.*;
import java.io.*;

/**
 * Servlet implementation class Userlogin
 */
@WebServlet("/Userlogin")
public class Userlogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String a=request.getParameter("n1");
		String b=request.getParameter("n2");
		PrintWriter pw=response.getWriter();
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshopper","root","admin");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from user where email='"+a+"' and password='"+b+"' ");
			if(rs.next())
			{
				
				String c=rs.getString(1);
				HttpSession session=request.getSession();
				session.setAttribute("sabitha", c);
				response.sendRedirect("userindex.jsp");
			}
			else
			{
				response.sendRedirect("userlogin.jsp");	
			}
			
		}
		catch(Exception e)
		{
			pw.println(e);
		}
	}

}
