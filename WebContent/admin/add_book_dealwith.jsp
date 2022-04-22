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
			String bname = request.getParameter("bname");
			String chubanshe = request.getParameter("chubanshe");
			String book_class = request.getParameter("book_class");
			String jianjie = request.getParameter("jianjie");
			String bname1 = request.getParameter("bname1");
			Connection con = ConnDB.getConnection();
			if(bname.equals("") || book_class.equals(""))
			{
				%>
				<script type="text/javascript" language="javascript">
					alert("添加失败,书名或类型不能为空");
					window.location = "add_book.jsp";                            // 重新添加
				</script>
				<%
			}
			else
			{
			// 书名和英文书名查重
			String query_bname = "Select bname From book_info where bname = '" + bname + "'";
			ResultSet re = ConnDB.executeQuery(query_bname, con);
			if(re.next())
			{
				%>
				<script type="text/javascript" language="javascript">
					alert("添加失败,书名重复,该书籍已经被添加过");
					window.location = "add_book.jsp";                            // 重新添加
				</script>
				<%
			}
			else
			{
			String query_bname1 = "Select bname1 From book_info where bname1 = '" + bname1 + "'";
			ResultSet re1 = ConnDB.executeQuery(query_bname1, con);
			if(re1.next())
			{
				%>
				<script type="text/javascript" language="javascript">
					alert("添加失败,书的英文名重复,该书籍已经被添加过");
					window.location = "add_book.jsp";                            // 重新添加
				</script>
				<%
			}
			else
			{
			String sql = "INSERT INTO book_info(bname,chubanshe,book_class,jianjie,bname1) VALUES('"+bname+"','"+chubanshe+"','"+book_class+"','"+jianjie+"','"+bname1+"')";
			ConnDB.executeUpdate(sql, con);
			%>
			<script type="text/javascript" language="javascript">
				alert("添加成功");
				window.location = "manage_book.jsp";                            //添加成功后返回
			</script>
			<%
			ConnDB.close();
				}}}
	%>
</html>