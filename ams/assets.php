<!DOCTYPE html>
<html>
<head>
    <title>Assets Information</title>
    <style>
        table{
            border-collapse: collapse;
            width: 150%;
            color: black;
            font-family: monospace;
            font-size: 15px;
            text-align: left;
        }
        th{
            background-color: cornflowerblue;
            color: white;
        }
        tr:nth-child(even) {background-color: #f2f2f2;}

        body{
    background: url("./vendor/blue.jpg") no-repeat center fixed;
    background-size: cover;
}
    </style>
</head>
<body>

&ensp;&ensp;&ensp;<a class="btn btn-primary" href="report/assets_report.php">SAVE FILE</a>
    
<br>
<h4>Assets information</h4>    

<table>
    <tr>
        <th>Asset name</th>
        <th>Category</th>
        <th>Purchase date</th>
        <th>Purchase cost</th>
        <th>Current condition</th>
        <th>Location</th>
        <th>Assigned user id</th>
        <th>Maintenance history</th>
        <th>Depreciation rate</th>
        <th>Useful life</th>
        <th>Depreciation method</th>
        <th>Created at</th>
        <th>Updated at</th>

    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT asset_name,  category, purchase_date, purchase_cost, current_condition, location, assigned_user_id,
maintenance_history, depreciation_rate, useful_life, depreciation_method, created_at, updated_at from g52_assets";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["asset_name"] ."</td><td>". $row["category"] ."</td><td>" 
        . $row["purchase_date"] ."</td><td>". $row["purchase_cost"] ."</td><td>". $row["current_condition"] ."</td><td>"
        .$row["location"]. "</td><td>". $row["assigned_user_id"] ."</td><td>". $row["maintenance_history"] ."</td>
        <td>". $row["depreciation_rate"] ."</td><td>". $row["useful_life"] ."</td><td>". $row["depreciation_method"] ."</td>
        <td>". $row["created_at"] ."</td><td>". $row["updated_at"] ."</td></tr>";
    }
    echo"</table>";
}
else {
    echo "0 result";
}
$con-> close();
?>
</table>
</body>
</html>