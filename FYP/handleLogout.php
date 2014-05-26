<?php
// start the session
session_start();

// destroy the session
session_destroy();

// redirect to login page
echo 'Logging Out';
header('refresh: 2; index.php');
?>
<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
?>
