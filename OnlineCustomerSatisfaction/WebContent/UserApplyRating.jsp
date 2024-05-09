<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="NewPackage.DBClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
	color: black;
	text-align: center;
	width: 1200px;
}

td, th {
	color: black;
	width: 150px;
	height: 50px;
	text-align: center;
	border: 1px solid black;
	border-collapse: collapse;
}
</style>
</head>
<body>
	<jsp:include page="UserHeader.jsp"></jsp:include>
	<main id="main"> <!-- ======= Contact Section ======= --> <section
		id="contact" class="contact section-bg">

	<div class="container">

		<div class="section-title">
			<br> <br>
			<h2>Apply Rating</h2>
			<p>User Apply Ratings Page</p>
		</div>

		<div class="row mt-5 justify-content-center">
			<div class="row">
				<div class="col-md-6 form-group">
					<%
						if (request.getParameter("msg") != null)
							out.print("<h3>" + request.getParameter("msg") + "</h3>");
					%>
				</div>
			</div>
			<div class="col-lg-10">
				<%
					try {
						String sql = "select * from newservice";
						//out.print(sql);
						ResultSet rs = DBClass.executeQuery(sql);
						ResultSetMetaData res = rs.getMetaData();
						out.print("<table>");
						out.print("<tr>");
						out.print("<th style='border:1px solid black; border-collapse: collapse;'>SL No</th>");
						for (int i = 2; i <= res.getColumnCount(); i++) {
							out.print("<th style='border:1px solid black; border-collapse: collapse;'>" + res.getColumnName(i)
									+ "</th>");
						}
						out.print("<th style='border:1px solid black; border-collapse: collapse;'>Apply Rating</th>");
						out.print("</tr>");
						int slno = 1;
						while (rs.next()) {
							String id = rs.getString(1);
							out.print("<tr>");
							out.print("<td style='border:1px solid black; border-collapse: collapse;'>" + slno + "</td>");
							for (int i = 2; i <= res.getColumnCount()-1; i++) {
								out.print("<td style='border:1px solid black; border-collapse: collapse;'>" + rs.getString(i)
										+ "</td>");
							}
							slno++;
							out.print("<th style='border:1px solid black; border-collapse: collapse;'>"
									+ "<img src='assets/img/"+rs.getString("Image")+"' width='150px' height='150px'/></th>");
							//out.print("<th style='border:1px solid black; border-collapse: collapse;'>"
							//		+ "<img src='assets/img/"+rs.getString("Image")+"' width='150px' height='150px'/></th>");
							out.print("<th style='border:1px solid black; border-collapse: collapse;'>"
									+ "<a href='UserApplyRating1.jsp?id=" + id + "'>Apply Rating</a></th>");
							out.print("</tr>");
						}

						out.print("<table>");

					} catch (Exception ex) {
						out.print("Exception : " + ex.getMessage());
					}
				%>
			</div>

		</div>

	</div>
	</section><!-- End Contact Section --> </main>
	<!-- End #main -->
	<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>