<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="login.css">
<title>Insert title here</title>
</head>
<body bgcolor="#E6E6E6">
	
	<div class="outerBox">
		<div class="innerBox1">
			<h1>Admin</h1>
			
		</div>
		<div class="innerBox2">
			<form action="admin.jsp" method="post">
				<div class="innerBox3">
					<h3>Username <span class="red">*</span></h3>
				</div>
				<input class="area" name="user" type="text" required><br>
				<div class="innerBox3">
					<h3>Password <span class="red">*</span></h3>
				</div>
				<input class="area" name="pass" type="password" required>
				<div class="submit1">
					<button class="butn" type="submit"><span class="login">Login</span></button>
				</div>
			</form>
			<form action="contact_us.jsp" method="post">
				<div class="submit2">
					<button class="butn" type="submit"><span class="back">Go Back</span></button>
				</div>
			</form>
		</div>
		<div class="pqr">
		</div>
	</div>
	
</body>
</html>