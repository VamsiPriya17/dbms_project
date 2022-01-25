<?php 
    include('connection.php');
    
    $item=$_POST['item'];
    $des=$_POST['desc'];
    session_start();
    $user=$_SESSION['user2'];

    //to prevent from mysqli injection  
    $user = stripcslashes($user);   
    $item = stripcslashes($item);  
    $des = stripcslashes($des); 

    $user = mysqli_real_escape_string($con, $user); 
    $item= mysqli_real_escape_string($con, $item); 
    $des=mysqli_real_escape_string($con, $des);
  
    $sql = "insert into lost values('$user','$item','$des')";  
    mysqli_query($con, $sql);
    
    header('Location:lost_found.php');
    exit;
    
    mysqli_close($con);

?>