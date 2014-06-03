<!--
To change this template, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<?php
// require the checkLoginStatus.php file
require 'checkStfLogin.php';

?>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <?php
            include "staffNav.php"
        ?>
        <h2>What do you want to check?</h2>
        <table>
            <tr>
                <td><a href ="viewMember.php">Member</a></td>
            </tr>
            <tr>
                <td><a href ="viewChild.php">Child</a></td>
            </tr>
            <tr>
                <td><a href ="viewStaff.php">Staff</a></td>
            </tr>
            <tr>
                <td><a href ="viewCourse.php">Course</a></td>
            </tr>
            
            
        </table>
    </body>
</html>
