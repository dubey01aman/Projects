<%@page import="DAO.Servletdao"%>
<%@page import="Model.DesigningCode"%>

<%
 String name,mobile,email,pincode,state,city,address,landmark,Tshirtsize,quantity;

            Part file=request.getPart("myfile");
            Tshirtsize=request.getParameter("size");
            quantity=request.getParameter("qty");
            
            name=request.getParameter("fName");
            mobile=request.getParameter("cont");
            email=request.getParameter("email");
            pincode=request.getParameter("pincode");
            state=request.getParameter("state");
            city=request.getParameter("city");
            address=request.getParameter("address");
            landmark=request.getParameter("landmark");
            
            DesigningCode ds=new DesigningCode();
            ds.setFileimg(file);
            ds.setTshirtsize(Tshirtsize);
            ds.setQuantity(quantity);
            ds.setName(name);
            ds.setMobile(mobile);
            ds.setEmail(email);
            ds.setPincode(pincode);
            ds.setState(state);
            ds.setCity(city);
            ds.setAddress(address);
            ds.setLandmark(landmark);
            
            Servletdao sd=new Servletdao();
            int n=0;
            n=sd.InsertDesign(ds);
            if(n>0)
            {
                out.println("<script>alert(Order Successfully Placed)</script>");
                response.sendRedirect("Finaldesigningstudio.jsp");
            }
            else
            {
                out.println("<script>alert(Order is Not Placed, Try again.)</script>");
                response.sendRedirect("Finaldesigningstudio.jsp");
            }
                
         
%>