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
<%@ page import = "java.sql.SQLException"%>
<%@ page import = "com.mwxu16.dao.ConnDB"%>
	<% 
			request.setCharacterEncoding("GBK");
			String bname = request.getParameter("bname");
			Connection con = ConnDB.getConnection();
			String sql = "DELETE FROM book_info WHERE bname1 = '"+bname+"'";
			ConnDB.executeUpdate(sql, con);
			ConnDB.close();
			%>
			<script type="text/javascript" language="javascript">
				alert("删除图书成功");
				window.location = "manage_book.jsp";
			</script>
			<%
	%>

</html>