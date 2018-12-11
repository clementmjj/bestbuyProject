<%@include file="Header.jsp"%>
<html>
<head>
<title>Manage Categories</title>
</head>
<body class="bg-light">
	<div class="container-fluid" id="body-container">
		<div class="modal fade" id="myModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h3 class="modal-title">Add Category</h3>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<form action="<c:url value="/addCategory"/>" method="post">
							<div class="row">
								<div class="col">
									<p>Category Name</p>
								</div>
								<div class="col">
									<input type="text" id="categoryName" name="categoryName"
										class="form-control" />
								</div>
							</div>
							<div class="row">
								<div class="col">
									<p>Category Desc</p>
								</div>
								<div class="col">
									<input type="text" id="categoryDesc" name="categoryDesc"
										class="form-control" />
								</div>
							</div>
							<div class="row">
								<div class="col">
									<input type="submit" value="Add"
										class="form-control btn btn-success" />
								</div>
							</div>
						</form>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
					</div>
				</div>
			</div>
		</div>

		<div class="d-flex justify-content-between">
			<div>
				<h3>Category list</h3>
			</div>
			<div>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal">
					<i class="fa fa-plus"></i> Add Category
				</button>
			</div>
		</div>
		<div class="table-responsive-sm">
			<table class="table table-hover">
				<thead class="thead-light">
					<tr>
						<th>Category ID</th>
						<th>Category Name</th>
						<th>Category Desc</th>
						<th>Operations</th>
					</tr>
				</thead>

				<c:forEach items="${categoryList}" var="category">
					<tr>
						<td>${category.categoryId}</td>
						<td>${category.categoryName}</td>
						<td>${category.categoryDesc}</td>
						<td><a class="link-default"
							href="<c:url value="/editCategory/${category.categoryId}"/>"><i
								data-toggle="tooltip" title="Edit" class="fa fa-pencil"></i></a> | <a class="link-default"
							href="<c:url value="/deleteCategory/${category.categoryId}"/>"><i
								data-toggle="tooltip" title="Delete" class="fa fa-trash-o"></i></a>
						</td>
					</tr>
				</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>
<%@include file="Footer.jsp"%>