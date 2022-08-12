package Coneectiondao;
import java.sql.*;

public class Connect {
    private static Connection con;
  static
  {
   try{
   Class.forName("com.mysql.jdbc.Driver");
     }
   catch(ClassNotFoundException e)
   {
     System.out.println(e);
   }
  }
  
  public static Connection dataConnection()
  {
   try{
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Tshadow","root","root");
    }
   catch(SQLException e)
   {
    System.out.println(e);
   }
   return con;
  }
  
}
