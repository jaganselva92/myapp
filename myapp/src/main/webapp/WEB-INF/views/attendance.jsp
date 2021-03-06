<%@ include file="/WEB-INF/views/include.jsp"%>
<c:if test="${not empty message }">
<div class="alert alert-success alert-dismissible">
   <button type="button" class="close" data-dismiss="alert" aria-hidden="true">�</button>
   <h4><i class="icon fa fa-check"></i> Alert!</h4>
   <c:out value="${message}" />
 </div>
</c:if>

<section class="content-header">
	<h1>Attendance</h1>
	<ol class="breadcrumb">
		<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
		<li class="active">Attendance</li>
	</ol>
</section>

<c:if test="${pagetype == 1}">
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<div class="">
					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">Search</h3>
						</div>
						<form:form action="addattendance.htm" method="post" modelAttribute="studentDetailVO">
							<div class="box-body">
								<div class="row">
									<div class="col-xs-4">
										<div class="form-group">
											<label>Department</label>
											<form:select class="form-control" path="departmentId">
												<c:forEach items="${departments}" var="dep">
													<option value="${dep.id}">${dep.name}</option>
												</c:forEach>
											</form:select>
										</div>
									</div>
									<div class="col-xs-4">
										<div class="form-group">
											<label>Course</label> 
											<form:select class="form-control" path="courseId">
												<c:forEach items="${courses}" var="cr">
													<option value="${cr.id}">${cr.name}</option>
												</c:forEach>
											</form:select>
										</div>
									</div>
									<div class="col-xs-4">
										<div class="form-group">
											<label>Period</label> 
											<form:select class="form-control" path="coursePeriod">
												<c:forEach items="${periods}" var="pd">
													<option value="${pd.id}">${pd.name}</option>
												</c:forEach>
											</form:select>
										</div>
									</div>
									<div class="col-xs-4">
										<div class="form-group">
											<label>Section</label> 
											<form:select class="form-control" path="courseSection">
												<c:forEach items="${sections}" var="sc">
													<option value="${sc.id}">${sc.name}</option>
												</c:forEach>
											</form:select>
										</div>
									</div>
								</div>
							</div>
							<div class="box-footer">
								<a href="#" class="btn btn-default">Cancel</a>
								<button type="submit" class="btn btn-success">Search</button>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</section>
</c:if>

<c:if test="${pagetype == 2}">
	<section class="content">
		<div class="row">
			<div class="col-md-12">
				<form:form action="saveattendance.htm" method="post" modelAttribute="attendanceVO">
					<div class="box box-info">
						<div class="box-header with-border">
							<h3 class="box-title">Students</h3>
						</div>
						<div class="box-body">
							<div>
								Date: <form:input type="text" id="datepicker" path="currentDate" required=""/> 
							</div>
							<table class="table table-striped">
								<thead>
									<tr>
										<th style="width: 10%">#</th>
										<th>User Name</th>
										<th>User Type</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${attendanceVO.absentDetailVOs}" var="abUser" varStatus="loop">
										<tr>
											<td>${loop.index + 1} <form:hidden path="absentDetailVOs[${loop.index}].absentDate" value="09/01/2018"/></td>
											<td>${abUser.userVO.firstName} <form:hidden path="absentDetailVOs[${loop.index}].userVO.firstName"/> </td>
											<td>${abUser.userVO.role} <form:hidden path="absentDetailVOs[${loop.index}].userVO.role"/></td>
											<td>
												<form:hidden path="absentDetailVOs[${loop.index}].userId" value="${abUser.userVO.id}"/>
												<form:hidden path="absentDetailVOs[${loop.index}].status" value="absent"/>
<%-- 												<form:select class="form-control input-sm" path="absentDetailVOs[${loop.index}].status"> --%>
<!-- 													<option value="">-- Select One --</option> -->
<!-- 													<option value="absent">Absent</option> -->
<!-- 													<option value="od">On Duty</option> -->
<%-- 												</form:select> --%>
												<form:checkbox path="absentDetailVOs[${loop.index}].absent" />
											</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
						<div class="box-footer">
							<a href="#" class="btn btn-default">Cancel</a>
							<button type="submit" class="btn btn-success">Update</button>
						</div> 
					</div>
				</form:form>
			</div>
		</div>
	</section>
</c:if>
