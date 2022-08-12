<%@page import="Model.Feedback"%>
<%@page import="DAO.Servletdao"%>
<%!
  Servletdao sd=new Servletdao();
     Feedback f=new Feedback();
%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <title>Feedback Form</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="Index_1.css">    
        <link rel="stylesheet" href="Feedback.css">  
    </head>
    <body>
    <header>
             <div id="menu-bar" class="fas fa-bars"></div>
            <a href="#" class="logo"><span>T - </span>Shadow</a>
                <nav class="navbar">
                     <a href="Userpage.jsp">Home</a>
                     <a href="Finaldesigningstudio.jsp">Designing Studio</a>
                     <a href="Feedback.jsp">Feedback</a>
                     <a href="Complain.jsp">Complain</a>
                     <a href="Signout.jsp">Log Out</a>
                </nav>
    </header> 
<div class="container"> 
  <h2 style="text-align: center;">FEEDBACK FORM</h2>   
  <form>    
    <div class="row">    
      <div class="col-25">    
        <label for="fname">First Name</label>    
      </div>    
      <div class="col-75">    
        <input type="text" style="font-size: 16px; font-weight: 400;" id="fname" name="firstname" placeholder="Your name..">    
      </div>    
    </div>    
    <div class="row">    
      <div class="col-25">    
        <label for="lname">Last Name</label>    
      </div>    
      <div class="col-75">    
        <input type="text" id="lname" style="font-size: 16px; font-weight: 400;" name="lastname" placeholder="Your last name..">    
      </div>    
    </div>    
    <div class="row">    
        <div class="col-25">    
          <label for="email">Mail id</label>    
        </div>    
        <div class="col-75">    
          <input type="email" id="email" style="font-size: 16px; font-weight: 400;" name="mailid" placeholder="Your mail id..">    
        </div>    
      </div>    
    <div class="row">    
      <div class="col-25">    
        <label for="countrys" >Country</label>    
      </div>    
      <div class="col-75">    
        <select id="country1" style="font-size: 16px; font-weight: 400;" name="country">    
          <option value="none">Select Country</option>    
          <option value="india">India</option>    
          <option value="australia">Australia</option>    
          <option value="canada">Canada</option>    
          <option value="usa">USA</option>    
          <option value="russia">Russia</option>    
          <option value="japan">Japan</option>    
          <option value="china">China</option>    
        </select>    
      </div>    
    </div>    
    <div class="row">    
      <div class="col-25">    
        <label for="feedback" >FeedBack</label>    
      </div>    
      <div class="col-75">    
        <textarea id="feedarea" name="feedarea" placeholder="Write something.." style="font-size: 16px; font-weight: 400;height:200px"></textarea>    
      </div>    
    </div>    
    <div class="row">    
      <input type="submit" onclick="return Validate();" value="Submit">    
    </div>    
  </form>    
</div>    
    <%
     String Fname,Lname,mail,Country,Feedback;
     Fname=request.getParameter("firstname");
     Lname=request.getParameter("lastname");
     mail=request.getParameter("mailid");
     Country=request.getParameter("country");
     Feedback=request.getParameter("feedarea");
     
     
     if(Fname!=null && Lname!=null && mail!=null && Country!=null && Feedback!=null)
     { int n=0;
    
      f.setFname(Fname);
      f.setLname(Lname);
      f.setMail(mail);
      f.setCountry(Country);
      f.setFeedback(Feedback);
       n=sd.InsertFeedback(f);
       if(n>0)     
       response.sendRedirect("Feedback.jsp");
     }
    %>   
    
    <script>
        function Validate(){
            var fname,lname,mail,country,feedback;
            fname=document.getElementById("fname").value;
            lname=document.getElementById("lname").value;
            mail=document.getElementById("email").value;
            country=document.getElementById("country1").value;
            feedback=document.getElementById("feedarea").value;
            
             if(fname=="")
            {
              alert("Name Can't be left blank....");
              document.getElementById("fname").focus();
              return false;
            } 
               
            if(lname=="")
           {
             alert("Name Can't be left blank....");
             document.getElementById("lname").focus();
             return false;
           }   
           if(mail=="")
           {
             alert("Email Can't be left blank....");
             document.getElementById("mail").focus();
             return false;
           }   
           if(country=="")
           {
             alert("Please Select Country....");
             document.getElementById("country1").focus();
             return false;
               
           }
         if(fname!="")
         {
            for(i=0;i<fname.length;i++)
            {   
             ascii=fname.charCodeAt(i);
             if(!((ascii>=97&& ascii<=122) ||(ascii>=65&& ascii<=90) || (ascii==32)))
             {    
               alert("Invalid name,Enter character only");
               document.getElementById("fname").focus();
               document.getElementById("fname").select();
               return false;
             }
            } 
         }
               
        if(lname!="")
        {
          for(i=0;i<lname.length;i++)
          {   
           ascii=lname.charCodeAt(i);
           if(!((ascii>=97&& ascii<=122) ||(ascii>=65&& ascii<=90) || (ascii==32)))
           {    
              alert("Invalid name,Enter character only");
              document.getElementById("lname").focus();
              document.getElementById("lname").select();
              return false;
          }
         } 
       }
       alert("Feedback Successfully Submitted.");
       return true;
         }
    </script>
</body>    
</html>     