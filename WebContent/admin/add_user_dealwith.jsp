<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<title>book_manager</title>
	</head>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "com.mwxu16.dao.ConnDB"%>
	<% 
		request.setCharacterEncoding("GBK");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String xuehao = request.getParameter("xuehao");
		String nianji = request.getParameter("nianji");
		String username1 = request.getParameter("username1");
		Connection con = ConnDB.getConnection();
		if(username.equals("") || password.equals("") || xuehao.equals("") || nianji.equals("") || username1.equals(""))  //检查是否有信息未填
		{
			%>
			<script type="text/javascript" language="javascript">
				alert("添加失败,表单中的信息不能为空");
				window.location = "add_user.jsp";                            // 重新添加
			</script>
			<%
		}
		else
		{
			String query_username = "Select username From user_info where username = '" + username + "'";
			ResultSet re = ConnDB.executeQuery(query_username, con);
			if(re.next())
			{
			%>
				<script type="text/javascript" language="javascript">
					alert("添加失败,姓名重复");
					window.location = "add_user.jsp";                            // 重新添加
				</script>
			<%
		}
		String query_xuehao = "Select xuehao From user_info where xuehao = '" + xuehao + "'";
		ResultSet re1 = ConnDB.executeQuery(query_xuehao, con);
		if(re1.next())
		{
			%>
			<script type="text/javascript" language="javascript">
				alert("添加失败,学号重复");
				window.location = "add_user.jsp";                            // 重新添加
			</script>
			<%
		}
		else
		{
		String query_username1 = "Select username1 From user_info where username1 = '" + username1 + "'";
		ResultSet re2 = ConnDB.executeQuery(query_username1, con);
		if(re2.next())
		{
			%>
				<script type="text/javascript" language="javascript">
				alert("添加失败,英文名重复");
				window.location = "add_user.jsp";                            // 重新添加
				</script>
			<%
		}
		else
		{
		String sql = "INSERT INTO user_info(username,password,xuehao,nianji,username1, status, is_logged) VALUES('"+username+"','"+password+"','"+xuehao+"','"+nianji+"','"+username1+"',0,0)";
		ConnDB.executeUpdate(sql, con);
		ConnDB.close();
		%>
			<script type="text/javascript" language="javascript">
				alert("添加成功");
				window.location = "manage_user.jsp";                            //添加成功后返回
			</script>
		<%
			}
			}
		}
	%>
</html>