<?php      
    $host = "sql313.epizy.com";  
    $user = "epiz_28358753";  
    $password = 'AzlBYGiNAB0owtj';  
    $db_name = "epiz_28358753_project";  
      
    $con = mysqli_connect($host, $user, $password, $db_name);  
    if(mysqli_connect_errno()) {  
        die("Failed to connect with MySQL: ". mysqli_connect_error());  
    } ?>