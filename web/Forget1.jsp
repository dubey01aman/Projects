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
             <p>forget password? <a href="Forget.jsp">click here</a></p>
             <p>don't have any account? <a href="Register.html">register now</a></p>
            </form>
     </div>

     <div class="container">
        <div class="title"><center>Change Password</center></div>
        <div class="content">
          <form action="#">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Email</span>
                    <input type="email" name="email12" value="<%=session.getAttribute("email1")%>">
                  </div>
                  <div class="input-box">
                    <span class="details">Phone Number</span>
                    <input type="text" value="<%=session.getAttribute("phone1")%>">
                  </div>
              <div class="input-box">
                <span class="details">New Password</span>
                <input type="text" name="pass" placeholder="Enter New Password" required>
              </div>
              <div class="input-box">
                <span class="details">Confirm Password</span>
                <input type="password" name="cpass" placeholder="Enter Password Again" required>
              </div>
            </div>
            <div class="button">
              <input type="submit" value="Submit">
            </div>
          </form>
        </div>
      </div>
    
    <script src="Index.js"></script>
  <%
 String email,pass;
 pass=request.getParameter("pass");
 email=request.getParameter("email12");
 Servletdao sd=new Servletdao();
 if(pass!="")
 { int n=0;
   n=sd.ChangePassword(email, pass);
   if(n>0)
   {
      %>
    <script>
      alert("Password Successfully Changed.");
    </script>
  <%  
       response.sendRedirect("Forget.jsp");
   }
 }
%>