<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gbk">
	<title>zhuxiao</title>
</head>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.SQLException"%>
<%@ page import = "com.mwxu16.dao.ConnDB"%>
	<% 
			request.setCharacterEncoding("GBK"); 
			Connection con = ConnDB.getConnection();
			String sql = "UPDATE user_info SET is_logged='0' where is_logged='1'";
			ResultSet re = ConnDB.executeQuery(sql, con);
			int a = ConnDB.executeUpdate(sql, con);
			ConnDB.close();
			response.sendRedirect("index.jsp");
	%>
</html>