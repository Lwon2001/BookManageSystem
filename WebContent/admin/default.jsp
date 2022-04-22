<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>图书管理系统</title>
</head>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.SQLException"%>
<%@ page import = "com.mwxu16.dao.ConnDB"%>
<%
	Connection con = ConnDB.getConnection();
	String sql = "SELECT * FROM user_info WHERE is_logged='1' && status='1'";
	ResultSet re = ConnDB.executeQuery(sql, con);
	if(re.next())
	{

	}
	else
	{
		%>
		<script type="text/javascript" language="javascript">
			alert("您没有权限访问该页面,请登陆后再试,如有问题,请联系管理员");
			window.location = "../index.jsp";                            // 跳转到图书管理系统首页
		</script>
		<%
	}
		%>
	<frameset rows="20%,60%,*" frameborder="no" >
		<frame src="header.jsp">
		<frameset cols="20%,80%" frameborder="no">
			<frame src="left.jsp">
			<frame src = "right.jsp" name = "right">
		</frameset>
		<frame src="footer.jsp">
	</frameset>
</html>