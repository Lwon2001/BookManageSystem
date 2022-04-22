<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>right</title>
</head>
<link href="../css/admin_right.css" rel="stylesheet" type="text/css">
<body  >

<%
	String num = request.getParameter("num");
	String num_1 = new String("1");
	String num_2 = new String("2");
	if(num == null)
	{
		System.out.print("参数为空" + num);
	}
	else
	{
		if (num.equals(num_1))
		{
			response.sendRedirect("manage_book.jsp");
		}
		else if (num.equals(num_2))
		{
			response.sendRedirect("manage_user.jsp");
		}
	}
%>
</body>
</html>