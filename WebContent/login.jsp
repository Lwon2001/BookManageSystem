<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>登陆</title>
	<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js" type=""></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" type=""></script>
	<link href="./css/homepage.css" rel="stylesheet" type="text/css">
</head>
<body style="background: linear-gradient(to right, #5433ff, #20bdff, #a5fecb);">
	<!--导航栏-->
	<div class="guide_line">
		<div class="logo">
			<h3>图书管理系统</h3>
		</div>
		<ul>
			<li>
				<a href="index.jsp">首页</a>
			</li>
			<li>
				<a href="page1_GX.jsp">国学经典</a>
			</li>
			<li>
				<a href="page2_ZY.jsp">专业书籍</a>
			</li>
			<li>
				<a href="page3_WL.jsp">网络文学</a>
			</li>
		</ul>
	</div>
	<!-- 登陆表单 -->
	<div class="login_form" style="margin-top: 200px;">
		<form name ="zhuce" method = "post" action="login_dealwith.jsp" style="margin-left: 720px; margin-right: 720px;text-align: center">
			<div class="form-group">
				<label>姓名</label>
				<input type="text"  name = "username" class="form-control" placeholder="请输入姓名">
			</div>
			<div class="form-group">
				<label>密码</label>
				<input type="text" name="password" class="form-control" placeholder="请输入密码">
			</div>
			<div class="form-group">
				<input type="submit" name = "login" value = "登陆">
			</div>
		</form>
	</div>


	<!--友情链接&版权信息-->
	<div id = "linker" align="center" style="margin-top: 400px">
		<a href="https://www.jlu.edu.cn" target="_blank">吉林大学</a>
		<a href="https://https://csw.jlu.edu.cn" target="_blank">软件学院</a>
		<a href="https://github.com/Lwon2001?tab=repositories" target="_blank">个人GitHub</a>
		<br>
	</div>
</body>
</html>