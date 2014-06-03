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
        
        
        $loginid = $_SESSION['memberinfo']['Member_ID'];
        $con= getConnection();

            if (mysqli_connect_errno($con)) {
                echo "Failed to connect to MySQL: " . mysqli_connect_error();
            } else {                
                
                 $sqlQuery = 
            "SELECT * " .
            "FROM child " .
            "WHERE " .
            "Member_ID = '$loginid'";
            
              $result = mysqli_query($con, $sqlQuery);
              echo '<table>';
              
              while ($row = mysqli_fetch_array($result)) { // fetch the record
                            $student = $_SESSION['memberinfo']['Member_ID'] . $row['Child_ID'];
                            echo "<tr>
                                <td>$row[First_Name] $row[Last_Name] </td>
                                <td><a href='viewReport.php?student=$student.php'>View Progress</a>
                                    </tr>
                                ";
                        }
                        echo'<table/>';
            }
        ?>
    </body>
</html>
