
<!doctype html>
<%@ include file="/WEB-INF/views/include.jsp"%>
<html class="no-js" lang="">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>:: DACE ::</title>
<base
	href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">

<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="resources/adminlte/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="resources/adminlte/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="resources/adminlte/bower_components/Ionicons/css/ionicons.min.css">
	
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- jvectormap -->
<link rel="stylesheet"
	href="resources/adminlte/bower_components/jvectormap/jquery-jvectormap.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="resources/adminlte/dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="resources/adminlte/dist/css/skins/_all-skins.min.css">


</head>
<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
		<header class="main-header">
			<nav class="navbar navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<a href="dashboard.htm" class="navbar-brand">
							<img alt="" src="resources/app/clg.jpg">
						</a>
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse" data-target="#navbar-collapse">
							<i class="fa fa-bars"></i>
						</button>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse pull-left"
						id="navbar-collapse">
						<ul class="nav navbar-nav">
<!-- 							<li class="active"><a href="#">Link <span -->
<!-- 									class="sr-only">(current)</span></a></li> -->
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Create <span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu">
									<li><a href="allusers.htm"><i class="fa fa-user"></i> User</a></li>
									<li class="divider"></li>
									<li><a href="addDepartment.htm"><i class="fa fa-cog"></i> Department</a></li>
									<li class="divider"></li>
									<li><a href="addCourse.htm"><i class="fa fa-cogs"></i> Course</a></li>
								</ul></li>
								<li><a href="attendance.htm">Attendance</a></li>
								<li><a href="reportsearch.htm">Report</a></li>
						</ul>
<!-- 						<form class="navbar-form navbar-left" role="search"> -->
<!-- 							<div class="form-group"> -->
<!-- 								<input type="text" class="form-control" id="navbar-search-input" -->
<!-- 									placeholder="Search"> -->
<!-- 							</div> -->
<!-- 						</form> -->
					</div>
					<!-- /.navbar-collapse -->
					<!-- Navbar Right Menu -->
					<div class="navbar-custom-menu">
						<ul class="nav navbar-nav">
							<!-- Messages: style can be found in dropdown.less-->
							<li class="dropdown messages-menu">
								<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-envelope-o"></i> <span
									class="label label-success">4</span>
							</a>
								<ul class="dropdown-menu">
									<li class="header">You have 4 messages</li>
									<li>
										<!-- inner menu: contains the messages -->
										<ul class="menu">
											<li>
												<!-- start message --> <a href="#">
													<div class="pull-left">
														<!-- User Image -->
														<img src="resources/adminlte/dist/img/avatar5.png"
															class="img-circle" alt="User Image">
													</div> <!-- Message title and timestamp -->
													<h4>
														Support Team <small><i class="fa fa-clock-o"></i>
															5 mins</small>
													</h4> <!-- The message -->
													<p>Why not buy a new awesome theme?</p>
											</a>
											</li>
											<!-- end message -->
										</ul> <!-- /.menu -->
									</li>
									<li class="footer"><a href="#">See All Messages</a></li>
								</ul>
							</li>
							<!-- /.messages-menu -->

							<!-- Notifications Menu -->
							<li class="dropdown notifications-menu">
								<!-- Menu toggle button --> <a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-bell-o"></i> <span
									class="label label-warning">10</span>
							</a>
								<ul class="dropdown-menu">
									<li class="header">You have 10 notifications</li>
									<li>
										<!-- Inner Menu: contains the notifications -->
										<ul class="menu">
											<li>
												<!-- start notification --> <a href="#"> <i
													class="fa fa-users text-aqua"></i> 5 new members joined
													today
											</a>
											</li>
											<!-- end notification -->
										</ul>
									</li>
									<li class="footer"><a href="#">View all</a></li>
								</ul>
							</li>
							<!-- Tasks Menu -->
							<li class="dropdown tasks-menu">
								<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <i class="fa fa-flag-o"></i> <span
									class="label label-danger">9</span>
							</a>
								<ul class="dropdown-menu">
									<li class="header">You have 9 tasks</li>
									<li>
										<!-- Inner menu: contains the tasks -->
										<ul class="menu">
											<li>
												<!-- Task item --> <a href="#"> <!-- Task title and progress text -->
													<h3>
														Design some buttons <small class="pull-right">20%</small>
													</h3> <!-- The progress bar -->
													<div class="progress xs">
														<!-- Change the css width attribute to simulate progress -->
														<div class="progress-bar progress-bar-aqua"
															style="width: 20%" role="progressbar" aria-valuenow="20"
															aria-valuemin="0" aria-valuemax="100">
															<span class="sr-only">20% Complete</span>
														</div>
													</div>
											</a>
											</li>
											<!-- end task item -->
										</ul>
									</li>
									<li class="footer"><a href="#">View all tasks</a></li>
								</ul>
							</li>
							<!-- User Account Menu -->
							<li class="dropdown user user-menu">
								<!-- Menu Toggle Button --> <a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <!-- The user image in the navbar-->
									<img src="resources/adminlte/dist/img/avatar5.png" class="user-image"
									alt="User Image"> <!-- hidden-xs hides the username on small devices so only the image appears. -->
									<span class="hidden-xs">User Name</span>
							</a>
								<ul class="dropdown-menu">
									<!-- The user image in the menu -->
									<li class="user-header"><img
										src="resources/adminlte/dist/img/avatar5.png" class="img-circle"
										alt="User Image">

										<p>
											User Name
										</p></li>
									<!-- Menu Body -->
<!-- 									<li class="user-body"> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-xs-4 text-center"> -->
<!-- 												<a href="#">Followers</a> -->
<!-- 											</div> -->
<!-- 											<div class="col-xs-4 text-center"> -->
<!-- 												<a href="#">Sales</a> -->
<!-- 											</div> -->
<!-- 											<div class="col-xs-4 text-center"> -->
<!-- 												<a href="#">Friends</a> -->
<!-- 											</div> -->
<!-- 										</div> /.row -->
<!-- 									</li> -->
									<!-- Menu Footer-->
									<li class="user-footer">
										<div class="pull-left">
											<a href="dashboard.htm" class="btn btn-default btn-flat">Profile</a>
										</div>
										<div class="pull-right">
											<a href="j_spring_security_logout" class="btn btn-default btn-flat">Sign out</a>
										</div>
									</li>
								</ul>
							</li>
						</ul>
					</div>
					<!-- /.navbar-custom-menu -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</header>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Main content -->
			<tiles:insertAttribute name="body" />
		</div>
		<!-- /.content-wrapper -->
		<!-- Starts Web Page Footer -->
		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 0.0.1
			</div>
			<strong> Copyright (c) 2018 </strong> All rights reserved.
		</footer>
	</div>

	<!-- jQuery 3 -->
	<script src="resources/adminlte/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="resources/adminlte/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- SlimScroll -->
	<script src="resources/adminlte/bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="resources/adminlte/bower_components/fastclick/lib/fastclick.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- AdminLTE App -->
	<script src="resources/adminlte/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="resources/adminlte/dist/js/demo.js"></script>	
	
	<script>
	$( function() {
	    $( "#datepicker" ).datepicker();
	    $("#datepicker").datepicker( "setDate" , new Date());
	  } );
	</script>

</body>
</html>