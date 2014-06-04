<html>
    <head>
        <title></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <?php
        require 'shortcutFunction.php';
        
        //post ID 
         
        $lessonID = $_POST['lessonID'];
        $staffID = $_POST['staffID'];
        $duration = $_POST['duration'];
        $courseID = $_POST['courseID'];
        $venue = $_POST['venue'];
        $date_scheduled = $_POST['date_scheduled'];
        $time_scheduled = $_POST['time_scheduled'];
        $type = $_POST['type']; 
        
        $con = getConnection(); // get database connection
        $SALT= initSalt();
        
        if (!mysqli_connect_errno($con)) { // connection to database is successful
           $sqlQueryStr =
                   "INSERT INTO timetable  " .
                   "(LessonID , StaffID , Duration , CourseID , Venue , DateScheduled , TimeScheduled , Type) " .
                   "VALUES " .
                   "( '$lessonID' , '$staffID' , '$duration' ,  '$courseID' , '$venue' , '$date_scheduled' , '$time_scheduled' , '$type'  )";
           
              mysqli_query($con, $sqlQueryStr);
              
                if (!mysqli_query($con, $sqlQueryStr)) {
                    die('Error: ' . mysqli_error($con));
                }else{
                echo "1 record added";
                mysqli_close($con);
                }   
           }
        
       ?>
    </body>
</html>
