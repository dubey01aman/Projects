<%@page import="DAO.Servletdao"%>
<%@page import="Model.Register"%>
<%
    String fullname,username,email,phone,pass,gender;
    fullname=request.getParameter("fname");
    username=request.getParameter("username");
    email=request.getParameter("email");
    phone=request.getParameter("phone");
    pass=request.getParameter("pass");
    gender=request.getParameter("gender");
    
    Register r=new Register();
    r.setFullname(fullname);
    r.setUsername(username);
    r.setEmail(email);
    r.setPhone(phone);
    r.setPass(pass);
    r.setGender(gender);
    
    Servletdao sd=new Servletdao();
    int n=0;
    n=sd.InsertRegister(r);
    if(n>0)
    {
     response.sendRedirect("Register.html");
    }
    %>