<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<jsp:include page="AdminHeader.jsp"></jsp:include>

  <main id="main">
    <!-- ======= What We Do Section ======= -->
    <section id="what-we-do" class="what-we-do">
      <div class="container">

        <div class="section-title">
        <br><br>
          <h2>What We Do</h2>
          <p>A customer satisfaction survey is a questionnaire designed to help 
          businesses understand what their customers think about their products or 
          services, their brand, and their customer support</p>
        </div>

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4><a href="">Promoters</a></h4>
              <p>Those who give a 9 or 10 rating, 
              and are the most likely to stick around and recommend your business</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-file"></i></div>
              <h4><a href="">Passives</a></h4>
              <p>Those who give a 7 or 8 rating, and are happy 
              with your organization but can be persuaded to switch over to a competitor</p>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
            <div class="icon-box">
              <div class="icon"><i class="bx bx-tachometer"></i></div>
              <h4><a href="">Detractors</a></h4>
              <p> Those who give a rating below 7, and are the most likely to stop 
              working with you and hurt the reputation of your business</p>
            </div>
          </div>

        </div>

      </div>
    </section><!-- End What We Do Section -->

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container">

        <div class="row">
          <div class="col-lg-6">
            <img src="assets/img/about.jpg" class="img-fluid" alt="">
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <h3>About Us</h3>
            <p>
              Usually asked on a scale of 1-3, 1-5, or 1-7, 
              your customer satisfaction score can be calculated 
              by adding up the sum of all scores and dividing the 
              sum by the number of respondents. Customer Satisfaction 
              Score (CSAT) is the most commonly used measurement for 
              customer satisfaction.
            </p>
            <ul>
              <li><i class="bx bx-check-double"></i> Set clear objectives.</li>
              <li><i class="bx bx-check-double"></i> Ask about overall satisfaction, then get to the details.</li>
            </ul>
            <div class="row icon-boxes">
              <div class="col-md-6">
                <i class="bx bx-receipt"></i>
                <!-- <h4>Corporis voluptates sit</h4> -->
                <p>What is the main purpose of a customer satisfaction survey?
The general purpose of customer satisfaction surveys is to assess how satisfied your 
customers are with different aspects of your product/service.</p>
              </div>
              <div class="col-md-6 mt-4 mt-md-0">
                <i class="bx bx-cube-alt"></i>
                <!-- <h4>Ullamco laboris nisi</h4> -->
                <p> Identifying unhappy customers is as important as 
                identifying extremely happy ones (potential advocates).</p>
              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End About Section -->
  </main><!-- End #main -->

<jsp:include page="CommonFooter.jsp"></jsp:include>
</body>
</html>