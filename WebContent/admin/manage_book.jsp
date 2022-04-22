<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>book_manager</title>
</head>
<link href="../css/admin_right.css" rel="stylesheet" type="text/css">
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "com.mwxu16.dao.ConnDB"%>

<body>
	<div class="forms">
	<form name = "chaxun" action="book_chaxun.jsp" method="post">
		<table>
		<tr>
		<td>查询：</td>
		<td><input name = "chaxun" type="text" id = "chaxun"> </td>
		<td><input name = "submit" type="submit" id = "submit" value="查询"> </td>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<td><a href = "add_book.jsp">添加图书</a>
		</tr>
		</table>

	</form>
	<form action="" >
		<table border="0" align="left" cellspacing="20">	
		<tr>
				<td>
					<div>编号</div>
				</td>
				<td>
					<div>书名</div>
				</td>
				<td>
					<div>出版社</div>
				</td>
				<td>
					<div>类型</div>
				</td>
				<td>
					<div>简介</div>
				</td>
		</tr>
			<% 
			Connection con = ConnDB.getConnection();
			String sql = "SELECT * FROM book_info";
			ResultSet re = ConnDB.executeQuery(sql, con);
			int n = 0;
			while(re.next()){
				//如果结果集不空，则输出信息
				n++;
			%>
			<tr>
				<td>
					<div><%=n%></div>
				</td>
				<td>
					<div><%=re.getString("bname") %></div>
				</td>
				<td>
					<div><%=re.getString("chubanshe") %></div>
				</td>
				<td>
					<div><%=re.getString("book_class") %></div>
				</td>
				<td>
					<div><%=re.getString("jianjie") %></div>
				</td>
				<td>
				<%
				String bname = request.getParameter("bname");
				String chubanshe = request.getParameter("chubanshe");
				String book_class = request.getParameter("book_class");
				String jianjie = request.getParameter("jianjie");
				String bname1 = request.getParameter("bname1");
				%>
				<td>
					<a href = "delete_book.jsp?bname=<%=re.getString("bname1")%>">删除</a>
				</td>
			</tr>
			<%
			}
			ConnDB.close();
			%>
		</table>
	</form>
	</div>
</body>
</html>