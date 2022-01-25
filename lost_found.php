<?php
session_start();
    if(!isset($_SESSION['status']))
    {
        header('Location:index.html');
        exit;
    }
?>
<!DOCTYPE html>
<html>
<head>
<title>LOST AND FOUND</title>
<link rel="stylesheet" href="external_css_lost.css">
</head>

<div class="logout">
  <a href="student_page.php">HOME |</a>
 <a href="logout.php"> LOGOUT</a>
 </div>

</br>

<p class="textlost">ITEMS LOST</p>
    <table class="right">
    <thead>
    
    <?php 
        include('connection.php');
        $user=$_SESSION['user2'];
        $sql="select * from lost";
        $result=mysqli_query($con,$sql);
        if(mysqli_num_rows($result)>0)
        {
            echo "<tr>";
            echo "<th>USER</th>";
            echo "<th>LOST ITEM</th>";
            echo "<th>DESCRIPTION</th>";
            echo "</tr>";
        }
        else
        {
            echo "No items are lost!";
        }
        while($row=mysqli_fetch_array($result)):
    ?>
    </thead>
<tbody>
   <tr>
       <td><?php echo $row["username"];?></td>
       <td><?php echo $row["item"];?></td>
       <td><?php echo $row["des"];?></td>
    </tr><?php endwhile;?>
</tbody>
</table> 

</br></br></br></br></br>
<form name="f3" action="insert_lost.php" method = "POST" class="works" >  
            <p>  
                <label> ITEM LOST: </label>  
                <input type = "text" id ="item" name  = "item" />  
            </p> 
            
            <p>  
                <label> DESCRIPTION: </label>  
                <input type = "text" id ="desc" name  = "desc" />  
            </p> 
            
            <p>     
                <input type =  "submit" id = "btn" value = "INSERT" />  
            </p>  
 
</form> 
        <div class="centered">
        <?php 
            include('display_lost_found.php');
        ?>
        </div>
       
</html>