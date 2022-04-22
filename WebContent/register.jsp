<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<title>注册</title>
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

	<div class="register_form" style="margin-top: 50px;">
		<form name ="zhuce" method = "post" action="register_dealwith.jsp" style="margin-left: 720px; margin-right: 720px;text-align: center">
			<div class="form-group">
				<label>姓名</label>
				<input type="text"  name = "username" class="form-control" placeholder="请输入姓名">
			</div>
			<div class="form-group">
				<label>密码</label>
				<input type="text" name="password" class="form-control" placeholder="请输入密码">
			</div>
			<div class="form-group">
				<label>学号</label>
				<input type="text" name="xuehao" class="form-control" placeholder="请输入学号">
			</div>
			<div class="form-group">
				<label>年级</label>
				<select type="text" name="nianji" class="form-control">
					<option value="大一">大一</option>
					<option value="大二">大二</option>
					<option value="大三">大三</option>
					<option value="大四">大四</option>
				</select>
			</div>
			<div class="form-group">
				<label>英文名</label>
				<input type="text" name="username1" class="form-control" placeholder="请输入你的英文名">
			</div>
			<div class="form-group">
				<input type="submit" name = "submit" value = "注册">
				<input type="reset" name = "reset" value = "重置">
			</div>
		</form>
	</div>

		<!--友情链接&版权信息-->
	<div id = "linker" align="center">
		<a href="https://www.jlu.edu.cn" target="_blank">吉林大学</a>&nbsp;&nbsp;&nbsp;
		<a href="https://https://csw.jlu.edu.cn" target="_blank">软件学院</a>&nbsp;&nbsp;&nbsp;
		<a href="https://github.com/Lwon2001?tab=repositories" target="_blank">个人GitHub</a>&nbsp;&nbsp;&nbsp;
		<br>
	</div>

</body>
</html>