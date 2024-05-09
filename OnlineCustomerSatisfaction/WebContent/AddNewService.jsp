<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<jsp:include page="AdminHeader.jsp"></jsp:include>
	<main id="main"> <!-- ======= Contact Section ======= --> <section
		id="contact" class="contact section-bg">

	<div class="container">

		<div class="section-title">
			<br> <br>
			<h2>New Products</h2>
			<p>New Products Page</p>
		</div>
		<div class="row mt-5 justify-content-center">
			<div class="col-lg-10">
				<form action="NewService" method="post" role="form">
					<div class="row">
						<div class="col-md-6 form-group">
							<%
								if (request.getParameter("msg") != null)
									out.print("<h3>" + request.getParameter("msg") + "</h3>");
							%>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<br> Product Name : <input type="text" name="sname"
								class="form-control" id="name" placeholder="Product Name"
								required>
						</div>
						<!-- <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div> -->
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<br> Product Type :
							<!-- <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required> -->
							<br> <select name="stype" class="form-control"
								style="width: 300px;">
								<option>BMTC</option>
								<option>BBMP</option>
								<option>METRO</option>
								<option>KPTCL</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<br> More Details :
							<textarea class="form-control" name="details" rows="5"
								placeholder="More Details" required></textarea>
						</div>
					</div>					
					<div class="row">
						<div class="col-md-6 form-group">
							<br>
							<button type="submit">New Product</button>
						</div>
					</div>
				</form>
			</div>

		</div>

	</div>
	</section><!-- End Contact Section --> </main>
	<!-- End #main -->
	<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>