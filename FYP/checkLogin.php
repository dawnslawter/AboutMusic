<?php
// start a session
session_start();

if (isset($_SESSION['memberinfo'])) { // basicinfo exist in session
    $memberinfo = $_SESSION['memberinfo']; // get basicinfo from session
} else {
    echo 'Time Out';
    header('refresh: 2; index.php'); // redirect to the login page.
}
?>