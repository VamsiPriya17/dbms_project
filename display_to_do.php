<!DOCTYPE html>
<html>
<head>
<style>
table, td, th {
  border: 1px solid black;
}

table {
  width: 50%;
  border-collapse: collapse;
}
</style>
</head>
<title>display page</title>

</br></br></br>

<form action="checkbox.php" method="POST">
    <table>
    <thead>
    
    <?php 
        include('connection.php');
        $user=$_SESSION['user2'];
        $sql="select assignment,dt from todo where username='$user' order by dt";
        $result=mysqli_query($con,$sql);
        if(mysqli_num_rows($result)>0)
        {
            echo "<tr>";
            echo "<th></th>";
            echo "<th>ASSIGNMENT</th>";
            echo "<th>DEADLINE</th>";
            echo "</tr>";
        }
        else
        {
            echo "Wohoooo no pending works!";
        }
        while($row=mysqli_fetch_array($result)):
    ?>
<tbody>
   <tr>
       <td><input type="checkbox" name="ticked[]" value="<?php echo $row["assignment"];?>"></td>  
       <td><?php echo $row["assignment"];?></td> 
       <td><?php echo $row["dt"];?></td> 
    </tr><?php endwhile;?>
</tbody>
</table>    
</thead>
</br>
<input type =  "submit" id = "del" value = "Delete" name="update">
</form>
</html>