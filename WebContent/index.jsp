<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>首页</title>
	<style type="text/css">
		table
		{
			border-collapse: collapse;
			margin: 0 auto;
			text-align: center;
			width: 90%;
		}
		table td, table th
		{
			border: 1px solid #cad9ea;
			color: #666;
			height: 30px;
		}
		table thead th
		{
			background-color: #CCE8EB;
			width: 100px;
		}
		table tr:nth-child(odd)
		{
			background: #fff;
		}
		table tr:nth-child(even)
		{
			background: #F5FAFA;
		}
	</style>
	<link href="css/homepage.css" rel="stylesheet" type="text/css" />
</head>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "com.mwxu16.dao.ConnDB"%>
<%
	Connection con = ConnDB.getConnection();
	String sql = "SELECT * FROM user_info WHERE is_logged='1'";
	ResultSet re1 = ConnDB.executeQuery(sql, con);
%>
<body style="background: linear-gradient(to right, #5433ff, #20bdff, #a5fecb);">
	<!--顶部信息-->
	<div class = "top">
		<div class = "top_right">
			<%
				if(re1.next())  //判断是否有用户登录
				{
			%>
			<a href="zhuxiao.jsp">注销</a>
			<%
				if(re1.getInt("status") == 1)
				{
			%>
			<a href="./admin/index.jsp" target="_blank">后台管理</a>
			<%
				}
			}
			else
			{
			%>
			<a href="register.jsp">注册</a>
			<a href="login.jsp">登录</a>
			<%
				}
			%>
		</div>
	</div>

	<!--导航栏-->
	<div class="guide_line">
		<div class="logo">
			<h3>图书管理系统</h3>
		</div>
		<ul>
			<li class="active">
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
	<div class="vidio_play" style="margin:auto; text-align: center">
		<video controls  style="height: 100%; width: 70%; text-align: center">
			<source src="image/FormatFactoryPart1.mp4" >
		</video>
	</div>
</body>
</html>