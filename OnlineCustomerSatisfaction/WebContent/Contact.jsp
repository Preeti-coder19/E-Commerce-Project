<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">
function isNumber(evt) {
    evt = (evt) ? evt : window.event;
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode > 31 && (charCode < 48 || charCode > 57)) {
    	alert("Please enter only numbers");
        return false;
    }
    return true;
}
function isLetter(e, t)   
{    
   if (window.event)    
   {    
      var charCode = window.event.keyCode;    
   }    
   else if (e)   
   {    
      var charCode = e.which;    
   }    
   else { return true; }    
   if ((charCode > 64 && charCode < 91) || (charCode > 96 && charCode < 123))    
       return true;    
   else  
   {    
      alert("Please enter only alphabets");    
      return false;    
   }           
}     
</script>
</head>
<body>
	<jsp:include page="CommonHeader.jsp"></jsp:include>
	<main id="main"> <!-- ======= Contact Section ======= --> <section
		id="contact" class="contact section-bg">

	<div class="container">

		<div class="section-title">
			<br> <br>
			<h2>Contact</h2>
			<p>Contact Page</p>
		</div>

		<div class="row mt-5 justify-content-center">

			<div class="col-lg-10">

				<div class="info-wrap">
					<div class="row">
						<div class="col-lg-4 info">
							<i class="bi bi-geo-alt"></i>
							<h4>Location:</h4>
							<p>
								KLE College<br>RajajiNagar
							</p>
						</div>

						<div class="col-lg-4 info mt-4 mt-lg-0">
							<i class="bi bi-envelope"></i>
							<h4>Email:</h4>
							<p>
								shivani@gmail.com<br>
							</p>
						</div>

						<div class="col-lg-4 info mt-4 mt-lg-0">
							<i class="bi bi-phone"></i>
							<h4>Call:</h4>
							<p>
								+91 83173 57387<br>
							</p>
						</div>
					</div>
				</div>

			</div>

		</div>

		<div class="row mt-5 justify-content-center">
			<div class="col-lg-10">
				<form action="Contact1.jsp" method="post" role="form">
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
							<input type="text" name="cname" class="form-control" id="cname"
								onkeypress="return isLetter(event,this);"
								placeholder="Your Contact Name" required maxlength="15"
								title="ContactName have Maximum 15 Characters">
						</div>
						<div class="col-md-6 form-group mt-3 mt-md-0">
							<input type="email" class="form-control" name="emailid"
								id="emailid" placeholder="Your Email" required maxlength="15"
								title="EmailId can have Maximum 15 Characters">
						</div>
					</div>
					<div class="form-group mt-3">
						<input type="text" class="form-control" name="subject"
							id="subject" placeholder="Subject" required>
					</div>
					<div class="form-group mt-3">
						<textarea class="form-control" name="message" rows="5"
							placeholder="Message" required></textarea>
					</div>
					<div class="row">
						<div class="col-md-6 form-group">
							<div class="text-center">
								<br>
								<button type="submit">Send Message</button>
							</div>
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