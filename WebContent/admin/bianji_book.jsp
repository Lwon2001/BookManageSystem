<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>book_manager</title>
</head>
<link href="../css/admin_right.css" rel="stylesheet" type="text/css">
<body  >

	<form action="add_book_dealwith.jsp" method="post">
		<table border="0" align="left" cellspacing="20">
		<% 
			request.setCharacterEncoding("GBK"); 
			String bname = request.getParameter("bname");
			String chubanshe = request.getParameter("chubanshe");
			String book_class = request.getParameter("book_class");
			String jianjie = request.getParameter("jianjie");
			String bname1 = request.getParameter("bname1");
			System.out.print(bname+" "+chubanshe+" "+book_class+" "+jianjie+" "+bname1);
		%>
			<tr>
				<td>
					书名：
				</td>
				<td>
					<input name = "bname" type="text" value="<%=request.getParameter("bname")%>">
				</td>
			</tr>
			<tr>
				<td>
					出版社：
				</td>
				<td>
					<input name = "chubanshe" type="text" value="<%=request.getParameter("chubanshe")%>">
				</td>
			</tr>
			<tr>
				<td>
					类型：
				</td>
				<td>
					<input name = "book_class" type="text" value="<%=request.getParameter("book_class")%>">
				</td>
			</tr>
			<tr>
				<td>
					书名(英文)：
				</td>
				<td>
					<input name = "bname1" type="text" value="<%=request.getParameter("bname1")%>">
				</td>
			</tr>
			<tr>
				<td>
					简介：
				</td>
				<td>
					<textarea rows="10" cols="" name = "jianjie" value="<%=request.getParameter("jianjie")%>"></textarea>
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