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
<main id="main">
    <!-- ======= Contact Section ======= -->
    <section id="contact" class="contact section-bg">
    
      <div class="container">

        <div class="section-title">
        <br><br>
          <h2>New User</h2>
          <p>NewUser Page</p>
        </div>
        <div class="row mt-5 justify-content-center">
          <div class="col-lg-10">
            <form action="NewUser" method="post" role="form">
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
                First Name :
                  <input type="text" name="fname" class="form-control" id="fname" 
                  onkeypress="return isLetter(event,this);"  maxlength="15"
                  title="FirstName can have Maximum 15 Characters"
                  placeholder="Your First Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                Last Name : 
                  <input type="text" class="form-control" name="lname" 
                  onkeypress="return isLetter(event,this);"  maxlength="15"
                  title="LastName can have Maximum 15 Characters"
                  id="lname" placeholder="Your Last Name" required>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 form-group">
                Login Name :
                  <input type="text" name="uname" class="form-control" id="uname"  
                  title="LoginName can have Maximum 15 Characters" maxlength="15"
                  maxlength="15" placeholder="Your Login Name" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                Password : 
                  <input type="password" class="form-control" name="pwd" id="pwd" 
                  title="Password can have Maximum 15 Characters" maxlength="15"
                  placeholder="Your Password" required>
                </div>
              </div>
              <div class="row">
                <div class="col-md-6 form-group">
                Email Id :
                  <input type="email" name="emailid" class="form-control"
                  maxlength="15" 
                  title="EmailId can have Maximum 15 Characters"
                  id="emailid" placeholder="Your EmailId" required>
                </div>
                <div class="col-md-6 form-group mt-3 mt-md-0">
                Phone Num : 
                  <input type="text" class="form-control" maxlength=10
                  pattern="^[789]\d{9}$" title="Phone number should be 10 digits & starts with 7,8,9"
                  onkeypress="return isNumber(event);"
                  name="phnum" id="phnum" placeholder="Your PhoneNumber" required>
                </div>
              </div>
              <!-- <div class="form-group mt-3">
                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" required>
              </div> -->
              <div class="form-group mt-3">
                <textarea class="form-control" name="address" rows="5" placeholder="Your Address" required></textarea>
              </div>              
              <div class="row">
                <div class="col-md-6 form-group">
                <br>
                <button type="submit">New User</button></div>
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