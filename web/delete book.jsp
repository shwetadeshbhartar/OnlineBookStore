
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
body, html {
  height: 100%;
  font-family: Arial, Helvetica, sans-serif;
}

* {
  box-sizing: border-box;
}

.bg-img {
  /* The image used */
  background-image: url("th66.jpg");

  min-height: 650px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  left:0;
  margin: 20px;
  margin-left: 450px;
  margin-top: 210px;
  max-width: 500px;
  padding: 5px;
  height: 220px;
  background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 10px;
  margin: 5px 0 22px 0;
  border: none;
    background: #d5f4e6;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
        </style>
    </head>
    <body>
        <div class="bg-img">
        <form action="Delete.jsp" class="container">
            <div class="search_input">
            
            
                BOOK ID<br><br><br><input type="text" placeholder="                 Enter Id"  name="book_id"
    size="50px" style="height:50px; width: 400px;font-size: 25px;"> 
             
            
        
</div>
        
<div class="search_button">
            
            

<input type="submit" value="Delete" style="height: 40px; width: 200px; 
margin-left: 100px; margin-right: auto;" class="btn"> 
            
        
</div>
        
        </form>
        </div>
    </body>
</html>
