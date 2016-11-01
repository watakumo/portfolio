<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<script type="text/javascript" src="/portfolio/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/portfolio/js/essential.js"></script>

<title>Cover ME</title>
</head>

<body>

		<div id="wrapper">

		<div id="myheader"></div>
		<!-- Page Content -->

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">질문편집</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">질문답변목록</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<table width="100%" class="table table-striped table-bordered table-hover" id="dataTables">
								<col width="5%">
								<col width="15%">
								<col width="45%">
								<col width="35%">
								<thead>
									<tr>
										<th>#</th>
										<th>분류</th>
										<th>질문</th>
										<th>답변</th>
									</tr>
								</thead>
								<tbody>

									<tr class="gradeU">
										<td id="num">H01</td>
										<td id="type">취미생활</td>
										<td id="question">실외 운동 중 좋아하는 건 뭐야?</td>
										<td id="answer">내가 좋아하는 건...</td>
									</tr>
								</tbody>
							</table>
							<!-- /.table-responsive -->
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- DataTables JavaScript -->
	<script src="/portfolio/vendor/datatables/js/jquery.dataTables.min.js"></script>
	<script src="/portfolio/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
	<script src="/portfolio/vendor/datatables-responsive/dataTables.responsive.js"></script>


	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {

			$('#dataTables').dataTable({
				  "sPaginationType" : "full_numbers",
	                "bProcessing" : false,
	                "bServerSide" : false,
	                "sAjaxSource" : "selectQNA",
	                "bJQueryUI" : true,
	                "aoColumns" : [
	            { "mData": "#" },
	            { "mData": "분류" },
	            { "mData": "질문" },
	            { "mData": "답변" }
	        ]
			});

		});
	</script>


</body>

</html>