package contact;

import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/active")
public class active extends HttpServlet{
	
	public void service(HttpServletRequest req, HttpServletResponse res)
	{
		try {
			String url = "jdbc:postgresql://localhost:5432/postgres";
			String username = "postgres";
			String password = "Ishan2712#";
			Class.forName("org.postgresql.Driver");
			
			Connection con = DriverManager.getConnection(url,username,password);
			PreparedStatement ps = con.prepareStatement("update requests set status='active' where id=?");
			ps.setInt(1, Integer.parseInt(req.getParameter("id")));
			ps.executeUpdate();
			RequestDispatcher rd = req.getRequestDispatcher("/archRequests.jsp");
	        rd.forward(req, res);
		}
		catch (Exception e) {
            e.printStackTrace();
        }
	}

}
