<?php
    if($userinfo['Role'] == 'admin'){
        echo "<h2>Welcome Admin : " . $userinfo['first_name']." ".$userinfo['last_name']  . "</h2><br />";
    }
    else{
        echo "<h2>Welcome Staff : " . $userinfo['first_name']." ".$userinfo['last_name']  . "</h2><br />";
    }
?>
<?php
    if($userinfo['Role'] == 'admin'){
        echo '
        <nav id="mainnav">
            <p>

            <div class="grid_7"id="navigation">

        [ <a href="staffInfo.php">Your Particulars</a> ] 
        [ <a href="addData.php">Register New Data</a> ]
        [ <a href="checkData.php">View Existing Data</a> ]
        [ <a href="schedLesson.php">Schedule Lesson</a> ]
        [ <a href="handleLogout.php">Logout</a> ] 
        </p>
        </nav>
        <br /><br />';
    }
    else {
        echo '
        <nav id="mainnav">
            <p>

            <div class="grid_7"id="navigation">

        [ <a href="staffInfo.php">Your Particulars</a> ] 
        [ <a href="addData.php">Take Attendance</a> ]
        [ <a href="checkData.php">Courses Teaching</a> ]  
        [ <a href="handleLogout.php">Logout</a> ] 
        </p>
        </nav>
        <br /><br />';
    }
?>