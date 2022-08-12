<%@page import="Model.Complain"%>
<%@page import="DAO.Servletdao"%>
<!DOCTYPE html>
<%!
  Servletdao sd=new Servletdao();
  Complain c=new Complain();
%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">  
        <title>Complain Form</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
        <link rel="stylesheet" href="Index_1.css">
        <link rel="stylesheet" href="Complain.css">
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
        <h2 style="text-align: center;">COMPLAIN FORM</h2>   
        <form>    
          <div class="row">    
            <div class="col-25">    
              <label for="fname">First Name</label>    
            </div>    
            <div class="col-75">    
              <input type="text" style="font-size: 16px; font-weight: 400;" id="fname" name="fname" placeholder="Your name..">    
            </div>    
          </div>    
          <div class="row">    
            <div class="col-25">    
              <label for="lname">Last Name</label>    
            </div>    
            <div class="col-75">    
              <input type="text" id="lname" style="font-size: 16px; font-weight: 400;" name="lname" placeholder="Your last name..">    
            </div>    
          </div>    
          <div class="row">    
              <div class="col-25">    
                <label for="email">Mail id</label>    
              </div>    
              <div class="col-75">    
                <input type="email" id="mail" style="font-size: 16px; font-weight: 400;" name="mail" placeholder="Your mail id..">    
              </div>    
            </div>    
          <div class="row">    
            <div class="col-25">    
              <label for="Mobile_No">Mobile No.</label>    
            </div>    
            <div class="col-75">    
             <input name="mobile" id="mobile" style="height: 50px;font-size: 16px;font-weight: 400;border: 1px solid rgb(70, 68, 68); border-radius: 4px;padding: 12px; " limit="10" type="number" placeholder="Mobile">    
            </div>    
          </div>  
          
          <div class="row">    
            <div class="col-25">    
              <label for="Time" >Time when you are free to attend call</label>    
            </div>    
            <div class="col-75">   
              <input style="height: 50px;font-size: 16px;font-weight: 400;border: 1px solid rgb(70, 68, 68); border-radius: 4px;padding: 12px; " name="time" type="time">
            </div>    
          </div>

          <div class="row">    
            <div class="col-25">    
              <label for="query">Query related to</label>    
            </div>    
            <div class="col-75">    
              <select id="query" style="font-size: 16px; font-weight: 400;" name="query">    
                <option value="none">Select Query</option>    
                <option value="Transaction Issue">Transaction issue</option>    
                <option value="Received different product">Received different product</option>    
                <option value="Product is damaged">Product is damaged</option>    
                <option value="Bad Quality product">Bad Quality product</option>    
                <option value="QProblem in Replacement">Problem in Replacement</option>    
                <option value="Other">Other</option>     
              </select>    
            </div>    
          </div> 

          <div class="row">    
            <div class="col-25">    
              <label for="complain" >Complaint</label>    
            </div>    
            <div class="col-75">    
              <textarea id="complain" name="complain" placeholder="Write your complaint here." style="font-size: 16px; font-weight: 400;height:150px"></textarea>    
            </div>    
          </div>    
          <div class="row">    
            <input type="submit" onclick="return validate();" value="Submit">    
          </div>
          <div class="L80">
              <input type="submit" style="margin-left: 73%; padding: 12px 20px;width: 92px;" value="Close">
          </div>    
        </form>    
      </div> 
        <%
         String Fname,Lname,time,mail,Query,complain,mobile;
        
         Fname=request.getParameter("fname");
         Lname=request.getParameter("lname");
         mail=request.getParameter("mail");
         mobile=request.getParameter("mobile");
         time=request.getParameter("time");
         Query=request.getParameter("query");
         complain=request.getParameter("complain");
     
     
     if((Fname!=null) && (Lname!=null) && (mail!=null) && (mobile!=null) && (time!=null) && (Query!=null) && (complain!=null))
     { int n=0;
    
      c.setFname(Fname);
      c.setLname(Lname);
      c.setMail(mail);
      c.setMobile(mobile);
      c.setTime(time);
      c.setQrelated(Query);
      c.setComplain(complain);
       n=sd.InsertComplain(c);
       if(n>0)
       response.sendRedirect("Complain.jsp");
     }
        %>
    
        <script >
         function validate()
        {
           var fname,lname,mobile,mail,query,complain;
           fname=document.getElementById("fname").value; 
           lname=document.getElementById("lname").value; 
           mobile=document.getElementById("mobile").value; 
           mail=document.getElementById("mail").value; 
           query=document.getElementById("query").value;  
           complain=document.getElementById("complain").value;     
                 
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
        
        if(mobile=="")
       {
         alert("Mobile Number Can't be left blank....");
         document.getElementById("mobile").focus();
         return false;
       }   
               
        if(query=="")
       {
         alert("Please Select Query Related To ....");
         document.getElementById("query").focus();
         return false;
        }  
        if(complain=="")
       {
         alert("Please Write Your Issue....");
         document.getElementById("query").focus();
         return false;
        }  
       if(fname!="")
       {
         for(i=0;i<fname.length;i++)
         {   
           ascii=fname.charCodeAt(i);
           if(!((ascii>=97&& ascii<=122) ||(ascii>=65&& ascii<=90) || (ascii==32)))
            {    
               alert("Invalid data enter character only");
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
              alert("Invalid data enter character only");
              document.getElementById("lname").focus();
              document.getElementById("lname").select();
              return false;
            }
      } 
     }
     if((mobile.length)>10)
      {
       alert("Invalid Mobile Number");
      }
     if(mobile!="")
      {
         var valid="0123456789";
         for(i=0;i<mobile.length;i++)
         {   
            ch=mobile.charAt(i);
            if(valid.indexOf(ch)==-1)
            {
                alert("Invalid Mobile Number Only Number allowed....");
                document.getElementById("mobile").focus(); 
                document.getElementById("mobile").select(); 
                return false;
            }
         }   
     }
           
     alert("Complain successfully submitted");
             
  }
 


        </script>   
      </body>    
      </html>  