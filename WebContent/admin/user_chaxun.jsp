<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>book_manager</title>
</head>
<link href="../css/admin_right.css" rel="stylesheet" type="text/css">
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.SQLException"%>
<%@ page import = "com.mwxu16.dao.ConnDB"%>

<body>
<form name = "chaxun" action="user_chaxun.jsp" method="post">
				<table>
				<tr>
				<td>查询：</td>
				<td><input name = "chaxun" type="text" id = "chaxun"> </td>
				<td><input name = "submit" type="submit" id = "submit" value="查询"> </td>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<td><a href = "add_user.jsp">添加用户</a>
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
					<div>姓名</div>
				</td>
				<td>
					<div>性别</div>
				</td>
				<td>
					<div>学号</div>
				</td>
				<td>
					<div>年级</div>
				</td>
				<td>
					<div>密码</div>
				</td>
		</tr>
			<%
				request.setCharacterEncoding("GBK");
				String chaxun = request.getParameter("chaxun");
				System.out.print(chaxun);
				Connection con = ConnDB.getConnection();
				String sql = "SELECT * FROM user_info WHERE username LIKE '%"+ chaxun +"%' OR username1 LIKE '%" + chaxun+"%' OR nianji LIKE '%" + chaxun+"%' OR xuehao LIKE '%" + chaxun+"%' OR password LIKE '%" + chaxun + "%'";
				ResultSet re = ConnDB.executeQuery(sql, con);
				int n=0;
				while(re.next())
				{
					//如果结果集不空，则输出信息
					n++;
			%>
			<tr>
				<td>
					<div><%=n%></div>
				</td>
				<td>
					<div><%=re.getString("username") %></div>
				</td>
				<td>
					<div><%=re.getString("xuehao") %></div>
				</td>
				<td>
					<div><%=re.getString("nianji") %></div>
				</td>
				<td>
					<div><%=re.getString("password") %></div>
				</td>

				<td>
					<a href = "delete_user.jsp?username1=<%=re.getString("username1")%>">删除</a>
				</td>
			</tr>
			<%
			}
			ConnDB.close();
			%>
		</table>
	</form>
</body>
</html>