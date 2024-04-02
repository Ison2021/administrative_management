<!DOCTYPE html>
<html>
<head>
    <title>Budget</title>
    <style>
        table{
            border-collapse: collapse;
            width: 180%;
            color: black;
            font-family: monospace;
            font-size: 15px;
            text-align: center;
        }
        th{
            background-color: cornflowerblue;
            color: white;
        }
        tr:nth-child(even) {background-color: #f2f2f2;}

        body{
    background: url("../vendor/blue.jpg") no-repeat center fixed;
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
    <h2>Budget</h2>
    <h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter budget name.." title="Type in a name"></h4>
<table id="myTable">
    <tr>
        <th>Budget name</th>
        <th>Budget amount</th>
        <th>Budget description</th>
        <th>Budget start date</th>
        <th>Budget end date</th>
        <th>Budget category</th>
        <th>Budget type</th>
        <th>Budget department</th>
        <th>Budget status</th>
        <th>Budget approved by</th>
        <th>Budget approved date</th>
        <th>Budget approved amount</th>


    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT budget_name, budget_amount, budget_description, budget_startDate, budget_endDate, budget_category,
budget_type, budget_department, budget_status, budget_approvedBy, budget_approvedDate,
budget_approvedAmount from g59_budgets";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["budget_name"] ."</td><td>". $row["budget_amount"] ."</td><td>". $row["budget_description"] ."</td>
        <td>". $row["budget_startDate"] ."</td><td>". $row["budget_endDate"] ."</td><td>". $row["budget_category"] ."</td><td>"
        .$row["budget_type"]. "</td><td>". $row["budget_department"] ."</td><td>". $row["budget_status"] ."</td>
        <td>".$row["budget_approvedBy"]. "</td><td>". $row["budget_approvedDate"] ."</td><td>". $row["budget_approvedAmount"] ."</td></tr>";
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