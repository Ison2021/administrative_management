
@extends('layouts.master')

@section('title', 'Default')

@section('css')
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/animate.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('assets/css/vendors/prism.css') }}">
@endsection

@section('style')
@endsection

@section('breadcrumb-title')

@endsection

@section('breadcrumb-items')
    <li class="breadcrumb-item">Dashboard</li>
    <li class="breadcrumb-item active">Default</li>
@endsection

@section('content')

<div class="container-fluid">
	<div class="row widget-grid">
	  <div class="col-xxl-4 col-sm-6 box-col-6">
		<div class="card profile-box">
		  <div class="card-body">
			<div class="media">
			  <div class="media-body"> 
				<div class="greeting-user">
</script>

				  <h5 class="f-w-600">Welcome to Administrative Management System</h5>
				  <div class="whatsnew-btn"><a href="http://localhost/ams/users.php" target="_blank" class="btn btn-white" data-bs-original-title="" title="">Users</a></div>
				  <div class="whatsnew-btn"><a href="http://localhost/ams/calendar-event/index.php" target="_blank" class="btn btn-white" data-bs-original-title="" title="">Calendar Event</a></div>
				</div>
			  </div> 
			 
			</div>
			<div class="cartoon"><img class="img-fluid" src="https://laravel.pixelstrap.com/cuba/assets/images/dashboard/cartoon.svg" alt="vector women with leptop"></div>
		  </div> 
		</div>
	  </div>
	  <style>
		#b1 {background-color: transparent; height:30px; width: 100%;}
		#bb1 {background-color: transparent; height:30px; width: 60%;}
		#bb2 {background-color: transparent; height:30px; width: 20%;}

		</style>
	  <div class="col-xxl-auto col-xl-3 col-sm-6 box-col-6"> 
		<div class="row"> 
		  <div class="col-xl-12"> 
			<div class="card widget-1">
			  <div class="card-body"> 
				<div class="widget-content">
				  <div> 
                    <?php 
					$server_name = "localhost";
					$db_username = "root";
					$db_password = "";
					$db_name = "rkiv_clusterb";

					$connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);

					$query = "SELECT id FROM g54_employees ORDER BY id";  
                            $query_run = mysqli_query($connection, $query);
                            $row = mysqli_num_rows($query_run);
                            echo '<h6> Total Employee: '.$row.'</h6>';
						 ?>

						<button id="b1"> <h6><a style="color:Tomato;" href="http://localhost/ams/employee.php" target="_blank"  title="">Employee</a></h6> </button>
				  </div>
				</div>
				<div class="font-secondary f-w-500"><i class="icon-arrow-up icon-rotate me-1"></i><span>+50%</span></div>
			  </div>
			</div>
			
			<div class="col-xl-12"> 
			  <div class="card widget-1">
				<div class="card-body"> 
				  <div class="widget-content">
					<div> 
						<?php 
						$server_name = "localhost";
						$db_username = "root";
						$db_password = "";
						$db_name = "rkiv_clusterb";
				
						$connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);
				
						$query = "SELECT cl_id FROM g58_compliance_regulatory ORDER BY cl_id";  
										  $query_run = mysqli_query($connection, $query);
										  $row = mysqli_num_rows($query_run);
										  echo '<h6>Total Complied: '.$row.'</h6>';
						   
						   ?>

						   <button id="b1"> <h6 id="h6"><a style="color:Tomato" href="http://localhost/ams/complied.php" target="_blank"  >Complied </a></h6></button>
					</div>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>


	  
	  <div class="col-xxl-auto col-xl-3 col-sm-6 box-col-6"> 
		<div class="row"> 
		  <div class="col-xl-12"> 
			<div class="card widget-1">
			  <div class="card-body"> 
				<div class="widget-content">
				 <!-- <div class="widget-round warning">
					<div class="bg-round">
					  <svg class="svg-fill">
						<use href="https://laravel.pixelstrap.com/cuba/assets/svg/icon-sprite.svg#return-box"> </use>
					  </svg>
					  <svg class="half-circle svg-fill">
						<use href="https://laravel.pixelstrap.com/cuba/assets/svg/icon-sprite.svg#halfcircle"></use>
					  </svg>
					</div>
				  </div> -->
				  <div> 
					<?php 
						$server_name = "localhost";
						$db_username = "root";
						$db_password = "";
						$db_name = "rkiv_clusterb";
				
						$connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);
				
						$query = "SELECT contract_id FROM g55_contract ORDER BY contract_id";  
										  $query_run = mysqli_query($connection, $query);
										  $row = mysqli_num_rows($query_run);
										  echo '<h6>Total Contracts: '.$row.'</h6>';
						   
						   ?>

						   <button id="b1"> <h6 id="h6"><a style="color:Tomato;" href="http://localhost/ams/docu_contract.php" target="_blank"  >Contracts/Documents</a></h6></button>
				  </div>
				</div>
			  </div>
			</div>

			<div class="col-xl-12"> 
				<div class="card widget-1">
				  <div class="card-body"> 
					<div class="widget-content">
					  <div>
						<?php 
						$server_name = "localhost";
						$db_username = "root";
						$db_password = "";
						$db_name = "rkiv_clusterb";
				
						$connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);
				
						$query = "SELECT id FROM g57_projects ORDER BY id";  
										  $query_run = mysqli_query($connection, $query);
										  $row = mysqli_num_rows($query_run);
										  echo '<h6>Total projects: '.$row.'</h6>';
						   
						   ?> 
						<button id="b1"> <h6 id="h6"><a style="color:Tomato;" href="http://localhost/ams/project_task.php" target="_blank"  >Projects/Task</a></h6></button>
					  </div>
					</div>
				  </div>
				</div>
			  </div>
		  </div>
		</div>
	  </div>
	

	 
	  
	  <div class="col-xxl-8 col-lg-12 box-col-12">
		<div class="card">
		  <div class="card-header card-no-border"> 
			<h5>Budgeting and Financial</h5>
		  </div>
		  <div class="card-body pt-0">
			<div class="row m-0 overall-card">
			  <div class="col-xl-9 col-md-12 col-sm-7 p-0">                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              
				<div class="chart-right">
				  <div class="row">
					<div class="col-xl-12">
					  <div class="card-body p-0">
					<!--	<ul class="balance-data"> 
						  <li><span class="circle bg-warning"> </span><span class="f-light ms-1">Earning</span></li>
						  <li><span class="circle bg-primary"> </span><span class="f-light ms-1">Expense</span></li>
						</ul> -->
						<div class="current-sale-container">
							<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

							<body>
								
							<canvas id="myChart" style="height:300px; max-width:75%"></canvas>
							
							<script>
							const xValues = ["","Account payable", "Account recievable", "Budget request","Budget",
							"Income", "Travel","Travel request"];
							const yValues = [0,<?php 
        $server_name = "localhost";
        $db_username = "root";
        $db_password = "";
        $db_name = "rkiv_clusterb";

        $connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);

		$query = mysqli_query($connection, "SELECT SUM(payable_amount) AS total FROM `g59_accounts_payable`") or die(mysqli_error());
					$fetch = mysqli_fetch_array($query);
					echo $fetch['total'];
           
           ?> ,
		   <?php 
        $server_name = "localhost";
        $db_username = "root";
        $db_password = "";
        $db_name = "rkiv_clusterb";

        $connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);

		$query = mysqli_query($connection, "SELECT SUM(recievable_amount) AS total FROM `g59_accounts_recievable`") or die(mysqli_error());
					$fetch = mysqli_fetch_array($query);
					echo $fetch['total'];
           
        ?>, 
		<?php 
        $server_name = "localhost";
        $db_username = "root";
        $db_password = "";
        $db_name = "rkiv_clusterb";

        $connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);

		$query = mysqli_query($connection, "SELECT SUM(request_amount) AS total FROM `g59_add_budgets_request`") or die(mysqli_error());
					$fetch = mysqli_fetch_array($query);
					echo $fetch['total'];
           
        ?>,
		<?php 
        $server_name = "localhost";
        $db_username = "root";
        $db_password = "";
        $db_name = "rkiv_clusterb";

        $connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);

		$query = mysqli_query($connection, "SELECT SUM(budget_amount) AS total FROM `g59_budgets`") or die(mysqli_error());
					$fetch = mysqli_fetch_array($query);
					echo $fetch['total'];
           
        ?>,
		<?php 
        $server_name = "localhost";
        $db_username = "root";
        $db_password = "";
        $db_name = "rkiv_clusterb";

        $connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);

		$query = mysqli_query($connection, "SELECT SUM(income_amount) AS total FROM `g59_income_statement`") or die(mysqli_error());
					$fetch = mysqli_fetch_array($query);
					echo $fetch['total'];
           
        ?>,
		<?php 
        $server_name = "localhost";
        $db_username = "root";
        $db_password = "";
        $db_name = "rkiv_clusterb";

        $connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);

		$query = mysqli_query($connection, "SELECT SUM(total) AS total FROM `g59_travel_expenses`") or die(mysqli_error());
					$fetch = mysqli_fetch_array($query);
					echo $fetch['total'];
           
    	?>,
		<?php 
        $server_name = "localhost";
        $db_username = "root";
        $db_password = "";
        $db_name = "rkiv_clusterb";

        $connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);

		$query = mysqli_query($connection, "SELECT SUM(estimated_amount) AS total FROM `g59_travel_requests`") or die(mysqli_error());
					$fetch = mysqli_fetch_array($query);
					echo $fetch['total'];
           
    	?>
		];
		   
							const barColors = ["black", "red", "green","blue","orange","#8A2BE2","#008B8B","#E9967A"];
							
							new Chart("myChart", {
							  type: "bar",
							  data: {
								labels: xValues,
								datasets: [{
								  backgroundColor: barColors,
								  data: yValues
								}]
							  },
							  options: {
								legend: {display: false},
								title: {
								  display: false,
								  text: ""
								}
							  }
							});
				
							</script>
 

						</div>
					  </div>
					</div>
				  </div>
				</div>
			  </div>
			  <div class="col-xl-3 col-md-12 col-sm-5 p-0">
				<div class="row g-sm-4 g-2">
<button id="bb1"> <h6 id="h6"><a style="color:red;" href="http://localhost/ams/budget_financial/acc_payable.php" target="_blank"  >Account payable </a></h6></button> 
<button id="bb1"> <h6 id="h6"><a style="color:green;" href="http://localhost/ams/budget_financial/acc_recievable.php" target="_blank"  >Account recievable </a></h6></button> 
<button id="bb1"> <h6 id="h6"><a style="color:blue;" href="http://localhost/ams/budget_financial/budget_request.php" target="_blank"  >Budget request </a></h6></button> 
<button id="bb1"> <h6 id="h6"><a style="color:orange;" href="http://localhost/ams/budget_financial/budget.php" target="_blank"  >Budget </a></h6></button> 
<button id="bb1"> <h6 id="h6"><a style="color:#8A2BE2;" href="http://localhost/ams/budget_financial/income.php" target="_blank"  >Income </a></h6></button> 
<button id="bb1"> <h6 id="h6"><a style="color:#008B8B;" href="http://localhost/ams/budget_financial/travel.php" target="_blank"  >Travel </a></h6></button> 
<button id="bb1"> <h6 id="h6"><a style="color:#E9967A;" href="http://localhost/ams/budget_financial/travel_request.php" target="_blank"  >Travel request </a></h6></button> 

					</div>
				  </div>
				</div>
			  </div>
			</div>
		  </div>
		</div>
	  </div>
	  

		<div class="col-xxl-4 col-xl-7 col-md-6 col-sm-5 box-col-6">
		<div class="card height-equal" style="min-height: auto; width: 172%"> 
		  <div class="card-header card-no-border"> 
			<div class="header-top">
			<h5>Recent Assets</h5> &ensp; <h5>Recent Responses</h5>
			  <div class="card-header-right-icon">
				<div class="dropdown icon-dropdown">
				</div>
			  </div>
			</div>
		  </div>
		  <div class="card-body pt-0">
			<div class="row recent-wrapper">
			  <div class="col-xl-6">
				<div class="recent-chart"> 
<div id="recentchart" style="min-height: 218.7px;"><div id="apexchartsol2n0etp" class="apexcharts-canvas apexchartsol2n0etp apexcharts-theme-light" 
style="width: 383px; height: 218.7px;"><svg id="SvgjsSvg4420" width="383" height="218.7" xmlns="http://www.w3.org/2000/svg" version="1.1" 
xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:svgjs="http://svgjs.dev" class="apexcharts-svg" xmlns:data="ApexChartsNS" transform="translate(0, 0)" 
style="background: transparent;"><g id="SvgjsG4422" class="apexcharts-inner apexcharts-graphical" transform="translate(84.5, 0)"><defs id="SvgjsDefs4421">
<clipPath id="gridRectMaskol2n0etp"><rect id="SvgjsRect4424" width="222" height="240" x="-3" y="-1" rx="0" ry="0" 
opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" fill="#fff"></rect></clipPath><clipPath id="forecastMaskol2n0etp"></clipPath><clipPath id="nonForecastMaskol2n0etp">
</clipPath><clipPath id="gridRectMarkerMaskol2n0etp"><rect id="SvgjsRect4425" width="220" height="242" x="-2" y="-2" rx="0" ry="0" opacity="1" stroke-width="0" stroke="none" stroke-dasharray="0" 
fill="#fff"></rect></clipPath><linearGradient id="SvgjsLinearGradient4430" x1="0" y1="1" x2="1" y2="1"><stop id="SvgjsStop4431" stop-opacity="1" stop-color="#7366ff" offset="0"></stop><stop id="SvgjsStop4432" 
stop-opacity="1" stop-color="#3ea4f1" offset="0.2"></stop><stop id="SvgjsStop4433" stop-opacity="1" stop-color="#ffffff" offset="1"></stop></linearGradient><filter id="SvgjsFilter4435" filterUnits="userSpaceOnUse" 
width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood4436" flood-color="#dddddd" flood-opacity="1" result="SvgjsFeFlood4436Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite4437" 
in="SvgjsFeFlood4436Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite4437Out"></feComposite><feOffset id="SvgjsFeOffset4438" dx="0" dy="0" result="SvgjsFeOffset4438Out" in="SvgjsFeComposite4437Out">
</feOffset><feGaussianBlur id="SvgjsFeGaussianBlur4439" stdDeviation="10 " result="SvgjsFeGaussianBlur4439Out" in="SvgjsFeOffset4438Out"></feGaussianBlur><feMerge id="SvgjsFeMerge4440" result="SvgjsFeMerge4440Out" 
in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode4441" in="SvgjsFeGaussianBlur4439Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode4442" in="[object Arguments]"></feMergeNode></feMerge><feBlend id="SvgjsFeBlend4443" 
in="SourceGraphic" in2="SvgjsFeMerge4440Out" mode="normal" result="SvgjsFeBlend4443Out"></feBlend></filter><filter id="SvgjsFilter4446" filterUnits="userSpaceOnUse" width="200%" height="200%" x="-50%" y="-50%"><feFlood id="SvgjsFeFlood4447" 
flood-color="#000000" flood-opacity="0.05" result="SvgjsFeFlood4447Out" in="SourceGraphic"></feFlood><feComposite id="SvgjsFeComposite4448" in="SvgjsFeFlood4447Out" in2="SourceAlpha" operator="in" result="SvgjsFeComposite4448Out"></feComposite>
<feOffset id="SvgjsFeOffset4449" dx="0" dy="3" result="SvgjsFeOffset4449Out" in="SvgjsFeComposite4448Out"></feOffset><feGaussianBlur id="SvgjsFeGaussianBlur4450" stdDeviation="4 " result="SvgjsFeGaussianBlur4450Out" in="SvgjsFeOffset4449Out">
</feGaussianBlur><feMerge id="SvgjsFeMerge4451" result="SvgjsFeMerge4451Out" in="SourceGraphic"><feMergeNode id="SvgjsFeMergeNode4452" in="SvgjsFeGaussianBlur4450Out"></feMergeNode><feMergeNode id="SvgjsFeMergeNode4453" in="[object Arguments]">
</feMergeNode></feMerge><feBlend id="SvgjsFeBlend4454" in="SourceGraphic" in2="SvgjsFeMerge4451Out" mode="normal" result="SvgjsFeBlend4454Out"></feBlend></filter><linearGradient id="SvgjsLinearGradient4459" x1="0" y1="1" x2="1" y2="1"><stop id="SvgjsStop4460" 
stop-opacity="1" stop-color="#7366ff" offset="0"></stop><stop id="SvgjsStop4461" stop-opacity="1" stop-color="#3ea4f1" offset="0.2"></stop><stop id="SvgjsStop4462" stop-opacity="1" stop-color="#ffffff" offset="1"></stop></linearGradient></defs><g id="SvgjsG4426" 
class="apexcharts-radialbar"><g id="SvgjsG4427"><g id="SvgjsG4428" class="apexcharts-tracks"><g id="SvgjsG4429" class="apexcharts-radialbar-track apexcharts-track" rel="1"><path id="apexcharts-radialbarTrack-0" d="M 108 38.443902439024384 A 69.55609756097562 69.55609756097562 0 1 1 107.98786017088885 38.44390349842433" 
fill="none" fill-opacity="1" stroke="rgba(244,244,244,0.85)" stroke-opacity="1" stroke-linecap="round" stroke-width="13.315024390243902" stroke-dasharray="0" class="apexcharts-radialbar-area" filter="url(#SvgjsFilter4435)" data:pathOrig="M 108 38.443902439024384 A 69.55609756097562 69.55609756097562 0 1 1 107.98786017088885 38.44390349842433">
</path></g></g><g id="SvgjsG4444"><g id="SvgjsG4458" class="apexcharts-series apexcharts-radial-series" seriesName="TotalxProfit" rel="1" data:realIndex="0"><path id="SvgjsPath4463" d="M 108 38.443902439024384 A 69.55609756097562 69.55609756097562 0 1 1 107.98786017088885 38.44390349842433" fill="none" 
fill-opacity="0.85" stroke="url(#SvgjsLinearGradient4459)" stroke-opacity="1" stroke-linecap="round" stroke-width="19.87317073170732" stroke-dasharray="0" class="apexcharts-radialbar-area apexcharts-radialbar-slice-0" data:angle="359.99" data:value="100" index="0" j="0" data:pathOrig="M 108 38.443902439024384 A 69.55609756097562 69.55609756097562 0 1 1 107.98786017088885 38.44390349842433">
</path></g><circle id="SvgjsCircle4445" r="62.89858536585366" cx="108" cy="108" class="apexcharts-radialbar-hollow" fill="var(--recent-chart-bg)" filter="url(#SvgjsFilter4446)"></circle><g id="SvgjsG4455" class="apexcharts-datalabels-group" transform="translate(0, 0) scale(1)" style="opacity: 1;"><text id="SvgjsText4456" font-family="Rubik, sans-serif" x="108" y="138" 
text-anchor="middle" dominant-baseline="auto" font-size="17px" font-weight="500" fill="#888888" class="apexcharts-text apexcharts-datalabel-label" style="font-family: Rubik, sans-serif;">Total Assets</text><text id="SvgjsText4457" font-family="Helvetica, Arial, sans-serif" 
x="108" y="116" text-anchor="middle" dominant-baseline="auto" font-size="36px" font-weight="400" fill="#111111" class="apexcharts-text apexcharts-datalabel-value" style="font-family: Helvetica, Arial, sans-serif;"><?php 
					$server_name = "localhost";
					$db_username = "root";
					$db_password = "";
					$db_name = "rkiv_clusterb";

					$connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);

					$query = "SELECT id FROM g52_assets ORDER BY id";  
                            $query_run = mysqli_query($connection, $query);
                            $row = mysqli_num_rows($query_run);
                            echo ''.$row.'';
						 ?></text></g></g></g></g></g><g id="SvgjsG4423" class="apexcharts-annotations"></g></svg><div class="apexcharts-legend"></div></div></div>
				</div>
			  </div>
			  <div class="col-xl-6"> 
				<ul class="order-content">
				  <li> <span class="recent-circle bg-primary"> </span>
					<div> <span class="f-light f-w-500">Incidents</span>
					  <h4 class="mt-1 mb-0"><?php 
						  $server_name = "localhost";
						  $db_username = "root";
						  $db_password = "";
						  $db_name = "rkiv_clusterb";
				  
						  $connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);
				  
						  $query = "SELECT id FROM g56_incident_responses ORDER BY id";  
											$query_run = mysqli_query($connection, $query);
											$row = mysqli_num_rows($query_run);
											echo ''.$row.'';
							 
							 ?><span class="f-light f-14 f-w-400 ms-1">(Total) </span></h4>
					</div>
				  </li>
				  <li> <span class="recent-circle bg-info"></span>
					<div> <span class="f-light f-w-500">Response</span>
					  <h4 class="mt-1 mb-0"><?php 
							 $server_name = "localhost";
							 $db_username = "root";
							 $db_password = "";
							 $db_name = "rkiv_clusterb";
					 
							 $connection = mysqli_connect($server_name,$db_username,$db_password,$db_name);
					 
							 $query = "SELECT id FROM g56_responses ORDER BY id";  
											   $query_run = mysqli_query($connection, $query);
											   $row = mysqli_num_rows($query_run);
											   echo ''.$row.'';
								
								?><span class="f-light f-14 f-w-400 ms-1">(Total) </span></h4>
					</div>
				  </li>
				</ul>
			  </div>
			</div>
		  </div>
		</div>
	  </div>


    <script type="text/javascript">
        var session_layout = '{{ session()->get('layout') }}';
    </script>
    
@endsection

@section('script')
@endsection

