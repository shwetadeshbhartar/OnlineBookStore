<!DOCTYPE html>
<html>
<head>
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
  background-image: url("il_fullxfull.758105536_l9sy.jpg");

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
  right: 0;
  margin: 20px;
  max-width: 500px;
  padding: 5px;
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

/* Set a style for the submit button */
.btn {
  background-color: #4CAF50;
  color: blue;
  padding: 16px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.btn:hover {
  opacity: 0.3;
}

.button {
  display: inline-block;
  border-radius: 25px;
  background-color:#3399ff;
  border: none;
  color:white;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 100px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 10px;
}

.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover span {
  padding-right: 25px;
}

.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>
</head>
<body>


<div class="bg-img">
  <form action="add book.jsp" class="container">
      Book Id<input type="text" name="book_id" placeholder="Enter Book Id"><br>
      Book Name<input type="text" name="book_name" placeholder="Enter Book Name"><br>
      Book description<input type="text" name="book_desc" placeholder="Enter Description"><br>
      Book Category<input type="text" name="book_category" placeholder="Enter Category"><br>
      Book Author<input type="text" name="book_author" placeholder="Enter Author Name"><br>
      Book Price<input type="text" name="book_price" placeholder="Enter Price"><br>
      Book Quantity<input type="text" name="book_quantity" placeholder="Enter Quantity"><br>
            <button class="button" style="vertical-align:middle"><span>Add</span></button>
            </form>
</div>

</body>
</html>
