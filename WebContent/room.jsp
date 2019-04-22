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
	RoomDAO roomDAO = new RoomDAOImpl();
	TypeRoomDAO typeRoomDAO = new TypeRoomDAOImpl();
	List<Room> listRoom = new ArrayList<>();
	List<TypeRoom> listTypeRoom = new ArrayList<>();
	listTypeRoom = typeRoomDAO.getAll();
	listRoom = roomDAO.getAll();
	String action = "";
	if (request.getParameter("action") != null) {
		action = request.getParameter("action");
	}
%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<div class="content-wrapper" style="min-height: 916px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			ROOM Management <small>advanced tables</small>
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
							<h3 class="box-title">Room Table</h3>
						</div>
						<div class="col-xs-1">
							<a href="room.jsp?action=create"><button type="button"
									class="btn btn-primary top_button">Add Room</button></a>
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
													style="width: 182px;">Name</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending"
													style="width: 142px;">Price</th>

												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending"
													style="width: 142px;">Amount</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending"
													style="width: 142px;">status</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="Engine version: activate to sort column ascending"
													style="width: 142px;">Room Type</th>
												<th class="sorting" tabindex="0" aria-controls="example1"
													rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending"
													style="width: 102px;">Action</th>
											</tr>
										</thead>
										<tbody>
											<%
												int i = 1;
												for (Room room : listRoom) {
											%>
											<tr role="row" class="odd">
												<td><%=i%></td>
												<td class="sorting_1"><%=room.getId_room()%></td>
												<td><%=room.getRoomName()%></td>
												<td><%=room.getPrice()%></td>
												<td></td>
												<% if(room.getRoomStatus()==1){ %>
												<td><span class="label label-success">Active</span></td>
												<%}else{ %>
												<td><span class="label label-default">Inctive</span></td>
												<%} %>
												<% if(room.getTypeRoom()!=null){ %>
												<td><%=room.getTypeRoom().getNameRoom()%></td>
												<%}else{ %>
												<td></td>
												<%} %>
												<td><a
													href="room.jsp?action=edit&roomID=<%=room.getId_room()%>"><button
															type="button" class="btn btn-info" style="padding: 5px;">Edit</button></a>
													<a
													href="room.jsp?action=delete&roomID=<%=room.getId_room()%>"><button
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
		<!-- /.row -->
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Basic Form Elements</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-6">

								<!-- form edit -->

								<%
									if (action.equals("edit")) {
								%>

								<form role="form"
									action="${pageContext.request.contextPath}/managerRoom"
									method="POST">
									<div class="form-group">
										<label>ID</label> <input class="form-control"
											placeholder="Enter text" name="roomID"
											value="<%=request.getParameter("roomID")%>" disabled>
									</div>
									<div class="form-group">
										<label>Room Name</label> <input class="form-control"
											placeholder="Enter text" name="roomName">
									</div>
									<div class="form-group">
										<label>Price</label> <input class="form-control"
											placeholder="Enter text" name="price">
									</div>
									<div class="form-group">
										<label>Status</label> <select class="form-control" name = "status">
											<option value="1">Active</option>
											<option value="0">Inactive</option>
										</select>
									</div>
									<div class="form-group">
										<label>Room Type</label> <select class="form-control" name="typeRoomId">
										<% for(TypeRoom typeRoom : listTypeRoom){ %>
											<option value="<%=typeRoom.getTypeRoomId() %>"><%=typeRoom.getNameRoom() %></option>
											<%} %>
										</select>
									</div>
									<input type="hidden" name="roomID"
										value="<%=request.getParameter("roomID")%>">
									<button type="submit" class="btn btn-success" name="action"
										value="update">Update</button>
									<button type="reset" class="btn btn-default">Reset</button>
								</form>

								<%
									} else if (action.equals("create")) {
								%>

								<!-- form create -->
								<form role="form"
									action="${pageContext.request.contextPath}/managerRoom"
									method="POST">

									<div class="form-group">
										<label>Room Name</label> <input class="form-control"
											placeholder="Enter text" name="roomName">
									</div>
									<div class="form-group">
										<label>Price</label> <input class="form-control"
											placeholder="Enter text" name="price">
									</div>
									<div class="form-group">
										<label>Status</label> <select class="form-control" name="status">
											<option value="1">Active</option>
											<option value="0">Inactive</option>
										</select>
									</div>
									<div class="form-group">
										<label>Room Type</label> <select class="form-control" name="typeRoomId">
										<% for(TypeRoom typeRoom : listTypeRoom){ %>
											<option value="<%=typeRoom.getTypeRoomId() %>"><%=typeRoom.getNameRoom() %></option>
											<%} %>
										</select>
									</div>
									<button type="submit" class="btn btn-success" name="action"
										value="create">Create</button>
									<button type="reset" class="btn btn-default">Reset</button>
								</form>

								<%
									} else {
									}
								%>

							</div>
							<!-- /.col-lg-6 (nested) -->

							<!-- /.col-lg-6 (nested) -->
						</div>
						<!-- /.row (nested) -->
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
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