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
													style="width: 205px;">ID Number</th>
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
												<td class="action"><button type="button"
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
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Modal Header</h4>
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
											placeholder="Enter email">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">Password</label> <input
											type="password" class="form-control"
											id="exampleInputPassword1" placeholder="Password">
									</div>
									<div class="form-group">
										<div class="radio">
										<label for="exampleInputPassword1">Role</label>
											<label radio-inline> <input type="radio" name="optionsRadios"
												id="optionsRadios1" value="option1" checked="">
												
											</label>
										</div>
										<div class="radio">
											<label radio-inline> <input type="radio" name="optionsRadios"
												id="optionsRadios2" value="option2"> Option two can
												be something else and selecting it will deselect option one
											</label>
										</div radio-inline>
										<div class="radio">
											<label> <input type="radio" name="optionsRadios"
												id="optionsRadios3" value="option3" disabled="">
												Option three is disabled
											</label>
										</div>
									</div>
									<div class="form-group">
										<label for="exampleInputFile">File input</label> <input
											type="file" id="exampleInputFile">

										<p class="help-block">Example block-level help text here.</p>
									</div>
									<div class="checkbox">
										<label> <input type="checkbox"> Check me out
										</label>
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
	})
</script>
<jsp:include page="footer.jsp"></jsp:include>