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
        <?php
        $date = time();

        $day = date('d', $date);
        $month = date('m', $date);
        $year = date('Y', $date);

        $first_day = mktime(0, 0, 0, $month, 1, $year);

        $title = date('F', $first_day);

        $day_of_week = date('D', $first_day);

        switch ($day_of_week) {
            case "Sun" : $blank = 0;
                break;
            case "Mon" : $blank = 1;
                break;
            case "Tues" : $blank = 2;
                break;
            case "Wed" : $blank = 3;
                break;
            case "Thu" : $blank = 4;
                break;
            case "Fri" : $blank = 5;
                break;
            case "Sat" : $blank = 6;
        }

        $days_in_month = cal_days_in_month(0, $month, $year);

        echo "<table border=1 width=1000 height=600>";
        echo "<tr><th colspan=60>$title $year</th></tr>";
        echo "<tr><td width=62>Sunday</td><td width=62>Monday</td><td width=62>Tuesday</td>"
        . "<td width=62>Wednesday</td><td width=62>Thursday</td><td width=62>Friday</td>"
         . "<td width=62>Saturday</td></tr>";

        $day_count = 1;

        echo"<tr>";

        while ($blank > 0) {
            echo "<td></td>";
            $blank = $blank - 1;
            $day_count++;
        }

        $day_num = 1;

        while ($day_num <= $days_in_month) {
            echo "<td>$day_num</td>";
            $day_num++;
            $day_count++;

            if ($day_count > 7) {
                echo "</tr><tr>";
                $day_count = 1;
            }
        }

        while ($day_count > 1 && $day_count <= 7) {
            echo "<td></td>";

            $day_count++;
        }

        echo "</tr></table>";
        ?> 
    </body>
</html>
