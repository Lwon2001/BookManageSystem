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
					alert("���ʧ��,���������Ͳ���Ϊ��");
					window.location = "add_book.jsp";                            // �������
				</script>
				<%
			}
			else
			{
			// ������Ӣ����������
			String query_bname = "Select bname From book_info where bname = '" + bname + "'";
			ResultSet re = ConnDB.executeQuery(query_bname, con);
			if(re.next())
			{
				%>
				<script type="text/javascript" language="javascript">
					alert("���ʧ��,�����ظ�,���鼮�Ѿ�����ӹ�");
					window.location = "add_book.jsp";                            // �������
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
					alert("���ʧ��,���Ӣ�����ظ�,���鼮�Ѿ�����ӹ�");
					window.location = "add_book.jsp";                            // �������
				</script>
				<%
			}
			else
			{
			String sql = "INSERT INTO book_info(bname,chubanshe,book_class,jianjie,bname1) VALUES('"+bname+"','"+chubanshe+"','"+book_class+"','"+jianjie+"','"+bname1+"')";
			ConnDB.executeUpdate(sql, con);
			%>
			<script type="text/javascript" language="javascript">
				alert("��ӳɹ�");
				window.location = "manage_book.jsp";                            //��ӳɹ��󷵻�
			</script>
			<%
			ConnDB.close();
				}}}
	%>
</html>