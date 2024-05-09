<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<jsp:include page="CommonHeader.jsp"></jsp:include>
<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact section-bg">
    
      <div class="container">

        <div class="section-title">
        <br><br>
          <h2>Admin Login</h2>
          <p>Admin Login Page</p>
        </div>

        <div class="row mt-5 justify-content-center">
          <div class="col-lg-10">
            <form action="AdminLogin" method="post" role="form">
            <div class="row">
              <div class="col-md-6 form-group">
              <%
              if(request.getParameter("msg")!=null)
            	  out.print("<h3>"+request.getParameter("msg")+"</h3>");
              %>
              </div>
              </div>
              <div class="row">
                <div class="col-md-6 form-group">
                User Name : 
                  <input type="text" name="uname" class="form-control" id="name" placeholder="Your Name" required>
                </div>
                <!-- <div class="col-md-6 form-group mt-3 mt-md-0">
                  <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
                </div> -->
              </div>
              <div class="row">
              <div class="col-md-6 form-group">
              Password : 
                <input type="password" class="form-control" name="pwd" id="subject" placeholder="Subject" required>
              </div>
              </div>
              <!-- <div class="form-group mt-3">
                <textarea class="form-control" name="message" rows="5" placeholder="Message" required></textarea>
              </div>
              <div class="my-3">
                <div class="loading">Loading</div>
                <div class="error-message"></div>
                <div class="sent-message">Your message has been sent. Thank you!</div>
              </div> -->
              <div class="row">             
              <div class="col-md-6 form-group"><br>
              <button type="submit">Admin Login</button></div>
              </div>
            </form>
          </div>

        </div>

      </div>
    </section><!-- End Contact Section -->
      </main><!-- End #main -->
    <jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>