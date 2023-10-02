package io.mountblue;

import java.io.IOException;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/archive")


public class archive extends HttpServlet{
	
	public void service(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		try {
//			String url = "jdbc:postgresql://localhost:5432/postgres";
//	        String username = "postgres";
//	        String password = "Ishan2712#";
//            Connection connection = DriverManager.getConnection(url, username, password);
//
//            // Create an SQL query as a string
//            String sqlQuery = "update requests set status='archived' where id=?";
//
//            // Create a PreparedStatement
//            PreparedStatement ps = connection.prepareStatement(sqlQuery);
//            ps.setInt(1, Integer.parseInt(req.getParameter("id")));
//
//            // Execute the query and get the result set
//            //ResultSet resultSet = ps.executeQuery();
//            ps.executeQuery();
//            RequestDispatcher rd = req.getRequestDispatcher("/requests.jsp");
//	        rd.forward(req, res);
			
			
			String url = "jdbc:postgresql://localhost:5432/postgres";
			String username = "postgres";
			String password = "Ishan2712#";
			Class.forName("org.postgresql.Driver");
			
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement ps = con.prepareStatement("update requests set status='archived' where id=?");
			ps.setInt(1, Integer.parseInt(req.getParameter("id")));
			
			ps.executeUpdate();
			RequestDispatcher rd = req.getRequestDispatcher("/requests.jsp");
	        rd.forward(req, res);

        } catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
		
		
//		try {
//			Class.forName("com.postgresql.cj.jdbc.Driver");
//	        Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres", "Ishan2712#");
//	
//	        PreparedStatement ps = con.prepareStatement("update requests set status='archived' where id=?");
//	        ps.setInt(1, Integer.parseInt(req.getParameter("id")));
//	
//	        ps.executeUpdate();
//	
//	        RequestDispatcher rd = req.getRequestDispatcher("/requests.jsp");
//	        rd.forward(req, res);
//		}
//		catch (Exception e) {
//            e.printStackTrace();
//        }
	}

}
