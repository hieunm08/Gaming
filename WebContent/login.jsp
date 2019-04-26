<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Gaming Login Form Responsive Widget Template :: w3layouts</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Gaming Login Form Widget Tab Form,Login Forms,Sign up Forms,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- validate -->
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<style type="text/css">
.error {
	color: red;
}
</style>
</head>

<body>
	<div class="padding-all">
		<div class="header">
			<h1>
				<img src="images/5.png" alt=" "> Gaming Login Form
			</h1>
		</div>

		<div class="design-w3l">
			<div class="mail-form-agile">
				<span style="color: red">${message}</span>
				<form id="lf" action="${pageContext.request.contextPath}/login"
					method="post">
					<div class="form-group has-feedback">
						<input type="text" name="username"
							placeholder="User Name  or  email..." required="" />
					</div>
					<div class="form-group has-feedback">
					<input type="password" name="password" class="padding"
						placeholder="Password" required="" /> <input type="submit"
						value="submit">
						</div>
				</form>
				<a href="register.jsp" class="text-center">Register a new
					membership</a>
			</div>
			<div class="clear"></div>
		</div>

		<div class="footer">
			<p>
				© 2017 Gaming Login form. All Rights Reserved | Design by Team PHT </a>
			</p>
		</div>
	</div>
	<!-- Bootstrap 3.3.7 -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	
</body>
</html>