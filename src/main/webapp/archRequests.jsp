<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="request.css">
	<title>Insert title here</title>
</head>
<body bgcolor="#E6E6E6">
	<div class="outerBox">
	<div class="innerBox1">
		<h1>Archived Requests</h1>
	</div>
	<div class="innerBox2">
		
		<%
			String url = "jdbc:postgresql://localhost:5432/postgres";
			String username = "postgres";
			String password = "Ishan2712#";
			Class.forName("org.postgresql.Driver");
			String sql = "select id, full_name, email, message from requests where status='archived'";
			Connection con = DriverManager.getConnection(url,username,password);
			Statement st = con.createStatement();
			
			ResultSet rs = st.executeQuery(sql);
			rs.next();
		%>
		<table>
	    <tr>
	        <th>Sr. No.</th>
	        <th>Full Name</th>
	        <th>Email</th>
	        <th>Message</th>
	        <th></th>
	    </tr>
			
		<%
		    int i=1, id=0;
			while (rs.next()) {
				id = rs.getInt("id");
		%>
				<tr>
	        		<td align="center"><%= i %></td>
	        		<td align="center"><%= rs.getString("full_name") %></td>
	        		<td align="center"><%= rs.getString("email") %></td>
	        		<td align="center"><%= rs.getString("message") %></td>
	        		<td>
	        			<a href="${pageContext.request.contextPath}/active?id=<%=id%>"><button>Activate</button></a>
	        		</td>
	    		</tr>
	    <%
	    		i++;
			}
	    %>
	    </table>
		
	</div>
	
	<div class="side">
		<form action="login.jsp">
			<button type="submit" class="butn">Log Out</button><br>
		</form>
		<form action="requests.jsp">
			<button type="submit" class="butn">Active Requests</button>
		</form>
	</div>
</div>

	

</body>
</html>