
<html>
    <head>
    <script language="javascript">
        alert("Hello friend Start.............");
    </script>
    </head>
    <body>
        <h1>Test</h1>
    </body>
</html>

<%@page import="DAO.Servletdao"%>
<%
    String email,pass;
    email=request.getParameter("txtemail");
    pass=request.getParameter("txtpass");
    
    Servletdao sd=new Servletdao();
    if(sd.checklogin(email, pass))
    {  
        //out.println("Success...........");
     %>   
     <html>
    <head>
    <script language="javascript">
        alert("Hello friend Between............");
    </script>
    </head>
    <body>
        <h1>Test</h1>
    </body>
</html>
    <%
      session.setAttribute("Email", email);
      session.setAttribute("Password", pass);
      response.sendRedirect("Userpage.jsp");
    }
    else
    { %>
    <script>
        val2()
    </script>
     <% 
       response.sendRedirect("index.html");
    }
    
%>

<script>
    function val1(){
        alert("Successfully Login.");
    }
    function val2(){
         alert("Invalid Email && Password.");
    }
</script>
