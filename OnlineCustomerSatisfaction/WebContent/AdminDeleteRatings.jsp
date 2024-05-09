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
	String id = request.getParameter("id").toString();
	String sql ="Delete from ratingtable where ratingid = "+id;
	out.print(sql);
	if(DBClass.executeUpdate(sql)>0)
		response.sendRedirect("AdminViewRatings.jsp?msg=Ratings Deleted Success");
	
}catch(Exception e)
{
	out.print("Exception : "+e.getMessage());
}
%>
</body>
</html>