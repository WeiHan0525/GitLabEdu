<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="utf-8"%>
<%@ page
	import="fcu.android.backend.connect.UserConn, 
				  org.gitlab.api.models.*, 
				  java.util.*"%>
<%
	UserConn conn = new UserConn();
	List<GitlabUser> users = new ArrayList<GitlabUser>();
	users = conn.getUsers();
	Collections.reverse(users);
%>
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
<title>ListUsers</title>
</head>
<body>

	<div class="container">
		<div class="login-panel panel panel-default">
			<div class="panel-heading">
				<h3>GitLabEdu</h3>
				<a href="ListUsers.jsp">所有使用者</a>
				<a href="index.jsp">回首頁</a>
				</div>

			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="row">

							<%
								for (GitlabUser user : users) {
							%>
							<div class="col-lg-5">
								<div class="panel panel-default panel-product">
									<div class="panel-body">
										<ul>
											<li>ID : <%=user.getId()%>
											<li>name : <%=user.getName()%>
											<li>userName: <%=user.getUsername()%>
											<li>email : <%=user.getEmail()%>
										</ul>
									</div>
								</div>
							</div>
							<%
								}
							%>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>