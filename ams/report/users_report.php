<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=file.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once 'conn.php';
	
	$output = "";
	$output .="
		<table>
			<thead>
				<tr>
                <th>First name</th>
        		<th>Last name</th>
        		<th>Email</th>
        		<th>Phone number</th>
        		<th>Role</th>
        		<th>Position</th>
        		<th>Department</th>
		
                </tr>
			<tbody>
	";
	
	$query = $conn->query("SELECT first_name, last_name, email, phone_number, role_name, position, department FROM `users`") or die(mysqli_errno());
	while($fetch = $query->fetch_array()){
		
	$output .= "
				<tr>
					<td>".$fetch['first_name']."</td>
					<td>".$fetch['last_name']."</td>
					<td>".$fetch['email']."</td>
					<td>".$fetch['phone_number']."</td>
					<td>".$fetch['role_name']."</td>
					<td>".$fetch['position']."</td>
                    <td>".$fetch['department']."</td>
					
				</tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
	
?>