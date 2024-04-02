<!DOCTYPE html>
<html>
<head>
    <title>Income</title>
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
            width: 10%;
            font-size: 14px;
            padding: 6px 10px 6px 20px;
            border: 1px solid #ddd;
            margin-bottom: 0px;
            }
    </style>
</head>
<body>
    <h2>Income</h2>
    <h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter income name.." title="Type in a name"></h4>
<table id="myTable">
    <tr>
        <th>Income info</th>
        <th>Income name</th>
        <th>Income amount</th>
        <th>Income date</th>
        <th>Income type</th>
        <th>Income department</th>
        <th>Income category</th>

    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT income_info, income_name, income_amount, income_date, income_type,
income_department, income_category from g59_income_statement";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["income_info"] ."</td><td>". $row["income_name"] ."</td>
        <td>". $row["income_amount"] ."</td><td>". $row["income_date"] ."</td>
        <td>".$row["income_type"]. "</td><td>". $row["income_department"] ."</td>
        <td>". $row["income_category"] ."</td></tr>";
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