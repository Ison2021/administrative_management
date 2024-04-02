<!DOCTYPE html>
<html>
<head>
    <title>Contract and Document information</title>
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
            width: 12%;
            font-size: 14px;
            padding: 6px 10px 6px 20px;
            border: 1px solid #ddd;
            margin-bottom: 0px;
            }
            #myInput1 {
            width: 12%;
            font-size: 14px;
            padding: 6px 10px 6px 20px;
            border: 1px solid #ddd;
            margin-bottom: 0px;
            }
    </style>

</head>
<body>

&ensp;&ensp;&ensp;<a class="btn btn-primary" href="report/docu_contract_report.php">SAVE FILE</a>

<br>
<h2>Contract information</h2>
<h4>Search: <input type="text" id="myInput" onkeyup="myFunction()" placeholder="Enter contract title.." title="Type in a name"></h4>
<table id="myTable">
    <tr>
        <th>Contract title</th>
        <th>Contract description</th>
        <th>Contract type</th>
        <th>Contract status</th>
        <th>Start date</th>
        <th>End date</th>
        <th>Created at</th>
        <th>Updated at</th>


    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT contract_title,contract_description,contract_type,contract_status,start_date,end_date,created_at,updated_at from g55_contract";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["contract_title"] ."</td><td>". $row["contract_description"] ."</td><td>". $row["contract_type"] ."</td>
        <td>". $row["contract_status"] ."</td><td>". $row["start_date"] ."</td><td>". $row["end_date"] ."</td><td>". $row["created_at"] ."</td>
        <td>". $row["updated_at"] ."</td></tr>";
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
<h2>Document information</h2>
<h4>Search: <input type="text" id="myInput1" onkeyup="myFunctions()" placeholder="Enter document name.." title="Type in a name"></h4> 
<table id="myTable1">
    <tr>
        <th>Document name</th>
        <th>Document type</th>
        <th>Document size</th>
        <th>Upload date</th>
        <th>Uploader id</th>


    </tr>
<?php
$con=mysqli_connect("localhost","root","","rkiv_clusterb");
if ($con-> connect_error){
    die("Connection failed:". $con-> connect_error);
}
$sql = "SELECT document_name,document_type,document_size,upload_date,uploader_id from g55_document";
$result = $con-> query($sql);

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<tr><td>". $row["document_name"] ."</td><td>". $row["document_type"] ."</td><td>". $row["document_size"] ."</td>
        <td>". $row["upload_date"] ."</td><td>". $row["uploader_id"] ."</td></tr>";
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