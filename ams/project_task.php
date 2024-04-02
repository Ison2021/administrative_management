<!DOCTYPE html>
<html>
<head>
    <title>Projects and Tasks information</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/buttons/3.0.1/css/buttons.dataTables.css">
    <style>
        table{
            border-collapse: collapse;
            width: 100%;
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
            #myInput {
            width: 10%;
            font-size: 14px;
            padding: 6px 10px 6px 20px;
            border: 1px solid #ddd;
            margin-bottom: 0px;
            }

            #myInput1 {
            width: 10%;
            font-size: 14px;
            padding: 6px 10px 6px 20px;
            border: 1px solid #ddd;
            margin-bottom: 0px;
            }
    </style>

</head>
<body>
<div>
&ensp;&ensp;&ensp;<a class="btn btn-primary" href="report/proj_task_report.php">SAVE FILE</a>
    </div>
<h2>Projects information </h2> 
<h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter name.." title="Type in a name"></h4>   
<table id="myTable">
    <tr>
        <th>Name</th>
        <th>Project title</th>
        <th>Contact number</th>
        <th>Budget</th>
        <th>Deadline</th>
        <th>Location</th>
        <th>is Active</th>


    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT name, projectTitle, contactNumber, budget, deadline, location, is_active from g57_projects";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["name"] ."</td><td>". $row["projectTitle"] ."</td><td>". $row["contactNumber"] ."</td>
        <td>". $row["budget"] ."</td><td>". $row["deadline"] ."</td><td>". $row["location"] ."</td><td>". $row["is_active"] ."</td></tr>";
    }
    echo"</table>";
}
else {
    echo "0 result";
}
$con-> close();
?>
<script>
function myFunction() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
</table>

<br>
<h2>Tasks information </h2>
<h4>Search: <input type="text" id="myInput1" onkeyup="myFunctions()" placeholder="Enter project task.." title="Type in a name"></h4> 
<table id="myTable1">
    <tr>
        <th>Project task</th>
        <th>Priority</th>
        <th>Assign</th>
        <th>Deadline</th>
        <th>Submitter</th>
        <th>Other</th>
        <th>Date</th>
        <th>Status</th>


    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT projectTask,priority,assign,deadline,submitter,other,date,status from g57_tasks";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["projectTask"] ."</td><td>". $row["priority"] ."</td><td>". $row["assign"] ."</td>
        <td>". $row["deadline"] ."</td><td>". $row["submitter"] ."</td><td>". $row["other"] ."</td><td>". $row["date"] ."</td>
        <td>". $row["status"] ."</td></tr>";
    }
    echo"</table>";
}
else {
    echo "0 result";
}
$con-> close();
?>
<script>
function myFunctions() {
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput1");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable1");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
</table>
</body>
</html>