<?php
$conn = mysqli_connect("localhost","root","","rkiv_clusterb") ;

if (!$conn)
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
?>