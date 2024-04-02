<!DOCTYPE html>
<html>
<head>
    <title>Account recievable</title>
    <style>
        table{
            border-collapse: collapse;
            width: 100%;
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
            width: 12%;
            font-size: 14px;
            padding: 6px 10px 6px 20px;
            border: 1px solid #ddd;
            margin-bottom: 0px;
            }
    </style>
</head>
<body>
    <h2>Account recievable</h2>
    <h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter recievable name.." title="Type in a name"></h4>
<table id="myTable">
    <tr>
        <th>Recievable info</th>
        <th>Recievable name</th>
        <th>Recievable invoice date</th>
        <th>Recievable amount</th>
        <th>Recievable due date</th>
        <th>Recievable type</th>
        <th>Recievable department</th>
        <th>Recievable category</th>

    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT recievable_info, recievable_name, recievable_invoice_date, recievable_amount, recievable_due_date, recievable_type,
recievable_department, recievable_category from g59_accounts_recievable";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["recievable_info"] ."</td><td>". $row["recievable_name"] ."</td><td>" 
        . $row["recievable_invoice_date"] ."</td><td>". $row["recievable_amount"] ."</td><td>". $row["recievable_due_date"] ."</td><td>"
        .$row["recievable_type"]. "</td><td>". $row["recievable_department"] ."</td><td>". $row["recievable_category"] ."</td></tr>";
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
    td = tr[i].getElementsByTagName("td")[1];
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