<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="error.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="#E6E6E6">

	<%
	
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String msg = request.getParameter("msg");
		
		String url = "jdbc:postgresql://localhost:5432/postgres";
		String username = "postgres";
		String password = "Ishan2712#";
		Class.forName("org.postgresql.Driver");
		
		Connection con = DriverManager.getConnection(url,username,password);
		PreparedStatement ps = con.prepareStatement("insert into requests (full_name, email, message) values (?, ?, ?)");
		ps.setString(1, name);
		ps.setString(2, email);
		ps.setString(3, msg);
		
		ps.executeUpdate();
		//ResultSet rs = ps.executeQuery();
		
	%>
	<div class="outerBox">
		<div class="innerBox1">
			<h1><span class="blue">Request Submitted Successfully</span></h1>
		</div>
		<div class="innerBox2">
			<form action="contact_us.html" method="post">
				<div class="submit">
					<button class="butn" type="submit">Go Back</button>
				</div>
			</form>
		</div>
		<div class="xyz">
		</div>
	</div>
	

</body>
</html>