<%@page import="NewPackage.DBClass"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
	String cname = request.getParameter("cname").toString();
	String emailid = request.getParameter("emailid").toString();
	String subject = request.getParameter("subject").toString();
	String message = request.getParameter("message").toString();
	
	
	String sql ="Insert into ContactTable(ContactName,EmailId,Subject,Message)values"
			+"('"+cname
			+"','"+ emailid 
			+"','"+ subject 
			+"','"+ message+"')";
	out.print(sql);
	if(DBClass.executeUpdate(sql)>0)
		response.sendRedirect("Contact.jsp?msg=Contact Details Added Success");
	
}catch(Exception e)
{
	out.print("Exception : "+e.getMessage());
}
%>
</body>
</html>