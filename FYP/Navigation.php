<?php
        echo "<h2>Welcome Member : " . $memberinfo['Firstname']." ".$memberinfo['Lastname']  . "</h2><br />";
?>

        <nav id="mainnav">
            <p>

            <div class="grid_7"id="navigation">

        [<a href="memberInfo.php">Your Particulars</a>] 
        
        [
        <?php
        
        
        $sqlQuery = 
            "SELECT  " .
            "FROM child " .
            "WHERE " .
            "UserName = '$loginid'";
        
        $checkchild = mysqli_query($con, $sqlQuery);
        
         if($checkchild == 0){
             $student = $memberinfo['UserName'];
             echo "<a href='viewReport?student=$student.php'>";
         }
        
         else{
         echo '<a href="viewChild.php">';
         }
            ?>
            View Progress Report</a>]
        
        [<a href="handleLogout.php">Logout</a>] 
        </p>
        </nav>
        <br /><br />';
 