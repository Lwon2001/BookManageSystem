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
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.util.Objects" %>
<%
			String username1 = request.getParameter("username1");;
			Connection con = ConnDB.getConnection();
			String query_sql = "SELECT * FROM user_info WHERE username1 = '"+ username1 + "'";
			ResultSet re = ConnDB.executeQuery(query_sql, con);
	try {
		re.next();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	String status = null;
	try {
		status = re.getString("status");
	} catch (SQLException e) {
		e.printStackTrace();
	}
	if(!Objects.equals(status, "1"))
			{
				String sql = "DELETE FROM user_info WHERE username1 = '" + username1 + "'";
				ConnDB.executeUpdate(sql, con);
				%>
				<script type="text/javascript" language="javascript">
					alert("删除用户成功");
					window.location = "manage_user.jsp";
				</script>
				<%
			}
			else
			{
				%>
				<script type="text/javascript" language="javascript">
					alert("无法删除管理员");
					window.location = "manage_user.jsp";
				</script>
				<%
			}
			ConnDB.close();
	%>
</html>