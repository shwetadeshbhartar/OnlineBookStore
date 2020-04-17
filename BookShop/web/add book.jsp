
<%@page import="java.sql.*"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            String book_id = request.getParameter("book_id");

            String book_name = request.getParameter("book_name");
                        String book_desc = request.getParameter("book_desc");

            String book_category = request.getParameter("book_category");
            String book_author = request.getParameter("book_author");
            String book_price = request.getParameter("book_price");
            String book_quantity=request.getParameter("book_quantity");
           
            
           
          try
          {
                        //loading drivers for mysql
         Class.forName("oracle.jdbc.OracleDriver");

 	 //creating connection with the database 
         Connection con=DriverManager.getConnection
                        ("jdbc:oracle:thin:@localhost:1521:xe","system","12345");
          Statement st;
        st = con.createStatement();
       String query=String.format("INSERT INTO books(book_id,book_name,book_desc,book_category,book_author,book_price,book_quantity) VALUES('"+book_id+"','"+book_name+"' ,"
        + "'"+book_desc+"' ,'"+book_category+"','"+book_author+"','"+book_price+"','"+book_quantity+"')");
        st.executeUpdate(query);
           RequestDispatcher rd=request.getRequestDispatcher("addedbook.html");
                  rd.forward(request, response);
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
