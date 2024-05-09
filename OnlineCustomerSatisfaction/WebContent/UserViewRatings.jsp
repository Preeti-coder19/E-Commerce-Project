<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="NewPackage.DBClass"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson"%>
<%@ page import="com.google.gson.JsonObject"%>
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
	width: 800px;
}

td, th {
	color: black;
	width: 175px;
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
			<h2>View Rating</h2>
			<p>User View Ratings Page</p>
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
			<%!
			int slno = 1, five, four, three, two, one;
			%>
				<%
					try {
						String custid = session.getAttribute("id").toString();
						String sql = "select * from ratingtable where customerid = "+custid;
						//out.print(sql);
						ResultSet rs = DBClass.executeQuery(sql);
						ResultSetMetaData res = rs.getMetaData();
						out.print("<table>");
						out.print("<tr>");
						out.print("<th style='border:1px solid black; border-collapse: collapse;'>SL No</th>");
						for (int i = 2; i <= res.getColumnCount(); i++) {
							//if(!res.getColumnName(i).equals("Rating"))
							out.print("<th style='border:1px solid black; border-collapse: collapse;'>" + res.getColumnName(i)
									+ "</th>");
						}
						//out.print("<th style='border:1px solid black; border-collapse: collapse;'>Delete Rating</th>");
						out.print("</tr>");
						
						five=four=three=two=one=0;
						while (rs.next()) {
							String id = rs.getString(1);
							out.print("<tr>");
							out.print("<td style='border:1px solid black; border-collapse: collapse;'>" + slno + "</td>");
							for (int i = 2; i < res.getColumnCount(); i++) {
								if (!res.getColumnName(i).equals("Rating")) {
									out.print("<td style='border:1px solid black; border-collapse: collapse;'>"
											+ rs.getString(i) + "</td>");
								} 
								else {
									String rating = rs.getString("Rating");
									if (rating.equals("5")) {
										out.print("<td style='border:1px solid black; border-collapse: collapse;'>");
										out.print("<img src='assets/img/starselected.png' width='10px' height='10px'/>");
										out.print("</td");
									}
								}
							}
							String rating = rs.getString("Rating");
							/*if(rating.equals("5"))
							{	out.print("<td style='border:1px solid black; border-collapse: collapse;'>");
								out.print("Hi<img src='assets/img/starselected.png' width='10px' height='10px'/>");
								out.print("</td");
							}*/
							slno++;
							if (rating.equals("5")) {
								five++;
								out.print("<th style='border:1px solid black; border-collapse: collapse;'>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>" + "</th>");
							} else if (rating.equals("4")) {
								four++;
								out.print("<th style='border:1px solid black; border-collapse: collapse;'>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>" + "</th>");
							} else if (rating.equals("3")) {
								three++;
								out.print("<th style='border:1px solid black; border-collapse: collapse;'>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>" + "</th>");
							}  else if (rating.equals("2")) {
								two++;
								out.print("<th style='border:1px solid black; border-collapse: collapse;'>"
										+ "<img src='assets/img/starselected.png' width='10px' height='10px'/>"
										+ "<img src='assets/img/starselected.jpg' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>" + "</th>");
							} else if (rating.equals("1")) {
								one++;
								out.print("<th style='border:1px solid black; border-collapse: collapse;'>"
										+ "<img src='assets/img/starselected.jpg' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>"
										+ "<img src='assets/img/starunselected.jpg' width='10px' height='10px'/>" + "</th>");
							}
							//out.print("<th style='border:1px solid black; border-collapse: collapse;'>"
							//		+ "<a href='AdminDeleteRatings.jsp?id=" + id + "'>Delete Rating</a></th>");
							out.print("</tr>");
						}

						out.print("<table>");
					} catch (Exception ex) {
						out.print("Exception : " + ex.getMessage());
					}
				%>
				
				<%
Gson gsonObj = new Gson();
Map<Object,Object> map = null;
List<Map<Object,Object>> list = new ArrayList<Map<Object,Object>>();
 
map = new HashMap<Object,Object>(); map.put("label", "Five"); map.put("y", five); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Four"); map.put("y", four); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Three"); map.put("y", three); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "Two"); map.put("y", two); list.add(map);
map = new HashMap<Object,Object>(); map.put("label", "One"); map.put("y", one); list.add(map);
 
String dataPoints = gsonObj.toJson(list);
%>
	
	<script type="text/javascript">
window.onload = function() { 
 
var chart = new CanvasJS.Chart("chartContainer", {
	theme: "light2", // "light1", "dark1", "dark2"
	exportEnabled: true,
	animationEnabled: true,
	title: {
		text: "Chart Review"
	},
	data: [{
		type: "pie",
		toolTipContent: "<b>{label}</b>: {y}%",
		indexLabelFontSize: 16,
		indexLabel: "{label} - {y}%",
		dataPoints: <%out.print(dataPoints);%>
	}]
});
chart.render();
 
}
</script>

<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
				
			</div>

		</div>

	</div>
	</section><!-- End Contact Section --> </main>
	<!-- End #main -->
	<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>