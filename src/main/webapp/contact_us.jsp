<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="contact_us.css">
<title>Insert title here</title>
</head>
<body bgcolor="#E6E6E6">
	<div class="outerBox">
		<div class="innerBox1">
			<h1>Contact Us</h1>
			<p>Please fill this form in a decent manner</p>
			
		</div>
		<div class="innerBox2">
			<form action="reqSubmitted.jsp" method="post">
				<div class="innerBox3">
					<h3>Full Name <span class="red">*</span></h3>
				</div>
				<input class="area" name="name" type="text" required><br>
				<div class="innerBox3">
					<h3>E-mail <span class="red">*</span></h3>
				</div>
				<input class="area" name="email" type="email" placeholder="example@example.com" required><br>
				<div class="innerBox3">
					<h3>Message <span class="red">*</span></h3>
				</div>
				<textarea class="area" name="msg" rows="7" cols="10" required></textarea>
				<div class="submit">
					<button class="butn" type="submit">SUBMIT</button>
				</div>
			</form>
		</div>
		<div class="pqr">
			<span class="txt">If you are an Admin, you can <a href="login.jsp">login</a>.</span>
		</div>
	</div>
</body>
</html>