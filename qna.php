<?php
    include('connection.php');
      session_start();
      if(!isset($_SESSION['status']))
    {
        header('Location:index.html');
        exit;
    }
     $username = $_SESSION['user2'];
     $branch = $_SESSION['branch1'];
     $username= stripcslashes($username);   
     $username = mysqli_real_escape_string($con,$username); 
     $branch= stripcslashes($branch);   
     $branch = mysqli_real_escape_string($con,$branch);
     $sql = "select name,username,branch from login where username = '$username'";
     $result = mysqli_query($con,$sql);
     $row = mysqli_fetch_array($result);
?>   
<html>
<title>Question and Answers</title>
<head>
<link rel="stylesheet" href="external_css_qna.css">
<style>
.left
{
 text-align : left;
}
#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 15px;
  font-family: "Lucida Console", "Courier New", monospace;
}

#customers tr:hover {background-color: #ddd;}
tr
{
    background-color:#bfcba8;
    color:#464f41;
}
#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #464f41;
  color: white;
  font-family: "Lucida Console", "Courier New", monospace;
}
p
{
    text-align: center;
}
a
{
    text-decoration: none;
}
/* Style the header */
.logout {
    text-align: right;
    font-size: 20px;
}

body {
  overflow-y: scroll; /* Show vertical scrollbar */
  overflow-x: scroll; /* Show horizontal scrollbar */
  color:white;
}
.accordion {
  background-color: #eee;
  color: #444;
  cursor: pointer;
  padding: 18px;
  width: 100%;
  border: none;
  text-align: left;
  outline: none;
  font-size: 15px;
  transition: 0.4s;
}
.active, .accordion:hover {
  background-color: #ccc; 
}

.panel {
  padding: 0 18px;
  display: none;
  background-color: white;
  overflow: hidden;
}
</style>
</head>
<body>
<div class = "header">
<div class='logout'>
<a href="student_page.php" = "right">HOME |</a>
<a href="logout.php" ="right"> LOGOUT</a>
    <form name="f3" action = "<?php echo $_SERVER['PHP_SELF'];?>" method="post">
        <input type = "text" placeholder="search" id ="search" name  = "search"/>  
            
                <input type =  "submit" id = "btn" value = "SEARCH" />  

</form>

    <table id = customers>
    <thead>
    <?php 
    if(!empty($_POST['search']))
    {
        $search =$_POST['search'];
        $sql ="select * from qna where question LIKE '%$search%' ORDER BY qno desc"; 
        $result=mysqli_query($con,$sql);
        $row=mysqli_fetch_array($result);
    
        if(mysqli_num_rows($result)>0)
        {
            echo "<tr>";
            echo "<th>Q.no</th>";
            echo "<th>Asked By</th>";
            echo "<th>QUESTION</th>";
            echo "</tr>";
            
            echo "<td>" . $row['qno'] . "</td>";

            echo "<td>" . $row['qroll'] . "</td>";

            echo "<td>" . $row['question'] . "</td>";
        }
        else
        {
            echo "No Questions found";
        }
    }
        while($row=mysqli_fetch_array($result)):
    ?>
<tbody>
   <tr>
<?php
  echo "<td>" . $row['qno'] . "</td>";

  echo "<td>" . $row['qroll'] . "</td>";

  echo "<td>" . $row['question'] . "</td>";
?>
    </tr><?php endwhile;?>
</tbody>
</table>    
</thead>
<br>
<div class = "left">
    <form name="f3" action = "<?php echo $_SERVER['PHP_SELF'];?>" method="post" >  
                <input type = "text" placeholder="Ask a question" id ="q" name  = "q" /> 
                <input type =  "submit" id = "btn" value = "ASK" />  
</form>
</div>
</div></div>

<?php
  if(!empty($_POST["q"]))
  {
      $var = $_POST["q"];
      $sql = "select qroll from qna where question = '$var'";
      $result=mysqli_query($con,$sql);
      if(mysqli_num_rows($result)==0 and $_SERVER["REQUEST_METHOD"] == "POST")
      {
         $question=$_POST['q'];
         $question = stripcslashes($question); 
         $question = mysqli_real_escape_string($con, $question); 

         $sql = "insert into qna(qroll,question) values('$username','$question')";
         echo "<p>"."Question Asked Successfully"."</p>";
         mysqli_query($con, $sql);          
      }
      else
      {
          $row = mysqli_fetch_array($result);
          $var1= $row["qroll"];
          $sql1 = "select name from login where username= '$var1'";
          $result1=mysqli_query($con,$sql1);
          $row1=mysqli_fetch_array($result1);
          $var2 = $row1["name"];
          echo "<p>"."Similar question already asked by ".$var2."( ".$var1." )"."</p>";
          
      }
      
  }
?>

<form name="f3"  method = "POST" action = "<?php echo $_SERVER['PHP_SELF'];?>">
    <table id = customers>
    <thead>
    <?php 
        $sql="select * from qna ORDER BY qno desc";
        $result=mysqli_query($con,$sql);
        if(mysqli_num_rows($result)>0)
        {
            echo "<tr>";
            echo "<th></th>";
            echo "<th>Q.no</th>";
            echo "<th>Asked By</th>";
            echo "<th>QUESTION</th>";
            echo "</tr>";
        }
        else
        {
            echo "No questions!";
        }
        while($row=mysqli_fetch_array($result)):
    ?>
<tbody>
   <tr>
       <td><input type="radio" name="ticked[]" value="<?php echo $row["qno"];?>"></td> 
<?php
  echo "<td>" . $row['qno'] . "</td>";

  echo "<td>" . $row['qroll'] . "</td>";

  echo "<td>" . $row['question'] . "</td>";
?>
    </tr><?php endwhile;?>
</tbody>
</table>    
</thead>
</br>

    <input type = "text" placeholder="Type your answer here" id ="ans" name  = "ans" />  
    
    <input type =  "submit" id = "btn" value = "ANSWER" /> 

    <p>
        <input type =  "submit" id = "btn1" value = "Check Answers" />
    </p>
</form>

<?php
if(isset($_POST['ticked']))   
    {
       foreach ($_POST["ticked"] as $id)
       {
           if($id)
            { }
           else
               echo "ERROR: Select a question first!";
       }
    }
       if(!empty($_POST['ans']))
       {
           $var = $_POST["ans"];
           $check_duplicate = "select * from ans where ans = '$var' and qno=$id";
           $result=mysqli_query($con,$check_duplicate);
                if(!empty($_POST['ans']) and !empty($_POST['ticked']) and mysqli_num_rows($result)==0 )
                {
                   $ans = $_POST['ans'];
                   $asql = "INSERT into ans(qno,aroll,ans) values ($id,'$username','$ans')";
                   mysqli_query($con,$asql); 
                }
       }
?>

<!--<form name="f3"  method = "POST" action = "checkans.php">-->
     <table id = customers>
    <thead>
<?php
    if(!empty($id))
    {
        $sql="select * from ans where qno = $id";
        $result=mysqli_query($con,$sql);
        if(mysqli_num_rows($result)>0)
        {
            echo "<tr>";
            echo "<th>Q.no</th>";
            echo "<th>Answered By</th>";
            echo "<th>ANSWER</th>";
            echo "</tr>";
        }
        else
        {
            echo "<p>"."Be the first one to answer!"."</p>";
        }
    }
    else
    {
        echo "Select a question first and proceed!";
    }
     while($id and $row=mysqli_fetch_array($result)):   
    ?>
<tbody>
<tr>
<?php
  echo "<td>" . $row['qno'] . "</td>";

  echo "<td>" . $row['aroll'] . "</td>";

  echo "<td>" . $row['ans'] . "</td>";
?>
</tr><?php endwhile;?>
</tbody>
</table>    
</thead>
<?php
mysqli_close($con);
?>
</body>
</html>
   