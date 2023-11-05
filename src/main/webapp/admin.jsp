<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
		String url = "jdbc:postgresql://localhost:5432/postgres";
		String username = "postgres";
		String password = "Ishan2712#";
		String sql = "select username, password from requests where id=1";
		Class.forName("org.postgresql.Driver");
		
		Connection con = DriverManager.getConnection(url,username,password);
		Statement st = con.createStatement();
		
		ResultSet rs = st.executeQuery(sql);
		rs.next();
		
		String user1 = request.getParameter("user");
		String pass1 = request.getParameter("pass");
		
		String user2 = rs.getString("username");
		String pass2 = rs.getString("password");
				
		if(user1.equals(user2) && pass1.equals(pass2)) {
	%>
	<%@ include file="requests.jsp" %>
	<%	
		}
		else {
			int k = 9/0;
		}
	%>

</body>
</html>