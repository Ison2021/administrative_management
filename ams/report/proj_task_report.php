<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=file.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once 'conn.php';
	
	$output = "";
	echo 'Projects information';
	$output .="
		<table>
			<thead>
				<tr>
				<th>Name</th>
				<th>Project title</th>
				<th>Contact number</th>
				<th>Budget</th>
				<th>Deadline</th>
				<th>Location</th>
				<th>is Active</th>						
				</tr>
			<tbody>";
	
	$query = $conn->query("SELECT name, projectTitle, contactNumber, budget, deadline, location, is_active from g57_projects") or die(mysqli_errno());
	while($fetch = $query->fetch_array()){
		
	$output .= "
				<tr>
					<td>".$fetch['name']."</td>
					<td>".$fetch['projectTitle']."</td>
					<td>".$fetch['contactNumber']."</td>
					<td>".$fetch['budget']."</td>
					<td>".$fetch['deadline']."</td>
					<td>".$fetch['location']."</td>
                    <td>".$fetch['is_active']."</td>
				</tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
	
?>
<br>
<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=file.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once 'conn.php';
	
	$output = "";
	echo 'Tasks information';
	$output .="
		<table>
			<thead>
				<tr>
				<th>Project task</th>
				<th>Priority</th>
				<th>Assign</th>
				<th>Deadline</th>
				<th>Submitter</th>
				<th>Other</th>
				<th>Date</th>
				<th>Status</th>
				</tr>
			<tbody>";
	
	$query = $conn->query("SELECT projectTask, priority, assign, deadline, submitter, other, date, status from g57_tasks") or die(mysqli_errno());
	while($fetch = $query->fetch_array()){
		
	$output .= "
				<tr>
					<td>".$fetch['projectTask']."</td>
					<td>".$fetch['priority']."</td>
					<td>".$fetch['assign']."</td>
					<td>".$fetch['deadline']."</td>
					<td>".$fetch['submitter']."</td>
					<td>".$fetch['other']."</td>
					<td>".$fetch['date']."</td>
					<td>".$fetch['status']."</td>

				</tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
	
?>