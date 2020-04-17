<%-- 
    Document   : Book1
    Created on : 20 May, 2019, 11:50:57 AM
    Author     : HP
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Book</title>
    </head>
    <body>
      <%response.setContentType("text/html;charset=UTF-8");
        
       try 
       {
           
           
     String book_name = request.getParameter("book_name");
         
 Class.forName("oracle.jdbc.OracleDriver");
        
Connection  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "12345");
 PreparedStatement ps = con.prepareStatement("select * from books where book_name = ?");
      ps.setString(1,book_name);
         ResultSet rs = ps.executeQuery();
           
        
         ResultSetMetaData rsmd=rs.getMetaData();
         while(rs.next())
             
         {
             String book_id =rs.getString("book_id");
             String book_desc = rs.getString("book_desc");
             String book_category=rs.getString("book_category");
             String book_author = rs.getString("book_author");
             
             String book_price=rs.getString("book_price");
             String book_quantity=rs.getString("book_quantity");
             
 out.print("<table  border=1><tr><th>BookId</th><th>Book Name</th><th>Book Description</th><th>Book category</th><th>Book Author</th><th>Book Price</th><th>Book Quantity</th></tr>");
        
          out.print("<tr><td>"+book_id+"</td><td>"+book_name+"</td><td>"+book_desc+"</td><td>"+book_category+"</td><td>"+book_author+"</td><td>"+book_price+"</td><td>"+book_quantity+"</td></tr>");
     

                  out.print("</table>");        
                          
            
         }
         
     }
     
    
    catch(Exception e)
    {
      out.print(e);
    }
    
%>
<form action="buy.html">
    quantity<input type="text" name="quantity">
    
    <input type="submit" value="submit">
</form>
    </body>
</html>
