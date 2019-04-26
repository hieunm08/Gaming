
<%@page import="entities.Users"%>
<%
	Users user = null;
	if (session.getAttribute("user") != null) {
		user = (Users) session.getAttribute("user");
	}
%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>AdminLTE 2 | Dashboard</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.6 -->
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
<!-- iCheck -->
<link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
<!-- Morris chart -->
<link rel="stylesheet" href="plugins/morris/morris.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
<!-- DataTables -->
<link rel="stylesheet"
	href="bower_components/bootstrap-daterangepicker/daterangepicker.css">
<link rel="stylesheet"
	href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css">
<link rel="stylesheet"
	href="bower_components/datatables.net-bs/css/dataTables.bootstrap.min.css">
<link rel="stylesheet"
	href="bower_components/bootstrap-colorpicker/dist/css/bootstrap-colorpicker.min.css">
<link rel="stylesheet"
	href="plugins/timepicker/bootstrap-timepicker.min.css">
<!-- Date Picker -->
<link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
<!-- jQuery 3 -->
<script src="bower_components/jquery/dist/jquery.min.js"></script>
<!-- validate -->
<script type="text/javascript"
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>
<!-- Daterange picker -->
<link rel="stylesheet"
	href="plugins/daterangepicker/daterangepicker-bs3.css">
<!-- bootstrap wysihtml5 - text editor -->
<link rel="stylesheet"
	href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
<style type="text/css">
.jqstooltip {
	position: absolute;
	left: 0px;
	top: 0px;
	visibility: hidden;
	background: rgb(0, 0, 0) transparent;
	background-color: rgba(0, 0, 0, 0.6);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000,
		endColorstr=#99000000);
	-ms-filter:
		"progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
	color: white;
	font: 10px arial, san serif;
	text-align: left;
	white-space: nowrap;
	padding: 5px;
	border: 1px solid white;
	z-index: 10000;
}

.modal-full {
	min-width: 60%;
}

.jqsfield {
	color: white;
	font: 10px arial, san serif;
	text-align: left;
}

.error {
	color: red;
}

.avatarUser {
	padding: 5px;
	transition: transform .2s;
	border-radius: 0% !important;
	margin: 0 auto;
	width: 100px !important;
	height: auto !important;
}

.avatarUser:hover {
	-ms-transform: scale(2); /* IE 9 */
	-webkit-transform: scale(2); /* Safari 3-8 */
	transform: scale(2);
}

.action {
	display: inline-flex;
}
</style>
</head>
<body class="skin-blue sidebar-mini wysihtml5-supported">
	<div class="wrapper">
		<header class="main-header">
			<!-- Logo -->
			<a href="index2.html" class="logo"> <!-- mini logo for sidebar mini 50x50 pixels -->
				<span class="logo-mini"><b>A</b>LT</span> <!-- logo for regular state and mobile devices -->
				<span class="logo-lg"><b>Admin</b>LTE</span>
			</a>
			<!-- Header Navbar: style can be found in header.less -->
			<nav class="navbar navbar-static-top">
				<!-- Sidebar toggle button-->
				<a href="#" class="sidebar-toggle" data-toggle="offcanvas"
					role="button"> <span class="sr-only">Toggle navigation</span>
				</a>

				<div class="navbar-custom-menu">
					<ul class="nav navbar-nav">
						<!-- Messages: style can be found in dropdown.less-->
						<li class="dropdown messages-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-envelope-o"></i> <span class="label label-success">4</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 4 messages</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<div class="slimScrollDiv"
										style="position: relative; overflow: hidden; width: auto; height: 200px;">
										<ul class="menu"
											style="overflow: hidden; width: 100%; height: 200px;">
											<li>
												<!-- start message --> <a href="#">
													<div class="pull-left">
														<img src="dist/img/user2-160x160.jpg" class="img-circle"
															alt="User Image">
													</div>
													<h4>
														Support Team <small><i class="fa fa-clock-o"></i>
															5 mins</small>
													</h4>
													<p>Why not buy a new awesome theme?</p>
											</a>
											</li>
											<!-- end message -->
											<li><a href="#">
													<div class="pull-left">
														<img src="dist/img/user3-128x128.jpg" class="img-circle"
															alt="User Image">
													</div>
													<h4>
														AdminLTE Design Team <small><i
															class="fa fa-clock-o"></i> 2 hours</small>
													</h4>
													<p>Why not buy a new awesome theme?</p>
											</a></li>
											<li><a href="#">
													<div class="pull-left">
														<img src="dist/img/user4-128x128.jpg" class="img-circle"
															alt="User Image">
													</div>
													<h4>
														Developers <small><i class="fa fa-clock-o"></i>
															Today</small>
													</h4>
													<p>Why not buy a new awesome theme?</p>
											</a></li>
											<li><a href="#">
													<div class="pull-left">
														<img src="dist/img/user3-128x128.jpg" class="img-circle"
															alt="User Image">
													</div>
													<h4>
														Sales Department <small><i class="fa fa-clock-o"></i>
															Yesterday</small>
													</h4>
													<p>Why not buy a new awesome theme?</p>
											</a></li>
											<li><a href="#">
													<div class="pull-left">
														<img src="dist/img/user4-128x128.jpg" class="img-circle"
															alt="User Image">
													</div>
													<h4>
														Reviewers <small><i class="fa fa-clock-o"></i> 2
															days</small>
													</h4>
													<p>Why not buy a new awesome theme?</p>
											</a></li>
										</ul>
										<div class="slimScrollBar"
											style="background: rgb(0, 0, 0); width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
										<div class="slimScrollRail"
											style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
									</div>
								</li>
								<li class="footer"><a href="#">See All Messages</a></li>
							</ul></li>
						<!-- Notifications: style can be found in dropdown.less -->
						<li class="dropdown notifications-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-bell-o"></i> <span class="label label-warning">10</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 10 notifications</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<div class="slimScrollDiv"
										style="position: relative; overflow: hidden; width: auto; height: 200px;">
										<ul class="menu"
											style="overflow: hidden; width: 100%; height: 200px;">
											<li><a href="#"> <i class="fa fa-users text-aqua"></i>
													5 new members joined today
											</a></li>
											<li><a href="#"> <i
													class="fa fa-warning text-yellow"></i> Very long
													description here that may not fit into the page and may
													cause design problems
											</a></li>
											<li><a href="#"> <i class="fa fa-users text-red"></i>
													5 new members joined
											</a></li>
											<li><a href="#"> <i
													class="fa fa-shopping-cart text-green"></i> 25 sales made
											</a></li>
											<li><a href="#"> <i class="fa fa-user text-red"></i>
													You changed your username
											</a></li>
										</ul>
										<div class="slimScrollBar"
											style="background: rgb(0, 0, 0); width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
										<div class="slimScrollRail"
											style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
									</div>
								</li>
								<li class="footer"><a href="#">View all</a></li>
							</ul></li>
						<!-- Tasks: style can be found in dropdown.less -->
						<li class="dropdown tasks-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <i
								class="fa fa-flag-o"></i> <span class="label label-danger">9</span>
						</a>
							<ul class="dropdown-menu">
								<li class="header">You have 9 tasks</li>
								<li>
									<!-- inner menu: contains the actual data -->
									<div class="slimScrollDiv"
										style="position: relative; overflow: hidden; width: auto; height: 200px;">
										<ul class="menu"
											style="overflow: hidden; width: 100%; height: 200px;">
											<li>
												<!-- Task item --> <a href="#">
													<h3>
														Design some buttons <small class="pull-right">20%</small>
													</h3>
													<div class="progress xs">
														<div class="progress-bar progress-bar-aqua"
															style="width: 20%" role="progressbar" aria-valuenow="20"
															aria-valuemin="0" aria-valuemax="100">
															<span class="sr-only">20% Complete</span>
														</div>
													</div>
											</a>
											</li>
											<!-- end task item -->
											<li>
												<!-- Task item --> <a href="#">
													<h3>
														Create a nice theme <small class="pull-right">40%</small>
													</h3>
													<div class="progress xs">
														<div class="progress-bar progress-bar-green"
															style="width: 40%" role="progressbar" aria-valuenow="20"
															aria-valuemin="0" aria-valuemax="100">
															<span class="sr-only">40% Complete</span>
														</div>
													</div>
											</a>
											</li>
											<!-- end task item -->
											<li>
												<!-- Task item --> <a href="#">
													<h3>
														Some task I need to do <small class="pull-right">60%</small>
													</h3>
													<div class="progress xs">
														<div class="progress-bar progress-bar-red"
															style="width: 60%" role="progressbar" aria-valuenow="20"
															aria-valuemin="0" aria-valuemax="100">
															<span class="sr-only">60% Complete</span>
														</div>
													</div>
											</a>
											</li>
											<!-- end task item -->
											<li>
												<!-- Task item --> <a href="#">
													<h3>
														Make beautiful transitions <small class="pull-right">80%</small>
													</h3>
													<div class="progress xs">
														<div class="progress-bar progress-bar-yellow"
															style="width: 80%" role="progressbar" aria-valuenow="20"
															aria-valuemin="0" aria-valuemax="100">
															<span class="sr-only">80% Complete</span>
														</div>
													</div>
											</a>
											</li>
											<!-- end task item -->
										</ul>
										<div class="slimScrollBar"
											style="background: rgb(0, 0, 0); width: 3px; position: absolute; top: 0px; opacity: 0.4; display: block; border-radius: 7px; z-index: 99; right: 1px;"></div>
										<div class="slimScrollRail"
											style="width: 3px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
									</div>
								</li>
								<li class="footer"><a href="#">View all tasks</a></li>
							</ul></li>
						<!-- User Account: style can be found in dropdown.less -->
						<%
							if (user != null) {
						%>
						<li class="dropdown user user-menu"><a href="#"
							class="dropdown-toggle" data-toggle="dropdown"> <img
								src="<%=user.getAvatar()%>" class="user-image" alt="User Image">
								<span class="hidden-xs"><%=user.getName()%></span>
						</a>
							<ul class="dropdown-menu">
								<!-- User image -->
								<li class="user-header"><img src="<%=user.getAvatar()%>"
									class="img-circle" alt="User Image"> <!-- Menu Body -->
									<p>
										<%=user.getName() %> <small>Administrator</small>
									</p> <!-- Menu Footer-->
								<li class="user-footer">
									<div class="pull-left">
										<a href="#" class="btn btn-default btn-flat">Profile</a>
									</div>
									<div class="pull-right">
										<a href="logout" class="btn btn-default btn-flat">Sign out</a>
									</div>
								</li>
								<%
									}
								%>
							</ul></li>
						<!-- Control Sidebar Toggle Button -->
						<li><a href="#" data-toggle="control-sidebar"><i
								class="fa fa-gears"></i></a></li>
					</ul>
				</div>
			</nav>
		</header>