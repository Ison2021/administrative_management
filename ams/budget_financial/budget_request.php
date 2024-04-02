<!DOCTYPE html>
<html>
<head>
    <title>Budget request</title>
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
    <h2>Budget request</h2>
    <h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter request name.." title="Type in a name"></h4>
<table id="myTable">
    <tr>
        <th>Request name</th>
        <th>Request amount</th>
        <th>Request category</th>
        <th>Request type</th>
        <th>Request department</th>
        <th>Request budget_code</th>
        <th>Request actualSpending</th>
        <th>Request varianceReason</th>
        <th>Request status</th>
        <th>Request approvedBy</th>
        <th>Request approvedDate</th>
        <th>Request approvedAmount</th>


    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT request_name, request_amount, request_category, request_type, request_department, request_budget_code,
request_actualSpending, request_varianceReason, request_status, request_approvedBy, request_approvedDate,
request_approvedAmount from g59_add_budgets_request";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["request_name"] ."</td><td>". $row["request_amount"] ."</td><td>". $row["request_category"] ."</td>
        <td>". $row["request_type"] ."</td><td>". $row["request_department"] ."</td><td>". $row["request_budget_code"] ."</td><td>"
        .$row["request_actualSpending"]. "</td><td>". $row["request_varianceReason"] ."</td><td>". $row["request_status"] ."</td>
        <td>".$row["request_approvedBy"]. "</td><td>". $row["request_approvedDate"] ."</td><td>". $row["request_approvedAmount"] ."</td></tr>";
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