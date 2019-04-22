<%@page import="java.util.List"%>
<%@page import="entities.TypeRoom"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.TypeRoomDAOImpl"%>
<%@page import="dao.TypeRoomDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	TypeRoomDAO typeRoomDAO = new TypeRoomDAOImpl();
	List<TypeRoom> listTypeRoom = new ArrayList<>();
	listTypeRoom = typeRoomDAO.getAll();
	String action = "";
	if(request.getParameter("action")!=null){
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
						<div class="col-xs-11" style="padding-left: 0px;">
							<h3 class="box-title">Type Room Table</h3>
						</div>
						<div class="col-xs-1">
							<a href="typeRoom_manager.jsp?action=create"><button type="button"
									class="btn btn-primary top_button">Add TypeRoom</button></a>
						</div>
					</div>
					<!-- /.box-header -->
					<div class="box-body">
						<div id="example2_wrapper"
							class="dataTables_wrapper form-inline dt-bootstrap">
							<div class="row">
								<div class="col-sm-6"></div>
								<div class="col-sm-6"></div>
							</div>
							<div class="row">
								<div class="col-sm-12">
									<table id="example2"
										class="table table-bordered table-hover dataTable" role="grid"
										aria-describedby="example2_info">
										<thead>
											<tr role="row">
												<th class="sorting" tabindex="0" aria-controls="example2"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending">STT</th>
												<th class="sorting_asc" tabindex="0"
													aria-controls="example2" rowspan="1" colspan="1"
													aria-sort="ascending"
													aria-label="Rendering engine: activate to sort column descending">Id
													Number</th>
												<th class="sorting" tabindex="0" aria-controls="example2"
													rowspan="1" colspan="1"
													aria-label="Browser: activate to sort column ascending">Name</th>
												<th class="sorting" tabindex="0" aria-controls="example2"
													rowspan="1" colspan="1"
													aria-label="Platform(s): activate to sort column ascending">Note</th>
												<th class="sorting" tabindex="0" aria-controls="example2"
													rowspan="1" colspan="1"
													aria-label="CSS grade: activate to sort column ascending">Action</th>
											</tr>
										</thead>
										<tbody>
											<%
												int i = 1;
												for (TypeRoom typeRoom : listTypeRoom) {
											%>
											<tr role="row" class="odd">
												<td class="sorting_1"><%=i%></td>
												<td><%=typeRoom.getTypeRoomId()%></td>
												<td><%=typeRoom.getNameRoom()%></td>
												<td><%=typeRoom.getNote()%></td>
												<td>
												<a href="typeRoom_manager.jsp?action=edit&typeRoomID=<%=typeRoom.getTypeRoomId()%>"><button type="button" class="btn btn-info" style="padding: 5px;">Edit</button></a>
												<a href="typeRoom_manager.jsp?action=delete&typeRoomID=<%=typeRoom.getTypeRoomId()%>"><button type="button" class="btn btn-danger"
															style="padding: 5px;">Delete</button></a></td>
											</tr>
											<%
												i++;
												}
											%>
										</tbody>
										<!-- <tfoot>
											<tr>
												<th rowspan="1" colspan="1">STT</th>
												<th rowspan="1" colspan="1">Id Number</th>
												<th rowspan="1" colspan="1">Name</th>
												<th rowspan="1" colspan="1">Note</th>
												<th rowspan="1" colspan="1">Action</th>
											</tr>
										</tfoot> -->
									</table>
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
									action="${pageContext.request.contextPath}/managerTypeRoom"
									method="POST">
									<div class="form-group">
										<label>ID</label> <input class="form-control"
											placeholder="Enter text" name="typeRoomID"
											value="<%=request.getParameter("typeRoomID")%>" disabled>
									</div>
									<div class="form-group">
										<label>Loại phòng</label> <input class="form-control"
											placeholder="Enter text" name="typeRoomName">
									</div>
									<div class="form-group">
										<label>Mô tả</label>
										<textarea class="form-control" rows="3"
											name="note"></textarea>
									</div>
									<input type="hidden" name="typeRoomID"
										value="<%=request.getParameter("typeRoomID")%>">
									<button type="submit" class="btn btn-success" name="action"
										value="update">Update</button>
									<button type="reset" class="btn btn-default">Reset</button>
								</form>

								<%
									} else if(action.equals("create")) {
								%>

								<!-- form create -->
								<form role="form"
									action="${pageContext.request.contextPath}/managerTypeRoom"
									method="POST">
							
									<div class="form-group">
										<label>Loại phòng</label> <input class="form-control"
											placeholder="Enter text" name="typeRoomName">
									</div>
									<div class="form-group">
										<label>Mô tả</label>
										<textarea class="form-control" rows="3"
											name="note"></textarea>
									</div>
									<button type="submit" class="btn btn-success" name="action"
										value="create">Create</button>
									<button type="reset" class="btn btn-default">Reset</button>
								</form>

								<%
									}else{}
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
  $(function () {
    $('#example1').DataTable()
    $('#example2').DataTable({
      'paging'      : true,
      'lengthChange': false,
      'searching'   : false,
      'ordering'    : true,
      'info'        : true,
      'autoWidth'   : false
    })
  })
</script>
<jsp:include page="footer.jsp"></jsp:include>
