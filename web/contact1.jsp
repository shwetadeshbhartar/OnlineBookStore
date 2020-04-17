
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%

            String name = request.getParameter("name");
            String email = request.getParameter("email");
            String contact_no = request.getParameter("contact_no");
            String message = request.getParameter("message");
            String country=request.getParameter("country");
           
            
           
          try
          {
              Class.forName("oracle.jdbc.OracleDriver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:oracle:thin:@localhost:1521:xe","system","12345");
          Statement st;
            
       st = con.createStatement();
       String query=String.format("INSERT INTO contact(name,email,contact_no,country,message) VALUES('"+name+"','"+email+"' ,"
        + "'"+contact_no+"' ,'"+country+"','"+message+"')");
        st.executeUpdate(query);
     
              
          
                  out.print("record inserted");
                  RequestDispatcher rs = request.getRequestDispatcher("contactingus.jsp");
            rs.forward(request, response);
          }
              catch(Exception ex) {
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
