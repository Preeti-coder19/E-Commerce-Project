<%@page import="NewPackage.DBClass"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,700'
	type='text/css'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/modern-normalize/1.0.0/modern-normalize.min.css"
	integrity="sha512-ISS7cAi1PEhQ8jnbJpJZMd29NlhNj4AWYyLOSp2CE/CsHxTCu+r+t0D2yoJudVrd0/8fTVPUVDzY5Tvli75u/g=="
	crossorigin="anonymous" />
<link rel="stylesheet" href="dist/star-rating.min.css?ver=4.3.0">
<link rel="stylesheet" href="demo/styles.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/prism/1.23.0/themes/prism.min.css"
	integrity="sha512-tN7Ec6zAFaVSG3TpNAKtk4DOHNpSwKHxxrsiw4GHKESGPs5njn/0sMCUMl2svV4wo4BK/rCP7juYz+zx+l6oeQ=="
	crossorigin="anonymous" />
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-46156385-1', 'cssscript.com');
	ga('send', 'pageview');
</script>

<script type="text/javascript">
	function selectrating(s) {
		alert(s);
		//document.getElementById('rating').value = s;
	}
</script>
<script type="text/javascript"
	src="//pagead2.googlesyndication.com/pagead/show_ads.js">
	
</script>

<link rel="stylesheet"
	href="http://netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
<style type="text/css">
.star-rating__stars {
	position: relative;
	height: 5rem;
	width: 25rem;
	background: url('assets/img/off.svg');
	background-size: 5rem 5rem;
}

.star-rating__label {
	position: absolute;
	height: 100%;
	background-size: 5rem 5rem;
}

.star-rating__input {
	margin: 0;
	position: absolute;
	height: 1px;
	width: 1px;
	overflow: hidden;
	clip: rect(1px, 1px, 1px, 1px);
}

.star-rating__stars .star-rating__label:nth-of-type(1) {
	z-index: 5;
	width: 20%;
}

.star-rating__stars .star-rating__label:nth-of-type(2) {
	z-index: 4;
	width: 40%;
}

.star-rating__stars .star-rating__label:nth-of-type(3) {
	z-index: 3;
	width: 60%;
}

.star-rating__stars .star-rating__label:nth-of-type(4) {
	z-index: 2;
	width: 80%;
}

.star-rating__stars .star-rating__label:nth-of-type(5) {
	z-index: 1;
	width: 100%;
}

.star-rating__input:checked+.star-rating__label, .star-rating__input:focus+.star-rating__label,
	.star-rating__label:hover {
	background-image: url('assets/img/on.svg');
}

.star-rating__label:hover ~ .star-rating__label {
	background-image: url('assets/img/off.svg');
}

.star-rating__input:focus ~ .star-rating__focus {
	position: absolute;
	top: -.25em;
	right: -.25em;
	bottom: -.25em;
	left: -.25em;
	outline: 0.25rem solid lightblue;
}
</style>

<script type="text/javascript">
	function selectrating(s) {
		//alert(s);
		document.getElementById('rating').value = s;
	}
</script>

<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">

</head>
<body>
	<jsp:include page="UserHeader.jsp"></jsp:include>



	<main id="main"> <!-- ======= Contact Section ======= --> <section
		id="contact" class="contact section-bg"
		style="background-image: url('assets/img/image6.jpg'); background-size: 1660px 1500px;">> 
		<%!String sname, stype, details, sid, emailid, phnum, image;%>
	<div class="container">
		<div class="section-title">
			<br> <br>
			<h2>Apply Ratings</h2>
			<p>User Apply Ratings Page</p>
		</div>



		<fieldset class="star-rating" style="position: absolute; left: 200px;">
			<legend class="star-rating__title">&nbsp;&nbsp;Your rating:</legend>
			<div class="star-rating__stars">
				<input class="star-rating__input" type="radio" name="rating"
					value="1" id="rating-1" onclick="selectrating(this.value)" /> <label
					class="star-rating__label" for="rating-1" aria-label="One"></label>
				<input class="star-rating__input" type="radio" name="rating"
					value="2" id="rating-2" onclick="selectrating(this.value)" /> <label
					class="star-rating__label" for="rating-2" aria-label="Two"></label>
				<input class="star-rating__input" type="radio" name="rating"
					value="3" id="rating-3" onclick="selectrating(this.value)" /> <label
					class="star-rating__label" for="rating-3" aria-label="Three"></label>
				<input class="star-rating__input" type="radio" name="rating"
					value="4" id="rating-4" onclick="selectrating(this.value)" /> <label
					class="star-rating__label" for="rating-4" aria-label="Four"></label>
				<input class="star-rating__input" type="radio" name="rating"
					value="5" id="rating-5" onclick="selectrating(this.value)" /> <label
					class="star-rating__label" for="rating-5" aria-label="Five"></label>
				<div class="star-rating__focus"></div>
			</div>
		</fieldset>

		<div class="row mt-5 justify-content-center">
			<div class="col-lg-10">
				<br>
				<br>
				<br>
				<br>
				<br>
				<form action="UserApplyRating2.jsp" method="post" role="form">
					<div class="row">
						<div class="col-md-6 form-group">
							<%
								if (request.getParameter("msg") != null)
									out.print("<h3>" + request.getParameter("msg") + "</h3>");

								try {
									sid = request.getParameter("id");
									String sql = "select * from newservice where productid = " + sid;
									ResultSet rs = DBClass.executeQuery(sql);
									if (rs.next()) {
										sname = rs.getString("ProductName");
										stype = rs.getString("ProductType");
										details = rs.getString("MoreDetails");
										emailid = rs.getString("EmailId");
										phnum = rs.getString("PhoneNum");
										image = rs.getString("Image");
									}
								} catch (Exception e) {
									out.print("Exception : " + e.getMessage());
								}
							%>
						</div>
					</div>
					
					<div class="row">
						<div class="col-md-6 form-group">
							<input type="hidden" name="rating" class="form-control"
								id="rating" placeholder="Rating" required>
						</div>
					</div>


					<div class="row">
						<div class="col-md-6 form-group">
							More Comments :<br>
							<textarea class="form-control" name="comments" rows="5"
								placeholder="Any Comments">
								</textarea>
						</div>
					</div>

					<div class="row">
						<div class="col-md-6 form-group">
							<br> Service Id : <input type="text" name="sid"
								class="form-control" id="sid" placeholder="Service Id"
								value="<%out.print(sid);%>" readonly="readonly" required>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<br> Service Name : <input type="text" name="sname"
								class="form-control" id="name" placeholder="Service Name"
								value="<%out.print(sname);%>" readonly="readonly" required>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<br> Service Type : <br> <input type="text"
								class="form-control" name="stype" id="stype"
								placeholder="Service Type" required readonly="readonly"
								value="<%out.print(stype);%>">							
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<br> Email Id : <br> <input type="text"
								class="form-control" name="emailid" id="emailid"
								placeholder="Email Id" required readonly="readonly"
								value="<%out.print(emailid);%>">							
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<br> Phone Number : <br> <input type="text"
								class="form-control" name="phnum" id="phnum"
								placeholder="Phone Number" required readonly="readonly"
								value="<%out.print(phnum);%>">							
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<br> More Details :
							<textarea class="form-control" name="details" rows="5"
								placeholder="More Details" required readonly="readonly">
								<%
									out.print(details.trim());
								%>
								</textarea>
						</div>
					</div>
					
					
					<div class="row">
						<div class="col-md-6 form-group">
							<br> Product Image :
							
								<%
								out.print("<img src='assets/img/"+image+"' width='250px' height='250px'/>");
								%>
						</div>
					</div>
					
					
					
					
					
					<div class="row">
						<div class="col-md-6 form-group">
							<br>
							<button type="submit">Apply Rating</button>
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