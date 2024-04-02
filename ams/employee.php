<!DOCTYPE html>
<html>
<head>
    <title>Employee Information</title>
    <style>
        table{
            border-collapse: collapse;
            width: 180%;
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
    </style>
</head>
<body>
<div>
&ensp;&ensp;&ensp;<a class="btn btn-primary" href="report/emp_report.php">SAVE FILE</a>
    </div>

    <h2>Employee information </h2>
    <h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter last name.." title="Type in a name"></h4>
<table id="myTable">
    <tr>
        <th>Last name</th>
        <th>First name</th>
        <th>Middle name</th>
        <th>Date of birth</th>
        <th>Age</th>
        <th>Sex</th>
        <th>Civil status</th>
        <th>Email</th>
        <th>Contact no.</th>
        <th>Address</th>
        <th>Position</th>
        <th>Department</th>
        <th>Work status</th>
        <th>Work type</th>
        <th>Created at</th>
        <th>Updated at</th>
    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT last_name, first_name, middle_name, date_of_birth, age, sex, civil_status, email, contact_no,
address, position, department, work_status, work_type, created_at, updated_at from g54_employees";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["last_name"] ."</td><td>". $row["first_name"] ."</td><td>" 
        . $row["middle_name"] ."</td><td>". $row["date_of_birth"] ."</td><td>". $row["age"] ."</td><td>"
        .$row["sex"]. "</td><td>". $row["civil_status"] ."</td><td>". $row["email"] ."</td><td>". $row["contact_no"] ."</td>
        <td>". $row["address"] ."</td><td>". $row["position"] ."</td><td>". $row["department"] ."</td><td>". $row["work_status"] ."</td>
        <td>". $row["work_type"] ."</td><td>". $row["created_at"] ."</td><td>". $row["updated_at"] ."</td></tr>";
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
</body>
</html>