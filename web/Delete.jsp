<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            String book_id = request.getParameter("book_id");

            
            
            
         
          try
          {
              //loading drivers for mysql
         Class.forName("oracle.jdbc.OracleDriver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:oracle:thin:@localhost:1521:xe","system","12345");
               Statement st;
      st = con.createStatement();
     String query=String.format("DELETE from books where book_id='%s'",book_id);
     int count=st.executeUpdate(query);
               out.print("record deleted");
              
          }catch(Exception ex) {
              out.println(ex);
            
        }



%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>contact us</title>
    </head>
    <body>
      
    </body>
</html>
