<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=file.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once 'conn.php';
	
	$output = "";
	echo 'CONTRACT INFORMATION';
	$output .="
		<table>
			<thead>
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
			<tbody>";
	
	$query = $conn->query("SELECT contract_title,contract_description,contract_type,contract_status,start_date,end_date,created_at,updated_at from g55_contract") or die(mysqli_errno());
	while($fetch = $query->fetch_array()){
		
	$output .= "
				<tr>
					<td>".$fetch['contract_title']."</td>
					<td>".$fetch['contract_description']."</td>
					<td>".$fetch['contract_type']."</td>
					<td>".$fetch['contract_status']."</td>
					<td>".$fetch['start_date']."</td>
					<td>".$fetch['end_date']."</td>
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
<br>
<?php
	header("Content-Type: application/xls");    
	header("Content-Disposition: attachment; filename=file.xls");  
	header("Pragma: no-cache"); 
	header("Expires: 0");

	require_once 'conn.php';
	
	$output = "";
	echo 'DOCUMENT INFORMATION';
	$output .="
		<table>
			<thead>
				<tr>
                <th>Document name</th>
                <th>Document type</th>
                <th>Document size</th>
                <th>Upload date</th>
                <th>Uploader id</th>
                </tr>
			<tbody>";
	
	$query = $conn->query("SELECT document_name,document_type,document_size,upload_date,uploader_id from g55_document") or die(mysqli_errno());
	while($fetch = $query->fetch_array()){
		
	$output .= "
				<tr>
					<td>".$fetch['document_name']."</td>
					<td>".$fetch['document_type']."</td>
					<td>".$fetch['document_size']."</td>
					<td>".$fetch['upload_date']."</td>
					<td>".$fetch['uploader_id']."</td>
				</tr>
	";
	}
	
	$output .="
			</tbody>
			
		</table>
	";
	
	echo $output;
	
	
?>