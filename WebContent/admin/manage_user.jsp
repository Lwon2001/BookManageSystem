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
<%@ page import = "java.sql.SQLException"%>
<%@ page import = "com.mwxu16.dao.ConnDB"%>

<body>
	<div class="forms">
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
				<div>学号</div>
			</td>
			<td>
				<div>年级</div>
			</td>
			<td>
				<div>密码</div>
			</td>
			<td>
				<div>身份</div>
			</td>
		</tr>
			<% 
			Connection con = ConnDB.getConnection();
			String sql = "SELECT * FROM user_info";
			ResultSet re = ConnDB.executeQuery(sql, con);
			int n = 0;
			while(re.next()){
				//如果结果集不空，则输出信息
				n++;
				String status = re.getString("status");
				String identification;
				if(status == null)
				{
					break;
				}
				else if(status.equals("1"))
				{
					identification = "管理员";
				}
				else
				{
					identification = "用户";
				}
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
					<div><%=identification%></div>
				</td>
				<td>
				<%
				String username = request.getParameter("username");
				String sex = request.getParameter("sex");
				String xuehao = request.getParameter("xuehao");
				String nianji = request.getParameter("nianji");
				String password = request.getParameter("password");
				%>
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
	</div>
</body>
</html>