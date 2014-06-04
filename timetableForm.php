<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
       <form action="handletimetable.php" method="POST">
            <table>
                <tr>
                    <td>LessonID:</td>
                    <td>: <input type="text" name="lessonID"size="50"/></td>    
                </tr>
                <tr>
                    <td>StaffID:</td>
                    <td>: <input type="text" name="staffID" size="50" /></td>    
                </tr>
                <tr>
                    <td>Duration:</td>
                    <td>: <input type="text" name="duration" size="50"/></td>    
                </tr>
                <tr>
                    <td>CourseID:</td>
                    <td>: <input type="text" name="courseID" size="50"/></td>    
                </tr>
                <tr>
                    <td>Venue:</td>
                    <td>: <input type="text" name="venue" size="50"/></td>    
                </tr>
                <tr>
                    <td>Date Scheduled:</td>
                    <td>: <input type="text" name="date_scheduled" size="50" /></td>    
                </tr>
                <tr>
                    <td>Time Scheduled:</td>
                    <td>: <input type="text" name="time_scheduled" size="50" /></td>    
                </tr>
                  <tr>
                    <td>Type:</td>
                    <td>: <input type="text" name="type" size="50" /></td>    
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td align="right"><input type="submit" name="submit" value="Add"/></td>    
                </tr>
            </table>
        </form> 
    </body>
</html>
