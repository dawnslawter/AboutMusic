<?php
    if($userinfo['Role'] == 'admin'){
        echo "<h2>Welcome Admin : " . $userinfo['first_name']." ".$userinfo['last_name']  . "</h2><br />";
    }
    else{
        echo "<h2>Welcome Staff : " . $userinfo['first_name']." ".$userinfo['last_name']  . "</h2><br />";
    }
?>
<nav id="mainnav">
    <p>

    <div class="grid_7"id="navigation">

[<a href='adminMain.php'>Main Page</a>] 
[<a href='addData.php'>Add into Data</a>]
[<a href='checkData.php'>Check Data</a>]  
[<a href='handleLogout.php'>Logout</a>] 
</p>
</nav>
<br /><br />