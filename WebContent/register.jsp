<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<title>ע��</title>
	<script src="https://cdn.bootcss.com/jquery/3.4.1/jquery.js" type=""></script>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" type=""></script>
	<link href="./css/homepage.css" rel="stylesheet" type="text/css">
</head>

<body style="background: linear-gradient(to right, #5433ff, #20bdff, #a5fecb);">
<!--������-->
	<div class="guide_line">
		<div class="logo">
			<h3>ͼ�����ϵͳ</h3>
		</div>
		<ul>
			<li>
				<a href="index.jsp">��ҳ</a>
			</li>
			<li>
				<a href="page1_GX.jsp">��ѧ����</a>
			</li>
			<li>
				<a href="page2_ZY.jsp">רҵ�鼮</a>
			</li>
			<li>
				<a href="page3_WL.jsp">������ѧ</a>
			</li>
		</ul>
	</div>

	<div class="register_form" style="margin-top: 50px;">
		<form name ="zhuce" method = "post" action="register_dealwith.jsp" style="margin-left: 720px; margin-right: 720px;text-align: center">
			<div class="form-group">
				<label>����</label>
				<input type="text"  name = "username" class="form-control" placeholder="����������">
			</div>
			<div class="form-group">
				<label>����</label>
				<input type="text" name="password" class="form-control" placeholder="����������">
			</div>
			<div class="form-group">
				<label>ѧ��</label>
				<input type="text" name="xuehao" class="form-control" placeholder="������ѧ��">
			</div>
			<div class="form-group">
				<label>�꼶</label>
				<select type="text" name="nianji" class="form-control">
					<option value="��һ">��һ</option>
					<option value="���">���</option>
					<option value="����">����</option>
					<option value="����">����</option>
				</select>
			</div>
			<div class="form-group">
				<label>Ӣ����</label>
				<input type="text" name="username1" class="form-control" placeholder="���������Ӣ����">
			</div>
			<div class="form-group">
				<input type="submit" name = "submit" value = "ע��">
				<input type="reset" name = "reset" value = "����">
			</div>
		</form>
	</div>

		<!--��������&��Ȩ��Ϣ-->
	<div id = "linker" align="center">
		<a href="https://www.jlu.edu.cn" target="_blank">���ִ�ѧ</a>&nbsp;&nbsp;&nbsp;
		<a href="https://https://csw.jlu.edu.cn" target="_blank">���ѧԺ</a>&nbsp;&nbsp;&nbsp;
		<a href="https://github.com/Lwon2001?tab=repositories" target="_blank">����GitHub</a>&nbsp;&nbsp;&nbsp;
		<br>
	</div>

</body>
</html>