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
                <th>Last name</th>
        <th>First name</th>
        <th>Middle name</th>
        <th>Date of birth</th>
        <th>Age</th>
        <th>Sex</th>
        <th>Civil status</th>
        <th>Email</th>
        <th>Contact no.</th>
        <th>Address</th>
        <th>Position</th>
        <th>Department</th>
        <th>Work status</th>
        <th>Work type</th>
        <th>Created at</th>
        <th>Updated at</th>
		
                </tr>
			<tbody>
	";
	
	$query = $conn->query("SELECT last_name, first_name, middle_name, date_of_birth, age, sex, civil_status, email, contact_no,
    address, position, department, work_status, work_type, created_at, updated_at FROM `g54_employees`") or die(mysqli_errno());
	while($fetch = $query->fetch_array()){
		
	$output .= "
				<tr>
					<td>".$fetch['last_name']."</td>
					<td>".$fetch['first_name']."</td>
					<td>".$fetch['middle_name']."</td>
					<td>".$fetch['date_of_birth']."</td>
					<td>".$fetch['age']."</td>
					<td>".$fetch['sex']."</td>
                    <td>".$fetch['civil_status']."</td>
                    <td>".$fetch['email']."</td>
					<td>".$fetch['contact_no']."</td>
					<td>".$fetch['address']."</td>
					<td>".$fetch['position']."</td>
					<td>".$fetch['department']."</td>
					<td>".$fetch['work_status']."</td>
                    <td>".$fetch['work_type']."</td>
					<td>".$fetch['created_at']."</td>
                    <td>".$fetch['updated_at']."</td>
				</tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
	
?>