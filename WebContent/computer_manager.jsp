<%@page import="java.util.List"%>
<%@page import="entities.Computer"%>
<%@page import="entities.Room"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ComputerDAOImpl"%>
<%@page import="dao.ComputerDAO"%>
<%@page import="dao.RoomDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	ComputerDAOImpl computerDAOImpl = new ComputerDAOImpl();
	RoomDAOImpl roomDAOImpl = new RoomDAOImpl();

	List<Computer> computers = new ArrayList<>();
	List<Room> rooms = new ArrayList<>();
	rooms = roomDAOImpl.getAll();
	computers = computerDAOImpl.getAll();
	String action = "";
	if (request.getParameter("action") != null) {
		action = request.getParameter("action");
	}
%>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="navigation.jsp"></jsp:include>
<div class="content-wrapper" style="min-height: 901px;">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			Data Tables <small>advanced tables</small>
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


			<br>
		</div>
		<div class="row">
			<div class="col-xs-12">
				<div class="box">
					<div class="box-header">
						<div class="col-xs-10" style="padding-left: 0px;">
							<h3 class="box-title">COMPUTER MANAGER</h3>
						</div>
						<div class="col-xs-2">
							<a href="computer_manager.jsp?action=create"><button
									type="button" class="btn btn-primary top_button">Add
									Comtuter</button></a>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div id="exemple2_wrapper"
							class="dataTables_wrapper form-inline dt-bootstrap">
							<div class="row">
								<div class="col-sm-6"></div>
								<div class="col-sm-6"></div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<table id="exemple2"
										class="table table-bordered table-hover dataTable" role="grid"
										aria-describedby="example2_info">
										<thead>
											<tr role="row">
												<th class="sorting" tabindex="0" aria-controls="exemple2"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending">STT</th>
												<th class="sorting_asc" tabindex="0"
													aria-controls="exemple2" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column descending">Id
													Number</th>
												<th class="sorting" tabindex="0" aria-controls="exemple2"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending">Code
													Computer</th>
												<th class="sorting" tabindex="0" aria-controls="exemple2"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending">StatusComputerId</th>
												<th class="sorting" tabindex="0" aria-controls="exemple2"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending">roomID</th>
												<th class="sorting" tabindex="0" aria-controls="exemple1"
													rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending">Action</th>
											</tr>
										</thead>
										<tbody>
											<%
												int i = 1;
												for (Computer computer : computers) {
											%>
											<tr role="row" class="odd">
												<td class="sorting_1"><%=i%></td>
												<td><%=computer.getComputerId()%></td>
												<td><%=computer.getCodeComputer()%></td>
												<td><%=computer.getStatusComputerId()%></td>
												<td><%=computer.getId_room()%></td>
												<td>
												<a href="computer_manager.jsp?action=edit&computerId=<%=computer.getComputerId()%>"><button type="button" class="btn btn-info" style="padding: 5px;">Edit</button></a>
												<a href="computer_manager.jsp?action=delete&computerId=<%=computer.getComputerId()%>"><button type="button" class="btn btn-danger"
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
							<div class="row">
								<div class="col-sm-5">
									<div class="dataTables_info" id="exemple1_info" role="status"
										aria-live="polite">Showing 1 to 10 of 57 entries</div>
								</div>
								<div class="col-sm-7">
									<div class="dataTables_paginate paging_simple_numbers"
										id="exemple1_paginate">
										<ul class="pagination">
											<li class="paginate_button previous disabled"
												id="exemple1_previous"><a href="#"
												aria-controls="exemple1" data-dt-idx="0" tabindex="0">Previous</a></li>
											<li class="paginate_button active"><a href="#"
												aria-controls="exemple1" data-dt-idx="1" tabindex="0">1</a></li>
											<li class="paginate_button "><a href="#"
												aria-controls="exemple1" data-dt-idx="2" tabindex="0">2</a></li>
											<li class="paginate_button "><a href="#"
												aria-controls="exemple1" data-dt-idx="3" tabindex="0">3</a></li>
											<li class="paginate_button "><a href="#"
												aria-controls="exemple1" data-dt-idx="4" tabindex="0">4</a></li>
											<li class="paginate_button "><a href="#"
												aria-controls="exemple1" data-dt-idx="5" tabindex="0">5</a></li>
											<li class="paginate_button "><a href="#"
												aria-controls="exemple1" data-dt-idx="6" tabindex="0">6</a></li>
											<li class="paginate_button next" id="exemple1_next"><a
												href="#" aria-controls="exemple1" data-dt-idx="7"
												tabindex="0">Next</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /.box-body -->
				</div>

			</div>
			<!-- /.col -->
		</div>
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
									action="${pageContext.request.contextPath}/ComputerManager"
									method="POST">
									<div class="form-group">
										<label>ID</label> <input class="form-control"
											placeholder="Enter text" name="computerId"
											value="<%=request.getParameter("computerId")%>" disabled>
									</div>
									<div class="form-group">
										<label>Code Computer</label> <input class="form-control"
											placeholder="Enter text" name="codeComputer">
									</div>
									<div class="form-group">
										<label>Status Computer</label> <input class="form-control"
											placeholder="Enter text" name="statusComputerId">
									</div>
									  <div class="form-group">
											<label>Danh mục</label> <select class="form-control"
												name="id_room">
				
												<% for(Room room : rooms) {%>
												<option value="<%=room.getId_room() %>"><%=room.getRoomName() %></option>
										 		<% } %>
											</select>
										</div>  
									<input type="hidden" name="computerId"
										value="<%=request.getParameter("computerId")%>">
									<button type="submit" class="btn btn-success" name="action"
										value="update">Update</button>
									<button type="reset" class="btn btn-default">Reset</button>
								</form>

								<%
									} else if(action.equals("create")) {
								%>

								<!-- form create -->
								<form role="form"
									action="${pageContext.request.contextPath}/ComputerManager"
									method="POST">

									<div class="form-group">
										<label>codeComputer</label> <input class="form-control"
											placeholder="Enter text" name="codeComputer">
									</div>
									<div class="form-group">
										<label>Status Computer</label> <input class="form-control"
											placeholder="Enter text" name="statusComputerId">
									</div>
									 <div class="form-group">
										<label>Room</label> <select class="form-control" name="id_room">
											<%
												for (Room room : rooms) {
											%>
											<option value="<%=room.getId_room()%>"><%=room.getRoomName()%></option>
											<%
												}
											%>
										</select>
									</div> 
									<button type="submit" class="btn btn-success" name="action"
										value="update">Update</button>
									<button type="reset" class="btn btn-default">Reset</button>
								</form>

								<%
									} else {}
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
