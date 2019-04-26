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
				<form id="rf" action="${pageContext.request.contextPath}/register"
					method="post">
					<div class="form-group has-feedback">
						<input type="text" class="form-control" name="username"
							placeholder="Username" required="required"> 
					</div>
					<div class="form-group has-feedback">
						<input type="text" class="form-control" name="name"
							placeholder="Full name" required="required"> 
					</div>
					<div class="form-group has-feedback">
						<input type="text" class="form-control" name="phone"
							placeholder="Phone" required="required"> 
					<div class="form-group has-feedback">
						<input type="text" class="form-control" name="email"
							placeholder="Email" required="required"> 
					</div>
					<div class="form-group has-feedback">
						<input type="password" id="password" class="form-control"
							name="password" placeholder="Password" required="required"> 
					</div>
					<div class="form-group has-feedback">
						<input type="password" class="form-control" name="repassword"
							placeholder="Retype password" required="required"> 
					</div>
					<input type="submit"
						value="submit">
				</form>
		
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
	<script>
		$(function() {
			$("#rf").validate({
				rules : {
					fullname : "required",
					username : "required",
					password : "required",
					phone : "required",
					email : "required",
					repassword : "required",
					repassword : {
						equalTo : "#password"
					}
				},
				messages : {
					fullname : "Vui lòng nhập tên của bạn!",
					username : "Vui lòng nhập tài khoản",
					password : "Vui lòng nhập mật khẩu!",
					phone : "Vui lòng nhập số điện thoại!",
					email : "Vui lòng nhập Email!",
					repassword : "Vui lòng nhập lại mật khẩu",
					repassword : "mật khẩu không trùng khớp!"
				}
			});
		});
	</script>
</body>
</html>