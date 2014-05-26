<?php
// start a session
session_start();

if (isset($_SESSION['userinfo'])) { // basicinfo exist in session
    $userinfo = $_SESSION['userinfo']; // get basicinfo from session
} else {
    header('Location: index.php'); // redirect to the login page.
}
?>