<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>国学经典</title>
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
		a{
			text-decoration: none;
			color: #000;
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
		<li>
			<a href="index.jsp">首页</a>
		</li>
		<li>
			<a href="page1_GX.jsp">国学经典</a>
		</li>
		<li>
			<a href="page2_ZY.jsp">专业书籍</a>
		</li>
		<li class="active">
			<a href="page3_WL.jsp">网络文学</a>
		</li>
	</ul>
</div>
<div class = "table">
	<table>
		<tr>
			<th>编号</th>
			<th>书名</th>
			<th>出版社</th>
			<th>类型</th>
			<th>简介</th>
		</tr>
		<%
			Connection con1 = ConnDB.getConnection();
			String sql1 = "SELECT * FROM book_info WHERE book_class='网络文学'";
			ResultSet re = ConnDB.executeQuery(sql1, con1);
			int n = 0;
			while(re.next()){
				//如果结果集不空，则输出信息
				n++;
		%>
		<tr>
			<td>
				<div align="center"><%=n%></div>
			</td>
			<td>
				<div align="center"><%=re.getString("bname") %></div>
			</td>
			<td>
				<div align="center"><%=re.getString("chubanshe") %></div>
			</td>
			<td>
				<div align="center"><%=re.getString("book_class") %></div>
			</td>
			<td>
				<div align="center"><%=re.getString("jianjie") %></div>
			</td>
			<td>
		</tr>
		<%
			}
			ConnDB.close();
		%>
	</table>
</div>
</body>
</html>