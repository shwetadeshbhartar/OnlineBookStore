import java.sql.*;

public class validate
 {
     public static boolean checkUser(String email,String password) 
     {
      boolean st =false;
      try{
          
	 //loading drivers for mysql
         Class.forName("oracle.jdbc.OracleDriver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:oracle:thin:@localhost:1521:xe","system","12345");
         PreparedStatement ps =con.prepareStatement
                             ("select * from register where email=? and password=?");
         ps.setString(1, email);
         ps.setString(2, password);
         ResultSet rs =ps.executeQuery();
         st = rs.next();
        
      }catch(ClassNotFoundException | SQLException e)
      {
          System.out.print(e);
      }
         return st;                 
  }   

   

    

   
}

