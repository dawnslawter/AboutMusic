<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<?php
// require the checkLoginStatus.php file
require 'checkLogin.php';

?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            include "Navigation.php"
        ?>
        <?php
        // put your code here
        $student = isset($_GET['student']) ? $_GET['student'] : 1;
        
        echo "Report is working!!";
        $loginid = $SESSION['memberinfo']['Username'];
        
        echo $loginid;
        
         $sqlQuery = 
            "SELECT  " .
            "FROM child " .
            "WHERE " .
            "UserName = '$student'";
         
        
        ?>
    </body>
</html>
