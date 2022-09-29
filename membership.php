<!DOCTYPE html>
<html>
<head>
<title>Membership Form-Marsden Cove Fishing Club</title>
<link rel="stylesheet" href="css/style.css">
   
<style>
  body {
  background-image: url('Images/whangarei-heads-improv.jpg');
  background-repeat: no-repeat;
  background-size: 100% 12%;
}
    * {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #000;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #DBBD5C;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: center;
}

input[type=submit]:hover {
  background-color: #DBBD5C;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
    
.cell {
    display: table-cell;
    padding: 0 15px;
    vertical-align: inherit;
    width: 100%;
}
    
.cell:first-of-type {
    padding-left:0
}
    
.cell:last-of-type {
    padding-right:0
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media only screen and (max-width: 600px) {
	.col {  margin: 1% 0 1% 0%; }
	.span_1_of_9, .span_2_of_9, .span_3_of_9, .span_4_of_9, .span_5_of_9, .span_6_of_9, .span_7_of_9, .span_8_of_9, .span_9_of_9 { width: 100%; }
}
</style>
</head>
<body>
    <?php include('header.php');?>
    
   <div class="section group"> 
    
    <div class="col span_2_of_9"> </div>
    
<div class="col span_5_of_9">


<h2>Membership Form</h2>

<div class="container">
  <form action="action_page.php" method="post">
  <div class="cell:first-of-type">
    <div class="col-25">
      <label for="fname">First Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="fname" name="firstname" placeholder="Your name..">
    </div>
  </div>
  <div class="cell:last-of-cell">
    <div class="col-25">
      <label for="lname">Last Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="lname" name="lastname" placeholder="Your last name..">
    </div>
  </div>
    </form>
    </div>
    
<div class="container">
  <form action="action_page.php" method="post">      
 <div class="row">
    <div class="col-25">
      <label for="address">Address</label>
    </div>
    <div class="col-75">
      <input type="text" id="address" name="address" placeholder="Your address..">

    </div>
  </div>
    </form>
</div>

<div class="container">
  <form action="action_page.php" method="post">
  <div class="cell:first-of-type">
    <div class="col-25">
      <label for="fname">City</label>
    </div>
    <div class="col-75">
      <input type="text" id="city" name="city" placeholder="Your city..">
    </div>
  </div>
  <div class="cell:last-of-cell">
    <div class="col-25">
      <label for="lname">Post Code</label>
    </div>
    <div class="col-75">
      <input type="text" id="pcode" name="postcode" placeholder="Your post code..">
    </div>
  </div>
    </form>
    </div>
    
<div class="container">
  <form action="action_page.php" method="post">      
 <div class="row">
    <div class="col-25">
      <label for="email">Email</label>
    </div>
    <div class="col-75">
      <input type="text" id="email" name="email" placeholder="Your email..">

    </div>
  </div>
    </form>
</div>
    
<div class="container">
  <form action="action_page.php" method="post">      
 <div class="row">
    <div class="col-25">
      <label for="mobilephone">Mobile Phone</label>
    </div>
    <div class="col-75">
      <input type="text" id="mphone" name="mobilephone" placeholder="Your Mobile..">

    </div>
  </div>
    </form>
</div>
    
<div class="container">
  <form action="action_page.php" method="post">      
 <div class="row">
    <div class="col-25">
      <label for="phone">Phone</label>
    </div>
    <div class="col-75">
      <input type="text" id="phone" name="phone" placeholder="Your phone..">

    </div>
  </div>
    </form>
</div>
  
  <br>
    
  <div class="row">
    <input type="submit" value="Submit">
  </div>
  
</div>
    </div>
    
<div class="col span_2_of_9">
    </div>

  <?php include('footer.php');?>
    
</body>
</html>