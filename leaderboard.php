<!DOCTYPE html>
<html>
<head>
<title>Leader Board-Marsden Cove Fishing Club</title>
<link rel="stylesheet" href="css/style.css">
   
<style>
  body {
  background-image: url('Images/whangarei-heads-improv.jpg');
  background-repeat: no-repeat;
  background-size: 100% 10%;
}
#table.centre{
    margin-left: auto;
    margin-right: auto;
    }
body {text-align:center;
}  
#members {
  font-size: 25px; 
  border-collapse: collapse;
  width: 100%;
  table-layout: fixed; 
}
#members td, #members th {
  border: 1px solid #f2f2f2;
  padding: 8px;
  background-color: transparent;
  color: white;
}
#members th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: transparent;
  color: black;
  text-shadow:  
    -1px -1px 0 #DBBD5C,
    1px -1px 0 #DBBD5C,
    -1px 1px 0 #DBBD5C,
    1px 1px 0 #DBBD5C;
}
</style>
</head>
  
    

<body>

   <?php include('header.php');?>
    
<div class="section group">
    
	<div class="col span_9_of_9">
        <h1 class="element">ANNUAL LEADERBOARD</h1> 
    
    </div>
</div>
    
<div class="section group">
    <div class="col span_2_of_9">
    </div>
   <div class="col span_5_of_9">
        <h4>Scroll to the bottom for the 2021/2022 results</h4>
    </div>
</div> 
  
<div class="section group">
    
   <div class="col span_9_of_9">
        <h2>2022/2023</h2>
    </div>
</div>
    
<div class="section group">
       <div class="col span_2_of_9">
    </div>
   <div class="col span_5_of_9">
<table class="centre" id="members">
<?php include('setup.php');
    
    
$sql = "SELECT id, title, eventdate FROM `events` WHERE eventdate='2021/2022'";
$result = $conn->query($sql);    
if ($result->num_rows > 0) {
  // output data of each row
  while($row = $result->fetch_assoc()) {
    echo "<tr> <td>" .$row["title"]."</td><td>". $row["eventdate"]."</td></tr>";
      $eventid=$row["id"];
      $sql = "SELECT * FROM `classes` WHERE eventid='$eventid'";
      //print "<td>$sql</td></tr>";
      $result2 = $conn->query($sql);    
      if ($result2->num_rows > 0) {
        // output data of each row
        while($row2 = $result2->fetch_assoc()) {
        //print_r($row2);
                                                
        echo "<tr> <td>" .$row2["species"]."</td><td>". $row2["fisher"]."</td><td>" .$row2["weight"]."</td><td>". $row2["date"]."</td></tr>";
        }
      } else {
        echo "0 results";
      }
 //echo"<br><br>";
  } 
}
    else {
        echo "0 results";
      }

$conn->close();
?>       
</table>
       
  </div>
</div>  
<?php include('footer.php');?>
    
</body>
</html>