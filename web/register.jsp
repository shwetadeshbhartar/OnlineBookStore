<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>

<%@page import="java.sql.Statement"%>

<%@page import="java.sql.Connection"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>
    
<head>
        
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
<title>Registration Success</title>
    
</head>
    
<body>
       
        
<%
  String name = request.getParameter("name");
  
  String user_name=request.getParameter("user_name");
  
  String contact_no=request.getParameter("contact_no");
  
  
        
String email = request.getParameter("email");
        
String password = request.getParameter("password");
        
String address = request.getParameter("address");
        
try
{
          
Class.forName("oracle.jdbc.OracleDriver");
          
Connection  con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "12345");
         
Statement stmt = con.createStatement();
          
ResultSet rs=stmt.executeQuery("insert into register(user_name,name,contact_no,email,password,address)values('"+user_name+"','"+name+"' ,"
        + "'"+contact_no+"' ,'"+email+"','"+password+"','"+address+"')");
          
out.println("registration success");
        
}
catch(Exception e)
{
            
        out.print(e);
}
                
%>
    
</body>

</html>
