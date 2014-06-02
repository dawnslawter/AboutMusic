<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
session_start();

require 'shortcutFunction.php';

$Salt= initSalt();
$loginid  = $_POST['User']; // retrieve the adminid from login form
$password = $_POST['Password']; // retrieve the password from login form

$con = getConnection(); // invoke the getDbConnect() function to get a database connection

if (!(mysqli_connect_errno($con))) { // connection to database is successful
    $sqlQueryStr1 =
            "SELECT Role " .
            "FROM login " .
            "WHERE  " .
            "UserName = '$loginid' AND " .
            "Password = AES_ENCRYPT('$password', '$Salt')";

    $role = mysqli_query($con, $sqlQueryStr1); // execute the SQL query



    if ($row1 = mysqli_fetch_array($role)) { // fetch the record
        $user = $row1;
        if($user['Role'] == 'member'){
            $sqlQueryStr2 =
            "SELECT * " .
            "FROM member_data " .
            "WHERE " .
            "UserName = '$loginid'";
            
            
            $result = mysqli_query($con, $sqlQueryStr2); // execute the SQL query
           
            if($row3 = mysqli_fetch_array($result)){
                $_SESSION['memberinfo'] = $row3; // put the record into the session
                header('Location: memberInfo.php'); // redirect to the homepage.
            }
        }
        else {
            $sqlQueryStr2 =
            "SELECT * " .
            "FROM staff_data SD, login L " .
            "WHERE  " .
            "staff_id = '$loginid' AND " .
            "SD.staff_id = L.UserName";
            
            $result = mysqli_query($con, $sqlQueryStr2); // execute the SQL query
           
            if($row2 = mysqli_fetch_array($result)){
                $_SESSION['userinfo'] = $row2; // put the record into the session
                header('Location: staffInfo.php'); // redirect to the homepage.
            }
        }
    } 
    else {
        echo "Wrong Password or Non-existing User";
        //header('refresh: 2; index.php'); // redirect to the login page.
    }
    mysqli_close($con); // close database connection
} else {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    //header('refresh: 2; index.php');
}
?>
