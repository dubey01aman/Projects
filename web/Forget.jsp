<%@page import="DAO.Servletdao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <title>T-Shirt Designing Website</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="Index.css">
        <link rel="stylesheet" href="Register.css">
    </head>
    <body>
        <header>

            <div id="menu-bar" class="fas fa-bars"></div>

           <a href="#" class="logo"><span>T - </span>Shadow</a>
            <nav class="navbar">
                <a href="Index_1.html">home</a>
                <a href="about.html">About</a>
                <a href="Gallery.html">gallery</a>
                <a href="Review.html">review</a>
                <a href="contact.html">contact</a>
            </nav>

            <div class="icons">
             <i class="fas fa-search" id="search-btn"></i>
             <i class="fas fa-user" id="login-btn"></i>
            </div>

            <form action="" class="search-bar-container">
                <input type="search" id="search-bar" placeholder="search here...">
                <label for="search-bar" class="fas fa-search"></label>
            </form>
        </header>

     <div class="login-form-container">
         <i class="fas fa-times" id="form-close"></i>
         <form action="">
             <h3>login</h3>
             <input type="email" class="box" placeholder="enter your email">
             <input type="password" class="box" placeholder="enter your password">
             <input type="submit" value="login now" class="btn">
             <input type="checkbox" id="remember">
             <label for="remember">remember me</label>
             <p>forget password? <a href="#">click here</a></p>
             <p>don't have any account? <a href="Register.html">register now</a></p>
            </form>
     </div>

     <div class="container">
        <div class="title"><center>Forget Password</center></div>
        <div class="content">
          <form action="Forget.jsp">
            <div class="user-details">
              <div class="input-box">
                <span class="details">Email</span>
                <input type="email" name="email" placeholder="Enter your email" required>
              </div>
              <div class="input-box">
                <span class="details">Phone Number</span>
                <input type="text" name="phone" maxlength="10" placeholder="Enter your number" required>
              </div>
            </div>
            <div class="button">
              <input type="submit" value="Submit">
            </div>
          </form>
        </div>
      </div>
    
    <script src="Index.js"></script>
    </body>
</html>
<%
 String email,phone;
 email=request.getParameter("email");
 phone=request.getParameter("phone");
 Servletdao sd=new Servletdao();
 if(email!="" && phone!="")
 {
   if(sd.Forget(email, phone))
   {
     session.setAttribute("email1", email);
     session.setAttribute("Phone1", phone);
     response.sendRedirect("Forget1.jsp");
   }
   else
   {
    %>
    <script>
      alert("Invalid Email Or Phone.");
    </script>
  <%
       response.sendRedirect("Forget.jsp");
   }
 }
%>