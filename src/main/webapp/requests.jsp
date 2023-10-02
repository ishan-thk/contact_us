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
			<h1>Active Requests</h1>
		</div>
		<div class="innerBox2">
			
			<%
				String url1 = "jdbc:postgresql://localhost:5432/postgres";
				String username1 = "postgres";
				String password1 = "Ishan2712#";
				Class.forName("org.postgresql.Driver");
				String sql1 = "select id, full_name, email, message from requests where status='active'";
				Connection con1 = DriverManager.getConnection(url1,username1,password1);
				Statement st1 = con1.createStatement();
				
				ResultSet rs1 = st1.executeQuery(sql1);
				rs1.next();
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
				while (rs1.next()) {
					id = rs1.getInt("id");
			%>
					<tr>
		        		<td align="center"><%= i %></td>
		        		<td align="center"><%= rs1.getString("full_name") %></td>
		        		<td align="center"><%= rs1.getString("email") %></td>
		        		<td align="center"><%= rs1.getString("message") %></td>
		        		<td>
		        			<a href="${pageContext.request.contextPath}/archive?id=<%=id%>"><button>Archive</button></a>
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
			<form action="archRequests.jsp">
				<button type="submit" class="butn">Archived Requests</button>
			</form>
		</div>
	</div>
</body>
</html>