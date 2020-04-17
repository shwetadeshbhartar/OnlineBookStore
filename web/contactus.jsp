<html>
    <head>
        <title>Contact Us</title>        
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
  background-image: url("15.jpg");

  min-height: 750px;

  /* Center and scale the image nicely */
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  position: relative;
}

/* Add styles to the form container */
.container {
  position: absolute;
  right: 10%;
  margin: 50px;
  max-width: 400px;
  padding: 16px;
  background-color:  	#66CDAA;
}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: white;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 1;
}
</style>
<script type="text/javascript">
function validateform(){
var name=document.myform.name.value;
var number=document.myform.contact_no.value;
var email=document.myform.email.value;
var atindex=email.indexOf('@');
var dotindex=email.lastIndexOf('.');
if(atindex<=0 || atindex+1 >= dotindex || dotindex+1 >= email.length-1)
{
alert("please enter a valid email address");
return false;
}
if (name==null || name==""){
alert("Name can't be blank");
return false;
}
else if(number.length>10 || number.length<10){
alert("Contact number must contain 10 digits");
return false;
}
}   
</script>
</head>
<body>
<div class="bg-img">
    <form name="myform" action="contact1.jsp" class="container" onsubmit="return validateform()">
    <h1></h1>
    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter your Name" name="name" required>
    <label for="email"><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>
<label for="email"><b>Contact</b></label>
    <input type="text" placeholder="Enter Mobile Number" name="contact_no" required>
    
    <label for="email"><b>Country</b></label>
    <input type="text" placeholder="Enter Country" name="country" required>
    
    <label for="email"><b>Message</b></label>
    <input type="text" placeholder="Write a message" name="message" required>
  
    <button type="submit" class="btn">Submit</button>
  </form>
</div>      
    </body>