<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>jQuery Validate - ThienAnBlog.com</title>	
	<style type="text/css">
	label {
		display: inline-block;
		width: 150px;
	}
	input[type="text"], input[type="password"] {
		display: inline-block;
		width: 200px;
	}
	label.error {
		display: inline-block;
		color:red;
		width: 200px;
	}
	</style>
	<!-- Load Thư viện jQuery vào trước khi load jQuery Validate-->
	<script src="plugins/jQuery/jQuery-2.2.0.min.js"></script>
	<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
</head>
<body>
	<form method="get" accept-charset="utf-8" style="width:600px;margin: 0px auto;" id="formDemo">
		<fieldset>
			<legend>Demo jQuery Validate - ThienAnBlog.com</legend>
			<div>
				<label>Họ</label>
				<input name="ho" type="text" placeholder="Vui lòng nhập họ" required>
			</div>
			<div>
				<label>Tên</label>
				<input name="ten" type="text" placeholder="Vui lòng nhập tên" required>
			</div>
			<div>
				<label>Địa chỉ</label>
				<input name="diachi" type="text" placeholder="Vui lòng nhập địa chỉ" required>
			</div>
			<div>
				<label>Số điện thoại</label>
				<input name="sodienthoai" type="text" placeholder="Vui lòng nhập số điện thoại" required>
			</div>
			<div>
				<label>Email</label>
				<input name="email" type="text" placeholder="Vui lòng nhập Email" required>
			</div>
			<div>
				<label>Mật khẩu</label>
				<input id="password" name="password" type="password" placeholder="Vui lòng nhập Password" required>
			</div>
			<div>
				<label>Nhập lại mật khẩu</label>
				<input name="confirm_password" type="password" placeholder="Vui lòng nhập lại Password" required>
			</div>
			<div>
				<label>Điều khoản</label>
				<input name="dieukhoan" type="checkbox">
			</div>
			<div>
				<label>Thông tin thêm</label>
				<input name="thongtinthem" type="text" placeholder="Tùy chọn...">
			</div>
			<button type="submit">Gửi</button>
		</fieldset>
	</form>
	<script type="text/javascript">

	$(document).ready(function() {

		//Khi bàn phím được nhấn và thả ra thì sẽ chạy phương thức này
		$("#formDemo").validate({
					rules: {
						ho: "required",
						ten: "required",
						diachi: {
							required: true,
							minlength: 2
						},
						sodienthoai: {
							required: true,
							minlength: 5
						},
						password: {
							required: true,
							minlength: 5
						},
						confirm_password: {
							required: true,
							minlength: 5,
							equalTo: "#password"
						},
						email: {
							required: true,
							email: true
						},
						dieukhoan: "required"
					},
					messages: {
						ho: "Vui lòng nhập họ",
						ten: "Vui lòng nhập tên",
						diachi: {
							required: "Vui lòng nhập địa chỉ",
							minlength: "Địa chỉ ngắn vậy, chém gió ah?"
						},
						sodienthoai: {
							required: "Vui lòng nhập số điện thoại",
							minlength: "Số máy quý khách vừa nhập là số không có thực"
						},
						password: {
							required: 'Vui lòng nhập mật khẩu',
							minlength: 'Vui lòng nhập ít nhất 5 kí tự'
						},
						confirm_password: {
							required: 'Vui lòng nhập mật khẩu',
							minlength: 'Vui lòng nhập ít nhất 5 kí tự',
							equalTo: 'Mật khẩu không trùng'
						},
						email: {
							required: "Please provide a password",
							minlength: "Your password must be at least 5 characters long",
							equalTo: "Please enter the same password as above"
						},
						email: "Vui lòng nhập Email",
						agree: "Vui lòng đồng ý các điều khoản"
					}
				});
	});
	</script>
</body>
</html>