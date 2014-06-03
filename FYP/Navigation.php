<?php
        echo "<h2>Welcome Member : " . $memberinfo['First_Name']." ".$memberinfo['Last_Name']  . "</h2><br />";
?>

        <nav id="mainnav">
            <p>

            <div class="grid_7"id="navigation">

        [ <a href="memberInfo.php">Your Particulars</a> ] 
        
        [
        <?php
        require 'shortcutFunction.php';
        $con = getConnection();
        $loginid = $memberinfo['Member_ID'];
        
        
        $sqlQuery = 
            "SELECT * " .
            "FROM child " .
            "WHERE " .
            "Member_ID = '$loginid'";
        
        $checkchild = mysqli_query($con, $sqlQuery);
        $numrow = mysqli_fetch_array($checkchild);
        
        
        
        
         if($numrow==null){
             $student = $memberinfo['Member_ID'];
             echo "<a href='viewReport.php?student=$student.php'>";
         }
        
         else{
            echo '<a href="viewChild.php">';
         }
            ?>
            View Progress Report</a> ]
        
        [ <a href="handleLogout.php">Logout</a> ] 
        </p>
        </nav>
        <br /><br />
 