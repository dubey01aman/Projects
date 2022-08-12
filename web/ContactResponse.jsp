<%@page import="DAO.Servletdao"%>
<%@page import="Model.Contact"%>
<%
    String name,email,number,subject,message;
    
    name=request.getParameter("name");
    email=request.getParameter("email");
    number=request.getParameter("number");
    subject=request.getParameter("subject");
    message=request.getParameter("message");
    
    Contact cd=new Contact();
    cd.setName(name);
    cd.setEmail(email);
    cd.setNumber(number);
    cd.setSubject(subject);
    cd.setMessage(message);
    Servletdao sd=new Servletdao();
    int n=sd.InsertContact(cd);
    if(n>0)
    {
      response.sendRedirect("contact.html");
    }
    
%>
