package DAO;
import Coneectiondao.Connect;
import Model.Complain;
import Model.Contact;
import Model.DesigningCode;
import Model.Feedback;
import Model.Register;
import java.sql.*;
import java.util.*;


public class Servletdao {
   
     public int InsertContact(Contact cd)
     {
       Connection con=null;
       PreparedStatement ps=null;
       con=Connect.dataConnection();
       int n=0;
       String sql="insert into Contact values(?,?,?,?,?)";
      try{
        ps=con.prepareStatement(sql);
        ps.setString(1,cd.getName());
        ps.setString(2,cd.getEmail());
        ps.setString(3,cd.getNumber());
        ps.setString(4,cd.getSubject());
        ps.setString(5,cd.getMessage());
  
        n=ps.executeUpdate();
        
        }
       catch(SQLException e)
       {
        System.out.println(e);
       }
        return n;
         
     }
     
     public int InsertRegister(Register r)
     {
       Connection con=null;
       PreparedStatement ps=null;
       con=Connect.dataConnection();
       int n=0;
       String sql="insert into login values(?,?,?,?,?,?)";
      try{
        ps=con.prepareStatement(sql);
        ps.setString(1,r.getFullname());
        ps.setString(2,r.getUsername());
        ps.setString(3,r.getEmail());
        ps.setString(4,r.getPhone());
        ps.setString(5,r.getPass());
        ps.setString(6,r.getGender());
  
        n=ps.executeUpdate();
        
        }
       catch(SQLException e)
       {
        System.out.println(e);
       }
        return n;
         
     }
     
     public int InsertDesign(DesigningCode ds)
     {
       Connection con=null;
       PreparedStatement ps=null;
       con=Connect.dataConnection();
       int n=0;
       String sql="insert into designorder values(?,?,?,?,?,?,?,?,?,?,?,?)";
      try{
        ps=con.prepareStatement(sql);
        ps.setBlob(1, (Blob) ds.getFileimg());
        ps.setString(2,ds.getTshirtsize());
        ps.setString(3,ds.getQuantity());
        ps.setString(4,ds.getName());
        ps.setString(5,ds.getEmail());
        ps.setString(6,ds.getMobile());
        ps.setString(7,ds.getState());
        ps.setString(8,ds.getCity());
        ps.setString(9,ds.getPincode());
        ps.setString(10,ds.getAddress());
        ps.setString(12,ds.getLandmark());
  
        n=ps.executeUpdate();
        
        }
       catch(SQLException e)
       {
        System.out.println(e);
       }
        return n;
         
     }
    
     public boolean checklogin(String email,String password)
    {
      Connection con=null;
      PreparedStatement ps=null;
      ResultSet rs=null;
      con=Connect.dataConnection();
      String sql="select * from login where Email=? && Password=?";
      try{
        ps=con.prepareStatement(sql);
        ps.setString(1,email);
        ps.setString(2,password);
        rs=ps.executeQuery();
        if(rs.next())
        {
          return true;
        }
        }catch(Exception e)
       {
         System.out.println(e);
       }
      return false;
    }
     
      public boolean Forget(String email,String phone)
    {
      Connection con=null;
      PreparedStatement ps=null;
      ResultSet rs=null;
      con=Connect.dataConnection();
      String sql="select * from login where Email=? && Phone_no=?";
      try{
        ps=con.prepareStatement(sql);
        ps.setString(1,email);
        ps.setString(2,phone);
        rs=ps.executeQuery();
        if(rs.next())
        {
          return true;
        }
        }catch(Exception e)
       {
         System.out.println(e);
       }
      return false;
    }
      
      public int ChangePassword(String email,String pass)
     {  int n = 0;
       Connection con=null;
      PreparedStatement ps=null;
      con=Connect.dataConnection();
      String sql="update login set Password=? where Email=?";
      try{
        ps=con.prepareStatement(sql);
        ps.setString(1,pass);
        ps.setString(2,email);
        n=ps.executeUpdate();
        
      }
      catch(SQLException e)
      {
       System.out.println(e);
      }
      return n;
     }
     
     public int InsertFeedback(Feedback f)
     {  int n = 0;
       Connection con=null;
      PreparedStatement ps=null;
      con=Connect.dataConnection();
      String sql="insert into Feedback values(?,?,?,?,?)";
      try{
        ps=con.prepareStatement(sql);
        ps.setString(1,f.getFname());
        ps.setString(2,f.getLname());
        ps.setString(3,f.getMail());
        ps.setString(4,f.getCountry());
        ps.setString(5,f.getFeedback());
       
        n=ps.executeUpdate();
        
      }
      catch(SQLException e)
      {
       System.out.println(e);
      }
      return n;
     }
      
      public int InsertComplain(Complain c)
     { int n=0;
      Connection con=null;
      PreparedStatement ps=null;
      con=Connect.dataConnection();
      String sql="insert into Complain values(?,?,?,?,?,?,?)";
      try{
        ps=con.prepareStatement(sql);
        ps.setString(1,c.getFname());
        ps.setString(2,c.getLname());
        ps.setString(3,c.getMail());
        ps.setString(4,c.getMobile());
        ps.setString(5,c.getTime());
        ps.setString(6,c.getQrelated());
        ps.setString(7,c.getComplain());
       
        n=ps.executeUpdate();
        
      }
      catch(SQLException e)
      {
       System.out.println(e);
      }
      return n;
     }
      
      public static int autoIncr()
  {
              Connection con=null;
              PreparedStatement ps=null;
              ResultSet rs=null;
              con=Connect.dataConnection();
              String sql;
              int n=101;
            try
            {    
              sql="select max(sid) from order_place1";
              ps=con.prepareStatement(sql);
              rs=ps.executeQuery();
              
              if(rs.next())
              {     
                 n=rs.getInt(1);
                 n=n+1;
              }    
             
            }
            catch(Exception e)
            {
              System.out.println(e);
            }   
           return(n);    
  }
}

