<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="error.css">
	<title>Insert title here</title>
</head>
<body bgcolor="#E6E6E6">

	<div class="outerBox">
		<div class="innerBox1">
			<h1><span class="red">Username/Password is Incorrect</span></h1>
		</div>
		<div class="innerBox2">
			<form action="login.jsp" method="post">
				<div class="submit">
					<button class="butn" type="submit">Retry Login</button>
				</div>
			</form>
		</div>
		<div class="xyz">
		</div>
	</div>

</body>
</html>