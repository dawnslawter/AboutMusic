<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
date_default_timezone_set('Asia/Singapore');
function getConnection() {
    // get a database connect to studentacad database
    $con = mysqli_connect("localhost:8080", "abtMusic01", "abtMusic01", "aboutmusic");
    return $con;
    
}



function initSalt(){
    $Salt ='aboutMusic';
    return $Salt;
    
}
?>
