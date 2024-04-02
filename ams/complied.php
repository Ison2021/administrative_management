<!DOCTYPE html>
<html>
<head>
    <title>Complied information</title>
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
    </style>

</head>
<body>
<div>
&ensp;&ensp;&ensp;<a class="btn btn-primary" href="report/export_excel.php">SAVE FILE</a>
    </div>
<h2>Complied information</h2>  
<h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter module name.." title="Type in a name"></h4>
<table id="myTable">
    <tr>
        <th>Module name</th>
        <th>Department</th>
        <th>Description</th>
        <th>Date and Time</th>
        <th>Status</th>

    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT modulename, department, description, xdatetime, xstat from g58_compliance_regulatory";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["modulename"] ."</td><td>". $row["department"] ."</td><td>". $row["description"] ."</td>
        <td>". $row["xdatetime"] ."</td><td>". $row["xstat"] ."</td></tr>";
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