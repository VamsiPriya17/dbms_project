<?php
session_start();
    if(!isset($_SESSION['status']))
    {
        header('Location:index.html');
        exit;
    }
    include('connection.php'); 
     $username = $_SESSION['user2'];
        //to prevent from mysqli injection  
        $username= stripcslashes($username);   
        $username = mysqli_real_escape_string($con,$username);  
        $sql = "select name from login where username = '$username'";
        $result = mysqli_query($con,$sql);
        $row = mysqli_fetch_array($result);
      mysqli_close($con);  
?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="external_css_studentpage.css">
<title>login page</title>
</head>

<body>
    
 <div class ="logout">
 <a href="logout.php"  ="right">LOGOUT</a>
 </div>
 
 <div class="header">
 <h4><?php  echo "Welcome,".$row['name'].":)"; ?></h4>
 </div>
 
<div class="grid-container">
      
      <div class="b1" style="background-color:#338f9f;">
          <a href="internships.php">
          <img src="intern.png" alt="Internship" class="image">
        </a>
      </div>

   <div class="b2" style="background-color:#5b8a72;">
       <a href="time_table.php">
          <img src="tt.png" alt="TimeTable" class="image" >
        </a>

     </div>

    <div class="b3" style="background-color:#338f9f;">
        <a href="todo.php">
        <img src="to-do.png" alt="TO-DO" class="image" >
        </a>
    </div>

   
    <div class="b4" style="background-color:#5b8a72;">
         <a href="personal.php">
        <img src="editp.png" alt="EDIT-PROFILE" class="image" >
        </a>
    </div>

    <div class="b5" style="background-color:#338f9f;">
        <a href="qna.php">
        <img src="qa.png" alt="Question and Answer" class="image" >
        </a>
    </div> 

    <div class="b6" style="background-color:#5b8a72;">
        <a href="lost_found.php">
        <img src="lostf.png" alt="Lost & Found" class="image">
        </a>
    </div> 

</div>

 </body>
</html>