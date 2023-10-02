<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		Class.forName("org.postgresql.Driver");
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement ps = con.prepareStatement("update requests set status='archived' where id=?");
		ps.setInt(1, 1);	
		ps.executeUpdate();
	%>
</body>
</html>