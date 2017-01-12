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

<title>GitLabEdu</title>
</head>
<body>
	<div class="container">
		<div>
			<div class="login-panel panel panel-default">
				<div class="panel-heading">
					<h3>GitLabEdu</h3>
					<a href="ListUsers.jsp">所有使用者</a>
					<a href="NewProject.jsp">新增作業</a>
				</div>

				<div class="panel-body">
					<div class="form-group">
						<form action="webapi/user/upload" method="post"
							enctype="multipart/form-data">
							<h4>上傳學生名單</h4>
							Select File to Upload:<input type="file" name="file">
							<br> <input type="submit" value="Upload">
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>