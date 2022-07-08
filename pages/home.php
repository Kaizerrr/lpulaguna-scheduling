<?php session_start();

if (empty($_SESSION['id'])) :
	header('Location:../index.php');
endif;
?>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Home | <?php include('../dist/includes/title.php'); ?></title>
	<!-- Tell the browser to be responsive to screen width -->
	<meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
	<!-- Bootstrap 3.3.5 -->
	<link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">
	<link rel="stylesheet" href="../dist/css/AdminLTE.min.css">
	<link rel="stylesheet" href="../plugins/select2/select2.min.css">
	<!-- AdminLTE Skins. Choose a skin from the css/skins
    folder instead of downloading all of them to reduce the load. -->
	<link rel="stylesheet" href="../dist/css/skins/_all-skins.min.css">
	<script src="../dist/js/jquery.min.js"></script>
	<style>
		body {
			font-family: Arial, Helvetica, sans-serif;
		}

		/* The Modal (background) */
		.modal {
			display: none;
			/* Hidden by default */
			position: fixed;
			/* Stay in place */
			z-index: 1;
			/* Sit on top */
			padding-top: 100px;
			/* Location of the box */
			left: 0;
			top: 0;
			width: 100%;
			/* Full width */
			height: 100%;
			/* Full height */
			overflow: auto;
			/* Enable scroll if needed */
			background-color: rgb(0, 0, 0);
			/* Fallback color */
			background-color: rgba(0, 0, 0, 0.4);
			/* Black w/ opacity */
		}

		/* Modal Content */
		.modal-content {
			background-color: #fefefe;
			margin: auto;
			padding: 20px;
			border: 1px solid #888;
			width: 80%;
		}

		/* The Close Button */
		.close {
			color: #aaaaaa;
			float: right;
			font-size: 28px;
			font-weight: bold;
		}

		.close:hover,
		.close:focus {
			color: #000;
			text-decoration: none;
			cursor: pointer;
		}

		.modal-backdrop {
			display: none;
			z-index: 1040 !important;
		}

		.modal-content {
			margin: 2px auto;
			z-index: 1100 !important;
		}
	</style>
</head>
<!-- ADD THE CLASS layout-top-nav TO REMOVE THE SIDEBAR. -->

<body class="hold-transition skin-yellow layout-top-nav" onload="myFunction()">
	<div class="wrapper">
		<?php include('../dist/includes/header.php'); ?>
		<!-- Full Width Column -->
		<div class="content-wrapper">
			<div class="container">
				<!-- Content Header (Page header) -->


				<!-- Main content -->
				<section class="content">
					<div class="row">
						<div class="col-md-9">
							<div class="box box-warning">
								<div style="text-align: center">
									<h4>Print Class Schedule
										<a href="#searcht" data-target="#searcht" data-toggle="modal" class="dropdown-toggle btn btn-primary" style="background-color:#a62d38;">

											Professor
										</a>
										<a href="#searchclass" data-target="#searchclass" data-toggle="modal" class="dropdown-toggle btn btn-success" style="background-color:#a62d38;">

											Class
										</a>

										<a href="#searchroom" data-target="#searchroom" data-toggle="modal" class="dropdown-toggle btn btn-primary" style="background-color:#a62d38;">

											Room
										</a>
									</h4>
								</div>
								<form method="post" id="reg-form">
									<div class="box-body">
										<div class="row">
											<div class="col-md-4">
												<table class="table table-bordered table-striped" style="margin-right:-10px">
													<thead>
														<tr>
															<th>Time</th>
															<th>M</th>
															<th>TH</th>

														</tr>
													</thead>

													<?php
													include('../dist/includes/dbcon.php');
													$query = mysqli_query($con, "select * from time where days='mth' order by time_start") or die(mysqli_error());

													while ($row = mysqli_fetch_array($query)) {
														$id = $row['time_id'];
														$start = date("h:i a", strtotime($row['time_start']));
														$end = date("h:i a", strtotime($row['time_end']));
													?>
														<tr>
															<td><?php echo $start . "-" . $end; ?></td>
															<td><input type="checkbox" id="check" name="m[]" value="<?php echo $id; ?>" style="width: 20px; height: 20px;"></td>
															<td><input type="checkbox" id="check" name="th[]" value="<?php echo $id; ?>" style="width: 20px; height: 20px;"></td>
														</tr>

													<?php } ?>
												</table>
											</div>
											<!--col end -->
											<div class="col-md-4">
												<table class="table table-bordered table-striped">
													<thead>
														<tr>
															<th>Time</th>
															<th>T</th>
															<th>F</th>

														</tr>
													</thead>

													<?php
													include('../dist/includes/dbcon.php');
													$query = mysqli_query($con, "select * from time where days='tf' order by time_start") or die(mysqli_error());

													while ($row = mysqli_fetch_array($query)) {
														$id = $row['time_id'];
														$start = date("h:i a", strtotime($row['time_start']));
														$end = date("h:i a", strtotime($row['time_end']));
													?>
														<tr>
															<td><?php echo $start . "-" . $end; ?></td>
															<td><input type="checkbox" name="t[]" value="<?php echo $id; ?>" style="width: 20px; height: 20px;"></td>
															<td><input type="checkbox" name="f[]" value="<?php echo $id; ?>" style="width: 20px; height: 20px;"></td>

														</tr>

													<?php } ?>
												</table>
												<div class="result" id="form"></div>
											</div>
											<!--col end-->
											<div class="col-md-4">
												<table class="table table-bordered table-striped">
													<thead>
														<tr>
															<th>Time</th>
															<th>W</th>
															<th>S</th>

														</tr>
													</thead>

													<?php
													include('../dist/includes/dbcon.php');
													$query = mysqli_query($con, "select * from time where days='ws' order by time_start") or die(mysqli_error());

													while ($row = mysqli_fetch_array($query)) {
														$id = $row['time_id'];
														$start = date("h:i a", strtotime($row['time_start']));
														$end = date("h:i a", strtotime($row['time_end']));
													?>
														<tr>
															<td><?php echo $start . "-" . $end; ?></td>
															<td><input type="checkbox" name="w[]" value="<?php echo $id; ?>" style="width: 20px; height: 20px;"></td>
															<td><input type="checkbox" name="s[]" value="<?php echo $id; ?>" style="width: 20px; height: 20px;"></td>

														</tr>

													<?php } ?>
												</table>
												<div class="result" id="form"></div>
											</div>
											<!--col end-->
										</div>
										<!--row end-->


									</div><!-- /.box-body -->
							</div><!-- /.box -->
						</div><!-- /.col (right) -->

						<div class="col-md-3">
							<div class="box box-warning">

								<div class="box-body">
									<!-- Date range -->
									<div id="form1">

										<div class="row">
											<div class="col-md-12">
												<div class="form-group">
													<label for="date">Professor</label>

													<select class="form-control select2" name="teacher" required>
														<?php
														$query2 = mysqli_query($con, "select * from member order by member_last") or die(mysqli_error($con));
														while ($row = mysqli_fetch_array($query2)) {
														?>
															<option value="<?php echo $row['member_id']; ?>"><?php echo $row['member_last'] . ", " . $row['member_first']; ?></option>
														<?php }

														?>
													</select>

												</div><!-- /.form group -->
												<div class="form-group">
													<label for="date">Course</label>

													<select class="form-control select2" name="subject" required>
														<?php
														$query2 = mysqli_query($con, "select * from subject order by subject_code") or die(mysqli_error($con));
														while ($row = mysqli_fetch_array($query2)) {
														?>
															<option><?php echo $row['subject_code']; ?></option>
														<?php }

														?>
													</select>

												</div><!-- /.form group -->
												<div class="form-group">
													<label for="date">Program, Yr & Section</label>
													<select class="form-control select2" name="cys" required>
														<?php
														$query2 = mysqli_query($con, "select * from cys order by cys") or die(mysqli_error($con));
														while ($row = mysqli_fetch_array($query2)) {
														?>
															<option><?php echo $row['cys']; ?></option>
														<?php }

														?>
													</select>
												</div><!-- /.form group -->
												<div class="form-group">
													<label for="date">Room</label>
													<select class="form-control select2" name="room" required>
														<?php
														$query2 = mysqli_query($con, "select * from room order by room") or die(mysqli_error($con));
														while ($row = mysqli_fetch_array($query2)) {
														?>
															<option><?php echo $row['room']; ?></option>
														<?php }

														?>
													</select>
												</div><!-- /.form group -->
											</div>



										</div>


										<div class="form-group">

											<button class="btn btn-lg btn-primary" id="daterange-btn" name="save" type="submit" style="background-color:#a62d38; border: 1px solid black;">
												Save
											</button>
											<button class="uncheck btn btn-lg btn-success" type="reset" style="background-color:white; color:black; border: 1px solid  black;">Uncheck All</button>
										</div>
									</div><!-- /.form group -->
									<hr>
									</form>
								</div><!-- /.box-body -->
							</div><!-- /.box -->
						</div><!-- /.col (right) -->
					</div><!-- /.row -->
				</section><!-- /.content -->
			</div><!-- /.container -->
		</div><!-- /.content-wrapper -->
	</div><!-- ./wrapper -->

	<div id="searcht" class="modal fade in" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content" style="height:auto">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span></button>
					<h4 class="modal-title">Search Faculty Schedule</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" method="post" action="faculty_sched.php" target="_blank">

						<div class="form-group">
							<label class="control-label col-lg-2" for="name">Faculty</label>
							<div class="col-lg-10">
								<select class="select2" name="faculty" style="width:90%!important" required>
									<?php

									$query2 = mysqli_query($con, "select * from member order by member_last") or die(mysqli_error($con));
									while ($row = mysqli_fetch_array($query2)) {
									?>
										<option value="<?php echo $row['member_id']; ?>"><?php echo $row['member_last'] . ", " . $row['member_first']; ?></option>
									<?php }

									?>
								</select>
							</div>
						</div>


				</div>
				<hr>
				<div class="modal-footer">
					<button type="submit" name="search" class="btn btn-primary" style="background-color:#a62d38; border: 1px solid black;">Display Schedule</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" style="background-color:white; color:black; border: 1px solid  black;">Close</button>
				</div>
				</form>
			</div>

		</div>
		<!--end of modal-dialog-->
	</div>
	<!--end of modal-->

	<div id="searchclass" class="modal fade in" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content" style="height:auto">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span></button>
					<h4 class="modal-title">Search Class Schedule</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" method="post" action="class_sched.php" target="_blank">

						<div class="form-group">
							<label class="control-label col-lg-2" for="name">Class</label>
							<div class="col-lg-10">
								<select class="select2" name="class" style="width:90%!important" required>
									<?php

									$query2 = mysqli_query($con, "select * from cys order by cys") or die(mysqli_error($con));
									while ($row = mysqli_fetch_array($query2)) {
									?>
										<option><?php echo $row['cys']; ?></option>
									<?php }

									?>
								</select>
							</div>
						</div>


				</div>
				<hr>
				<div class="modal-footer">
					<button type="submit" name="search" class="btn btn-primary" style="background-color:#a62d38; border: 1px solid black;">Display Schedule</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" style="background-color:white; color:black; border: 1px solid  black;">Close</button>
				</div>
				</form>
			</div>

		</div>
		<!--end of modal-dialog-->
	</div>
	<!--end of modal-->

	<div id="searchroom" class="modal fade in" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="display: none;">
		<div class="modal-dialog">
			<div class="modal-content" style="height:auto">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span></button>
					<h4 class="modal-title">Search Room Schedule</h4>
				</div>
				<div class="modal-body">
					<form class="form-horizontal" method="post" action="room_sched.php" target="_blank">

						<div class="form-group">
							<label class="control-label col-lg-2" for="name">Room</label>
							<div class="col-lg-10">
								<select class="select2" name="room" style="width:90%!important" required>
									<?php

									$query2 = mysqli_query($con, "select * from room order by room") or die(mysqli_error($con));
									while ($row = mysqli_fetch_array($query2)) {
									?>
										<option><?php echo $row['room']; ?></option>
									<?php }

									?>
								</select>
							</div>
						</div>


				</div>
				<hr>
				<div class="modal-footer">
					<button type="submit" name="search" class="btn btn-primary" style="background-color:#a62d38; border: 1px solid black;">Display Schedule</button>
					<button type="button" class="btn btn-default" data-dismiss="modal" style="background-color:white; color:black; border: 1px solid  black;">Close</button>
				</div>
				</form>
			</div>

		</div>
		<!--end of modal-dialog-->
	</div>
	<!--end of modal-->
	<div id="myModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close">&times;</span>
			<p>Schedule Conflicts : </p>
			<div id="myModalConflict">

			</div>

		</div>

	</div>

	<script type="text/javascript">
		var modal = document.getElementById("myModal");
		var btn = document.getElementById("daterange-btn");
		var span = document.getElementsByClassName("close")[0];
		$(document).on('submit', '#reg-form', function() {
			$.post('submit.php', $(this).serialize(), function(data) {

				$("#myModalConflict").html(data);
				$("#form1")[0].reset();
				// $("#check").reset();

			});

			return false;


		})
		// When the user clicks the button, open the modal 
		btn.onclick = function(data) {
			modal.style.display = "block";
		}

		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
			modal.style.display = "none";
		}
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
			if (event.target == modal) {
				modal.style.display = "none";
			}
		}
	</script>
	<script>
		$(".uncheck").click(function() {
			$('input:checkbox').removeAttr('checked');
		});
	</script>

	<script type="text/javascript" src="autosum.js"></script>
	<!-- jQuery 2.1.4 -->
	<script src="../plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="../dist/js/jquery.min.js"></script>
	<!-- Bootstrap 3.3.5 -->
	<script src="../bootstrap/js/bootstrap.min.js"></script>
	<script src="../plugins/select2/select2.full.min.js"></script>
	<!-- SlimScroll -->
	<script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- FastClick -->
	<script src="../plugins/fastclick/fastclick.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="../dist/js/demo.js"></script>
	<script src="../plugins/datatables/jquery.dataTables.min.js"></script>
	<script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>


	<script>
		$(function() {
			//Initialize Select2 Elements
			$(".select2").select2();

			//Datemask dd/mm/yyyy
			$("#datemask").inputmask("dd/mm/yyyy", {
				"placeholder": "dd/mm/yyyy"
			});
			//Datemask2 mm/dd/yyyy
			$("#datemask2").inputmask("mm/dd/yyyy", {
				"placeholder": "mm/dd/yyyy"
			});
			//Money Euro
			$("[data-mask]").inputmask();

			//Date range picker
			$('#reservation').daterangepicker();
			//Date range picker with time picker
			$('#reservationtime').daterangepicker({
				timePicker: true,
				timePickerIncrement: 30,
				format: 'MM/DD/YYYY h:mm A'
			});
			//Date range as a button
			$('#daterange-btn').daterangepicker({
					ranges: {
						'Today': [moment(), moment()],
						'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
						'Last 7 Days': [moment().subtract(6, 'days'), moment()],
						'Last 30 Days': [moment().subtract(29, 'days'), moment()],
						'This Month': [moment().startOf('month'), moment().endOf('month')],
						'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
					},
					startDate: moment().subtract(29, 'days'),
					endDate: moment()
				},
				function(start, end) {
					$('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
				}
			);

			//iCheck for checkbox and radio inputs
			$('input[type="checkbox"].minimal, input[type="radio"].minimal').iCheck({
				checkboxClass: 'icheckbox_minimal-blue',
				radioClass: 'iradio_minimal-blue'
			});
			//Red color scheme for iCheck
			$('input[type="checkbox"].minimal-red, input[type="radio"].minimal-red').iCheck({
				checkboxClass: 'icheckbox_minimal-red',
				radioClass: 'iradio_minimal-red'
			});
			//Flat red color scheme for iCheck
			$('input[type="checkbox"].flat-red, input[type="radio"].flat-red').iCheck({
				checkboxClass: 'icheckbox_flat-green',
				radioClass: 'iradio_flat-green'
			});

			//Colorpicker
			$(".my-colorpicker1").colorpicker();
			//color picker with addon
			$(".my-colorpicker2").colorpicker();

			//Timepicker
			$(".timepicker").timepicker({
				showInputs: false
			});
		});
	</script>
</body>

</html>