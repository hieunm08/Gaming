<%@page import="entities.TypeService"%>
<%@page import="dao.TypeServiceDAOImpl"%>
<%@page import="dao.TypeServiceDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="entities.Room"%>
<%@page import="dao.RoomDAOImpl"%>
<%@page import="dao.RoomDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	TypeServiceDAO typeServiceDAO = new TypeServiceDAOImpl();
	List<TypeService> listTypeService= new ArrayList<>();
	listTypeService = typeServiceDAO.getAll();
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
			Service Room <small>advanced tables</small>
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
							<h3 class="box-title">TypeService Table</h3>
						</div>
						<div class="col-xs-1">
							<a href="typeService_manager.jsp?action=create"><button type="button"
									class="btn btn-primary top_button">Add Serivce</button></a>
						</div>
					</div>
					<!-- end header -->
					
					<div class="col-xs-2">
						
					</div>
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
													aria-label="CSS grade: activate to sort column ascending"
													style="width: 102px;">Action</th>
											</tr>
										</thead>
										<tbody>
											<%
												int i = 1;
												for (TypeService typeService : listTypeService) {
											%>
											<tr role="row" class="odd">
												<td><%=i%></td>
												<td class="sorting_1"><%= typeService.getId_type()%></td>
												<td><%= typeService.getName_type()%></td>
												<td></td>
												<td><a
													href="typeService_manager.jsp?action=edit&id_type=<%=typeService.getId_type()%>"><button
															type="button" class="btn btn-info" style="padding: 5px;">Edit</button></a>
													<a
													href="typeService_manager.jsp?action=delete&id_type=<%=typeService.getId_type()%>"><button
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
									action="${pageContext.request.contextPath}/TypeServiceManager"
									method="POST">
									<div class="form-group">
										<label>ID</label> <input class="form-control"
											placeholder="Enter text" name="id_typeid_type"
											value="<%=request.getParameter("id_type")%>" disabled>
									</div>
									<div class="form-group">
										<label>Loại Service</label> <input class="form-control"
											placeholder="Enter text" name="name_type">
									</div>
									<input type="hidden" name="id_type"
										value="<%=request.getParameter("id_type")%>">
									<button type="submit" class="btn btn-success" name="action"
										value="update">Update</button>
									<button type="reset" class="btn btn-default">Reset</button>
								</form>

								<%
									} else if(action.equals("create")) {
								%>

								<!-- form create -->
								<form role="form"
									action="${pageContext.request.contextPath}/TypeServiceManager"
									method="POST">
							
									<div class="form-group">
										<label>Loại Service</label> <input class="form-control"
											placeholder="Enter text" name="name_type">
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
	$(function() {
		$('#example1').DataTable()
		$('#example2').DataTable({
			'paging' : true,
			'lengthChange' : false,
			'searching' : true,
			'ordering' : true,
			'info' : true,
			'autoWidth' : false
		})
	})
</script>
<jsp:include page="footer.jsp"></jsp:include>