<!DOCTYPE html>
<html>
<head>
    <title>Travel request</title>
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
    <h2>Travel request</h2>
    <h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter project title.." title="Type in a name"></h4>
<table id="myTable">
    <tr>
        <th>Destination</th>
        <th>Project title</th>
        <th>Start date</th>
        <th>End date</th>
        <th>Purpose</th>
        <th>Estimated amount</th>
        <th>Attachment</th>
        <th>Notes</th>
        <th>Track no.</th>
        <th>Status</th>
        <th>Approver</th>

    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT destination, project_title, start_date, end_date, purpose, estimated_amount,
attachment, notes, tr_track_no, status, approver from g59_travel_requests";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["destination"] ."</td><td>". $row["project_title"] ."</td>
        <td>". $row["start_date"] ."</td><td>". $row["end_date"] ."</td>
        <td>".$row["purpose"]. "</td><td>". $row["estimated_amount"] ."</td>
        <td>". $row["attachment"] ."</td><td>". $row["notes"] ."</td><td>". $row["tr_track_no"] ."</td>
        <td>". $row["status"] ."</td><td>". $row["approver"] ."</td></tr>";
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