<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>book_manager</title>
</head>

<body>

	<form action="add_user_dealwith.jsp" method="post">
		<table border="0" align="left" cellspacing="20">
			<tr>
				<td>
					姓名：
				</td>
				<td>
					<input name = "username" type="text">
				</td>
			</tr>
			<tr>
				<td>
					密码：
				</td>
				<td>
					<input name = "password" type="text">
				</td>
			</tr>
			<tr>
				<td>
					学号：
				</td>
				<td>
					<input name = "xuehao" type="text">
				</td>
			</tr>
			<tr>
			<tr>
				<td>
					年级：
				</td>
				<td>
					<select type="text" name="nianji">
						<option value="大一">大一</option>
						<option value="大二">大二</option>
						<option value="大三">大三</option>
						<option value="大四">大四</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					英文名：
				</td>
				<td>
					<input name = "username1" type="text">
				</td>
			</tr>
			
			<tr>
				<td>
					<input name ="submit" type="submit" value="提交">
				</td>
				<td>
					<input name ="reset" type="reset" value="重置">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>