<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<!-- 最新編譯和最佳化的 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">

<!-- 選擇性佈景主題 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css">

<!-- 最新編譯和最佳化的 JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
<title>NewProject</title>
</head>
<body>
	<div class="container">
		<form class="form-signin" method="post" action="webapi/user/createProject">
			<div>
				<div class="login-panel panel panel-default">
					<div class="panel-heading">
						<h3>GitLabEdu</h3>
						<a href="ListUsers.jsp">所有使用者</a>
						<a href="NewProject.jsp">新增作業</a>
					</div>

					<div class="panel-body">
						<div class="form-group">
							<label for="Hw_Name">作業名稱:</label> 
							<input type="text" class="form-control" name="Hw_Name"> 
							
							<label for="eInputPassword">作業描述:</label>
							<input type="text" class="form-control" name="Hw_Description">
						</div>
						
						<div class="form-group">
							<button type="submit" class="btn btn-default btn-block">送出</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>