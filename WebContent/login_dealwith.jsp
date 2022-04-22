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
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			Connection con = ConnDB.getConnection();
			String sql = "SELECT * FROM user_info WHERE username1='"+username+"' AND password = '"+password+"'";
			String log_sql = "UPDATE user_info SET is_logged = '1' WHERE username1='"+username+"'";
			ResultSet re = ConnDB.executeQuery(sql, con);
			try {
					if(re.next())  // 如果能查到数据
					{
							ConnDB.executeUpdate(log_sql, con);
							response.sendRedirect("index.jsp");
					}
					else
					{
							response.sendRedirect("login.jsp");
					}
				}
			catch (SQLException e)
				{
					e.printStackTrace();
				}
				ConnDB.close();
	%>

</html>