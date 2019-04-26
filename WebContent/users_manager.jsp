<%@page import="entities.Users"%>
<%@page import="dao.UserDAOImpl"%>
<%@page import="dao.UserDAO"%>
<%@page import="dao.TypeRoomDAOImpl"%>
<%@page import="dao.TypeRoomDAO"%>
<%@page import="entities.TypeRoom"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entities.Room"%>
<%@page import="dao.RoomDAOImpl"%>
<%@page import="dao.RoomDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	UserDAO userDAO = new UserDAOImpl();
	List<Users> listUser = new ArrayList<>();
	listUser = userDAO.getAll();
%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<div class="content-wrapper" style="min-height: 916px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			USERS Management <small>advanced tables</small>
		</h1>
		<ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li><a href="#">Tables</a></li>
			<li class="active">Data tables</li>
		</ol>
	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<div class="col-xs-12">


				<div class="box">
					<!-- Header content -->
					<div class="box-header">
						<div class="col-xs-11" style="padding-left: 0px;">
							<h3 class="box-title">Users Table</h3>
						</div>
						<div class="col-xs-1">
							<a href="room.jsp?action=create"><button type="button"
									class="btn btn-primary top_button">Add User</button></a>
						</div>
					</div>
					<!-- end header -->

					<div class="col-xs-2"></div>
					<!-- /.box-header -->
					<div class="box-body">
						<div id="example1_wrapper"
							class="dataTables_wrapper form-inline dt-bootstrap">

							<div class="row">
								<div class="col-sm-12">
									<table id="example1"
										class="table table-bordered table-striped dataTable"
										role="grid" aria-describedby="example1_info">
										<thead>
											<tr role="row">
												<th class="sorting_asc" tabindex="0"
													aria-controls="example1" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column descending"
													style="width: 166px;">STT</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending"
													style="width: 205px;">ID </th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">avatar</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">Username</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">Password</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">role</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">name</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">Phone</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">Email</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">gender</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">code</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">note</th>

												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">birthday</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending"
													style="width: 182px;">created_at</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending"
													style="width: 142px;">updated_at</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending">Action</th>
											</tr>
										</thead>
										<tbody>
											<%
												int i = 1;
												for (Users user : listUser) {
											%>
											<tr role="row" class="odd">
												<td><%=i%></td>
												<td class="sorting_1"><%=user.getId_user()%></td>
												<td><img alt="Avatar" class="avatarUser"
													src="<%=user.getAvatar()%>"></td>
												<td><%=user.getUsername()%></td>
												<td><%=user.getPassword()%></td>
												<td><%=user.getRole()%></td>
												<td><%=user.getName()%></td>
												<td><%=user.getPhone()%></td>
												<td><%=user.getEmail()%></td>
												<td><%=user.getGender()%></td>
												<td><%=user.getCode()%></td>
												<td><%=user.getNote()%></td>

												<td><%=user.getBirthday()%></td>
												<td><%=user.getCreated_at()%></td>
												<td><%=user.getUpdated_at()%></td>
												<td class="action">
												<button type="button" 
														class="btn btn-info" data-toggle="modal"
														data-target="#formEdit" style="padding: 5px;">Edit</button>
													</a> <a
													href="room.jsp?action=delete&roomID=<%=user.getId_user()%>"><button
															type="button" class="btn btn-danger"
															style="padding: 5px;">Delete</button></a></td>

											</tr>
											<%
												i++;
												}
											%>
										</tbody>

									</table>
								</div>
							</div>

						</div>
					</div>
					<!-- /.box-body -->
				</div>
				<!-- /.box -->
			</div>
			<!-- /.col -->
		</div>
		<!-- /.row -->
		
		<div id="formEdit" class="modal fade" role="dialog">
			<div class="modal-dialog modal-full">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Edit User Infomation</h4>
					</div>
					<div class="modal-body">
						<div class="box box-primary">
							<!-- /.box-header -->
							<!-- form start -->
							<form role="form">
								<div class="box-body">
									<div class="form-group">
										<label for="exampleInputEmail1">Username</label> <input
											type="email" class="form-control" id="exampleInputEmail1"
											placeholder="Enter email" name="username">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Password</label> <input
											type="password" class="form-control"
											id="exampleInputPassword1" placeholder="Password" name="password">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Role</label>
										<div class="radio">
											<label class="radio-inline"> <input type="radio"
												name="role" checked>Admin
											</label> <label class="radio-inline"> <input type="radio"
												name="role">Employee
											</label> <label class="radio-inline"> <input type="radio"
												name="role">Customer
											</label>

										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Name</label> <input
											type="password" class="form-control"
											id="exampleInputPassword1" placeholder="Password" name="name">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">Avatar</label> <input
											type="file" id="exampleInputFile" name="avatar">

										<p class="help-block">Example block-level help text here.</p>
									</div>
									<div class="form-group">
										<label>Date of birth:</label>

										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input type="text" class="form-control pull-right"
												id="datepicker" name = "birthday">
										</div>
										<!-- /.input group -->
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Phone</label> <input
											type="password" class="form-control"
											id="exampleInputPassword1" placeholder="Password" name="phone">
									</div>
									<div class="form-group">
										<label>Email:</label>
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-envelope"></i></span> <input type="email"
												class="form-control" placeholder="Email" name="email">
										</div>
									</div>
									<div class="form-group">
										<label>Phone:</label>

										<div class="input-group">
											<div class="input-group-addon">
												<i class="fa fa-phone"></i>
											</div>
											<input type="text" class="form-control"
												data-inputmask="&quot;mask&quot;: &quot;(999) 999-9999&quot;"
												data-mask="" name="phone">
										</div>
										<!-- /.input group -->
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Gender</label>
										<div class="radio">
											<label class="radio-inline"> <input type="radio"
												name="gender" checked>Male
											</label> <label class="radio-inline"> <input type="radio"
												name="gender">Female
											</label>

										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Code</label> <input
											type="password" class="form-control"
											id="exampleInputPassword1" placeholder="Password" name="code">
									</div>
									<div class="form-group">
										<label>Note</label>
										<textarea class="form-control" rows="3" name="note"
											placeholder="Enter ..."></textarea>
									</div>

				
								</div>
								<!-- /.box-body -->

								<div class="box-footer">
									<button type="submit" class="btn btn-primary">Submit</button>
								</div>
							</form>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
					</div>
				</div>

			</div>
		</div>
		<!-- /.row -->

	</section>
	<!-- /.content -->
</div>
<script>
	$(function() {
		$('#example1').DataTable()
		$('#example2').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : false,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
		})
	});
</script>
<script>
	$('#datepicker').datepicker({
		uiLibrary : 'bootstrap4'
	});
</script>
<script>
	$(function() {
		//Initialize Select2 Elements
		$('.select2').select2()

		//Datemask dd/mm/yyyy
		$('#datemask').inputmask('dd/mm/yyyy', {
			'placeholder' : 'dd/mm/yyyy'
		})
		//Datemask2 mm/dd/yyyy
		$('#datemask2').inputmask('mm/dd/yyyy', {
			'placeholder' : 'mm/dd/yyyy'
		})
		//Money Euro
		$('[data-mask]').inputmask()

		//Date range picker
		$('#reservation').daterangepicker()
		//Date range picker with time picker
		$('#reservationtime').daterangepicker({
			timePicker : true,
			timePickerIncrement : 30,
			format : 'MM/DD/YYYY h:mm A'
		})
		//Date range as a button
		$('#daterange-btn').daterangepicker(
				{
					ranges : {
						'Today' : [ moment(), moment() ],
						'Yesterday' : [ moment().subtract(1, 'days'),
								moment().subtract(1, 'days') ],
						'Last 7 Days' : [ moment().subtract(6, 'days'),
								moment() ],
						'Last 30 Days' : [ moment().subtract(29, 'days'),
								moment() ],
						'This Month' : [ moment().startOf('month'),
								moment().endOf('month') ],
						'Last Month' : [
								moment().subtract(1, 'month').startOf('month'),
								moment().subtract(1, 'month').endOf('month') ]
					},
					startDate : moment().subtract(29, 'days'),
					endDate : moment()
				},
				function(start, end) {
					$('#daterange-btn span').html(
							start.format('MMMM D, YYYY') + ' - '
									+ end.format('MMMM D, YYYY'))
				})

		//Date picker
		$('#datepicker').datepicker({
			autoclose : true
		})

		//iCheck for checkbox and radio inputs
		$('input[type="checkbox"].minimal, input[type="radio"].minimal')
				.iCheck({
					checkboxClass : 'icheckbox_minimal-blue',
					radioClass : 'iradio_minimal-blue'
				})
		//Red color scheme for iCheck
		$('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red')
				.iCheck({
					checkboxClass : 'icheckbox_minimal-red',
					radioClass : 'iradio_minimal-red'
				})
		//Flat red color scheme for iCheck
		$('input[type="checkbox"].flat-red, input[type="radio"].flat-red')
				.iCheck({
					checkboxClass : 'icheckbox_flat-green',
					radioClass : 'iradio_flat-green'
				})

		//Colorpicker
		$('.my-colorpicker1').colorpicker()
		//color picker with addon
		$('.my-colorpicker2').colorpicker()

		//Timepicker
		$('.timepicker').timepicker({
			showInputs : false
		})
	})
</script>

<jsp:include page="footer.jsp"></jsp:include>