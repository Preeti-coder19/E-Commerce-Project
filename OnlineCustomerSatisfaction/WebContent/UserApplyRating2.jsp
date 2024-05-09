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
	String custid = session.getAttribute("id").toString();
	String serviceid = request.getParameter("sid").toString();
	String servicename = request.getParameter("sname").toString();
	String servicetype = request.getParameter("stype").toString();
	String comments = request.getParameter("comments").toString();
	String details = request.getParameter("details").toString();
	String rating =request.getParameter("rating").toString();
	String productemailid = request.getParameter("emailid").toString();
	
	String sql ="select * from newcustomer where customerid="+custid;
	//out.print(sql);
	ResultSet rs = DBClass.executeQuery(sql);
	String fname="", lname="", emailid="", phnum="";
	
	if(rs.next())
	{
		fname=rs.getString("FirstName");
		lname=rs.getString("LastName");
		emailid=rs.getString("EmailId");
		phnum=rs.getString("PhoneNum");
	}
	sql ="Insert into RatingTable(ProductId,ProductName,ProductType,MoreDetails,"
	        +"CustomerId,FirstName,LastName,EmailId,PhoneNum,Comments,Rating)values"
			+"('"+serviceid
			+"','"+ servicename 
			+"','"+ servicetype 
			+"','"+ details 
			+"','"+ custid 
			+"','"+ fname 
			+"','"+ lname 
			+"','"+ emailid 
			+"','"+ phnum 
			+"','"+ comments 
			+"','"+ rating+"')";
	out.print("<br>"+sql+"<br>");
	int ratings = Integer.parseInt(rating);
	int rows=DBClass.executeUpdate(sql);
	out.print("Ratings : "+ratings+" Rows : "+rows);
	if(rows>0){
		if(ratings<=2)
		{
			//response.sendRedirect("UserApplyRating.jsp?msg=Rating Applied Success");
			String subject ="Ratings is "+rating;
			String message = "Your product has got "+rating+" by "+fname+" "+lname +"Comments : "+comments;
			/*
			String url="http://onnovater.in/generate_mail_contact.php?toemail="+productemailid+
					"&fromemail=shivanisharma9480@gmail.com&subject="+subject+
					"&message="+message+"&content=Sending Mail to Product Owner"+
					"&redirecturl=http://localhost:8080/OnlineCustomerSatisfaction/UserApplyRating.jsp"+
					"?msg=Rating Applied Success";
			*/
			String url="UserApplyRating.jsp";
			response.sendRedirect(url);
		}
		else{
			response.sendRedirect("UserApplyRating.jsp?msg=Rating Applied Success");
		}
	}
	
}catch(Exception e)
{
	out.print("Exception : "+e.getMessage());
}
%>
</body>
</html>