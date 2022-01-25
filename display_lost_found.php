<!DOCTYPE html>
<head>
<title>LOST AND FOUND</title>
<link rel="stylesheet" href="external_css_lost.css">
</head>

</br></br></br>

<p class="textlost">YOUR ITEMS LOST </p>
<form action="checkbox2.php" method="POST">
    <table class="right">
    <thead>
    
    <?php 
        include('connection.php');
        $user=$_SESSION['user2'];
        $sql="select * from lost where username='$user'";
        $result=mysqli_query($con,$sql);
        if(mysqli_num_rows($result)>0)
        {
            echo "<tr>";
            echo "<th></th>";
            echo "<th>LOST ITEM</th>";
            echo "<th>DESCRIPTION</th>";
            echo "</tr>";
        }
        else
        {
            echo "none of your items are lost!";
        }
        while($row=mysqli_fetch_array($result)):
    ?>
<tbody>
   <tr>
       <td><input type="checkbox" name="ticked[]" value="<?php echo $row["item"];?>"></td>  
       <td><?php echo $row["item"];?></td>
       <td><?php echo $row["des"];?></td>
    </tr><?php endwhile;?>
</tbody>
</table>    
</thead>
</br>
<input type =  "submit" id = "del" value = "DELETE" name="update">
</form>
</html>