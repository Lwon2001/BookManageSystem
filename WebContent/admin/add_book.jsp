<%@ page language="java" contentType="text/html; charset=gbk"
		 pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<title>book_manager</title>
</head>
	<link href="../css/admin_right.css" rel="stylesheet" type="text/css">
	<body>
		<form action="add_book_dealwith.jsp" method="post">
			<table border="0" align="left" cellspacing="20">
				<tr>
					<td>
						������
					</td>
					<td>
						<input name = "bname" type="text">
					</td>
				</tr>
				<tr>
					<td>
						�����磺
					</td>
					<td>
						<input name = "chubanshe" type="text">
					</td>
				</tr>
				<tr>
					<td>
						���ͣ�
					</td>
					<td>
						<select type="text" name="book_class">
							<option value="��ѧ����">��ѧ����</option>
							<option value="רҵ�鼮">רҵ�鼮</option>
							<option value="������ѧ">������ѧ</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						����(Ӣ��)��
					</td>
					<td>
						<input name = "bname1" type="text">
					</td>
				</tr>
				<tr>
					<td>
						��飺
					</td>
					<td>
						<textarea rows="10" cols="" name = "jianjie"></textarea>
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