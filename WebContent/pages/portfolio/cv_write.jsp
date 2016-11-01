<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>커버미 :: 이력서커버</title>
<!-- 내부참조 -->
<script type="text/javascript" src="/portfolio/js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="/portfolio/js/essential_2.js"></script>
<link rel="stylesheet" href="/portfolio/include/css/resume_write.css">
<!--편집-->
<link rel="stylesheet"
	href="/portfolio/jQuery-TE_v.1.4.0/jquery-te-1.4.0.css">

<script type="text/javascript"
	src="/portfolio/jQuery-TE_v.1.4.0/jquery-te-1.4.0.min.js"
	charset="utf-8">
	</head>
	<body>
	<script type="text/javascript">
	$('textarea').jqte();
</script>
<div id="wrapper">
	<div id="myheader"></div>

	<!-- Page Content -->
	<div id="page-wrapper">

		<!-- 상단 메뉴 -->

		<!-- Page Navigator -->
		<ol class="breadcrumb path" style="background-color: white;">
			<li><a href="#" onclick="clickMenu('home')">Home</a></li>
			<li class="active">이력서 관리</li>
		</ol>
		<!--  -->

		<!-- Page Title -->
		<div class="page-header" style="border-left: 5px solid #337ab7;">
			<span
				style="font-size: 25px; font-weight: bold; font-family: inherit; margin-left: 1%;">기본
				이력서 관리</span>
		</div>

		<!-- essential2에서 탭메뉴호출 -->
		<div id="myheader2"></div>

		<form id="resumeForm" method="post" enctype="multipart/form-data"
			style="width: 100%;">
			<input type="hidden" name="files" id="file1"> <input
				type="hidden" name="files" id="file2"> <input type="hidden"
				name="files" id="file3">


			<div class="row">
				<!-- 섹션 -->
				<div class="col-lg-3">

					<div class="panel panel-danger">
						<div class="panel-heading">
							<div class="panel-title">
								<lngtag data-langnum="300"> <i
									class="fa fa-clock-o fa-fw"></i> My커버</lngtag>
							</div>
						</div>
						<div class="panel-body">


							<link rel="stylesheet"
								href="portfolio/plugin/tagInput/bootstrap-tagsinput.css">

							<link rel="stylesheet" href="portfolio/plugin/tagInput/app.css">
							<script>
								(function(i, s, o, g, r, a, m) {
									i['GoogleAnalyticsObject'] = r;
									i[r] = i[r] || function() {
										(i[r].q = i[r].q || []).push(arguments)
									}, i[r].l = 1 * new Date();
									a = s.createElement(o), m = s
											.getElementsByTagName(o)[0];
									a.async = 1;
									a.src = g;
									m.parentNode.insertBefore(a, m)
								})
										(
												window,
												document,
												'script',
												'//www.google-analytics.com/analytics.js',
												'ga');

								ga('create', 'UA-42755476-1',
										'bootstrap-tagsinput.github.io');
								ga('send', 'pageview');
							</script>
							<input type="text"
								value="Amsterdam,Washington,Sydney,Beijing,Cairo"
								data-role="tagsinput">
							<!--카테고리태그 -->
							<input type="text" />
							<script>
								var cities = new Bloodhound(
										{
											datumTokenizer : Bloodhound.tokenizers.obj
													.whitespace('text'),
											queryTokenizer : Bloodhound.tokenizers.whitespace,
											prefetch : 'portfolio/plugin/tagInput/cities.json'
										});
								cities.initialize();

								var elt = $('input');
								elt
										.tagsinput({
											tagClass : function(item) {
												switch (item.continent) {
												case 'Europe':
													return 'label label-primary';
												case 'America':
													return 'label label-danger label-important';
												case 'Australia':
													return 'label label-success';
												case 'Africa':
													return 'label label-default';
												case 'Asia':
													return 'label label-warning';
												}
											},
											itemValue : 'value',
											itemText : 'text',
											typeaheadjs : {
												name : 'cities',
												displayKey : 'text',
												source : cities.ttAdapter()
											}
										});
								elt.tagsinput('add', {
									"value" : 1,
									"text" : "Amsterdam",
									"continent" : "Europe"
								});
								elt.tagsinput('add', {
									"value" : 4,
									"text" : "Washington",
									"continent" : "America"
								});
								elt.tagsinput('add', {
									"value" : 7,
									"text" : "Sydney",
									"continent" : "Australia"
								});
								elt.tagsinput('add', {
									"value" : 10,
									"text" : "Beijing",
									"continent" : "Asia"
								});
								elt.tagsinput('add', {
									"value" : 13,
									"text" : "Cairo",
									"continent" : "Africa"
								});
							</script>

							<!--버튼 -->
							<input type="button" class="btn btn-default"
								onclick="careerRow(this)" value="+"> <input
								type="button" class="btn btn-default" onclick="careerRow(this)"
								value="-">
						</div>
					</div>
				</div>
				<!--섹션.끝-->
				<!-- 섹션 -->
				<div class="col-lg-9">

					<div class="panel panel-danger">
						<div class="panel-heading">
							<div class="panel-title">
								<i class="fa fa-clock-o fa-fw"></i> 자기소개서
							</div>
						</div>
						<div class="panel-body">

							<div class="container">
							<h5>질문 리스트</h5>
							<table>
							</table>
							</div>
							<div class="container">
								<textarea name="textarea" class="jqte-test"></textarea>
							</div>
							<input type="button" class="btn btn-default"
								onclick="careerRow(this)" value="+"> <input
								type="button" class="btn btn-default" onclick="careerRow(this)"
								value="-">
						</div>
					</div>
				</div>
				<!--섹션.끝-->

			</div>

			<div style="text-align: center;">
				<input type="button" id="admit" class="btn btn-default btn-info"
					value="수정"> <input type="button" id="delete"
					class="btn btn-default" value="삭제" onclick="deleteResume()">
			</div>

			<input type="hidden" class="license" name="resumeVO.license_seq"
				value="15733"> <input type="hidden" id="ncd"
				name="resumeVO.mbr_dvd"> <input type="hidden" id="ncd2"
				name="resumeVO.mbr_portfolio"> <input type="hidden"
				name="resumeVO.resume_seq" value="713"> <input type="hidden"
				id="sex" name="memberVo.sex" value="0">
		</form>

	</div>

	<!-- end .container -->
	<!-- Footer -->
	<div class="footer">


		<script>
			$('.jqte-test').jqte();
		</script>
		<script
			src="/portfolio/plugin/tagInput/dist/bootstrap-tagsinput.min.js"></script>
		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/rainbow/1.2.0/js/rainbow.min.js"></script>
		<script src="/portfolio/plugin/tagInput/app.js"></script>
	</div>
</div>
</body>
</html>