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
					������
				</td>
				<td>
					<input name = "username" type="text">
				</td>
			</tr>
			<tr>
				<td>
					���룺
				</td>
				<td>
					<input name = "password" type="text">
				</td>
			</tr>
			<tr>
				<td>
					ѧ�ţ�
				</td>
				<td>
					<input name = "xuehao" type="text">
				</td>
			</tr>
			<tr>
			<tr>
				<td>
					�꼶��
				</td>
				<td>
					<select type="text" name="nianji">
						<option value="��һ">��һ</option>
						<option value="���">���</option>
						<option value="����">����</option>
						<option value="����">����</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>
					Ӣ������
				</td>
				<td>
					<input name = "username1" type="text">
				</td>
			</tr>
			
			<tr>
				<td>
					<input name ="submit" type="submit" value="�ύ">
				</td>
				<td>
					<input name ="reset" type="reset" value="����">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>