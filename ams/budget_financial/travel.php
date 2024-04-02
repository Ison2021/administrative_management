<!DOCTYPE html>
<html>
<head>
    <title>Travel</title>
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
    <h2>Travel</h2>
    <h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter track no.." title="Type in a name"></h4>
<table id="myTable">
    <tr>
        <th>Track no.</th>
        <th>Transportation</th>
        <th>Accommodation</th>
        <th>Meal</th>
        <th>Other expenses amount</th>
        <th>Total</th>
        <th>Other expenses</th>
        <th>Attachments</th>
        <th>Date</th>


    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT tr_track_no, transportation, accommodation, meal, other_expenses_amount, 
total, other_expenses, attachments, date from g59_travel_expenses";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["tr_track_no"] ."</td><td>". $row["transportation"] ."</td>
        <td>". $row["accommodation"] ."</td><td>". $row["meal"] ."</td>
        <td>".$row["other_expenses_amount"]. "</td><td>". $row["total"] ."</td>
        <td>". $row["other_expenses"] ."</td><td>". $row["attachments"] ."</td><td>". $row["date"] ."</td></tr>";
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