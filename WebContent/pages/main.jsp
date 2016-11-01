<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="kr">

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
					<h1 class="page-header">한눈보기</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->

			<div class="row">
				<div class="col-lg-8">

					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-clock-o fa-fw"></i> 나의 인생
							<div class="btn-group pull-right">
								<button type="button">
									<i id="myView" class="fa fa-chevron-down"></i>
								</button>
								<script>
									$('#myView').click(function() {
										$('#trrrrr').slideToggle();

									});
								</script>
							</div>
						</div>
						<!-- /.panel-heading -->
						<div class="panel-body">
							<ul id="trrrrr" class="timeline">
								<li>
									<div class="timeline-badge">
										<i class="fa fa-check"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">계획인생</h4>
											<p>
												<small class="text-muted"><i class="fa fa-clock-o"></i> 11 hours ago via Twitter</small>
											</p>
										</div>
										<div class="timeline-body">
											<p>최신글을 불러옵니다.</p>
										</div>
									</div>
								</li>
								<li class="timeline-inverted">
									<div class="timeline-badge warning">
										<i class="fa fa-credit-card"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">교육인생</h4>
										</div>
										<div class="timeline-body">
											<p>어떤 교육을 받았는가?에 대해 자소서를 쓴 내용이 들어옵니다. 자소서의 카테고리 중 교육글이 있을 경우 최신글을 불러옵니다.</p>
										</div>
									</div>
								</li>
								<li>
									<div class="timeline-badge danger">
										<i class="fa fa-bomb"></i>
									</div>
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">도전인생</h4>
										</div>
										<div class="timeline-body">
											<ul>
												<ol>첫번째1
												</ol>
												<ol>두전째
												</ol>
												<ol>세번째
												</ol>
											</ul>

										</div>
									</div>
								</li>
								<li class="timeline-inverted">
									<div class="timeline-panel">
										<div class="timeline-heading">
											<h4 class="timeline-title">기타</h4>
										</div>
										<div class="timeline-body">
											<p>기타영역의 데이터가 들어옵니다.</p>
										</div>
									</div>
								</li>


							</ul>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
				</div>
				<!-- /.col-lg-8 -->
				<div class="col-lg-4">
					<div class="row">
						<div class="col-lg-6 col-md-3">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-comments fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">26</div>
											<div>새소식</div>
										</div>
									</div>
								</div>
								<a href="qnaEdit.action">
									<div class="panel-footer">
										<span class="pull-left">질문편집 바로가기</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
										<div class="clearfix"></div>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-6 col-md-3">
							<div class="panel panel-green">
								<div class="panel-heading">
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-file-o fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">12</div>
											<div>새소식</div>
										</div>
									</div>
								</div>
								<a href="goUpdateMemberForm">
									<div class="panel-footer">
										<span class="pull-left">포트폴리오 바로가기</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
										<div class="clearfix"></div>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-6 col-md-3">
							<div class="panel panel-yellow">
								<div class="panel-heading">
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-bar-chart-o fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">124</div>
											<div>새소식</div>
										</div>
									</div>
								</div>
								<a href="./morris">
									<div class="panel-footer">
										<span class="pull-left">분석 바로가기</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
										<div class="clearfix"></div>
									</div>
								</a>
							</div>
						</div>
						<div class="col-lg-6 col-md-3">
							<div class="panel panel-red">
								<div class="panel-heading">
									<div class="row">
										<div class="col-xs-3">
											<i class="fa fa-gears fa-5x"></i>
										</div>
										<div class="col-xs-9 text-right">
											<div class="huge">13</div>
											<div>새소식</div>
										</div>
									</div>
								</div>
								<a href="./example/panels-wells.html">
									<div class="panel-footer">
										<span class="pull-left">개발자도구 바로가기</span> <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
										<div class="clearfix"></div>
									</div>
								</a>
							</div>
						</div>
					</div>
					<!-- /.row -->

					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-bell fa-fw"></i> 알림소식
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
									<i id="openRow2" class="fa fa-chevron-down"></i>
								</button>

							</div>
						</div>
						<!-- /.panel-heading -->
						<div id="bedge_panel" class="panel-body">
							<div class="list-group">
								<a href="#" class="list-group-item"> <i class="fa fa-comment fa-fw"></i> 새 글 <span class="pull-right text-muted small"><em>4 minutes ago</em> </span>
								</a> <a href="#" class="list-group-item"> <i class="fa fa-twitter fa-fw"></i> 새 친구 <span class="pull-right text-muted small"><em>12 minutes ago</em> </span>
								</a> <a href="#" class="list-group-item"> <i class="fa fa-envelope fa-fw"></i> 새 쪽지 <span class="pull-right text-muted small"><em>27 minutes ago</em> </span>
								</a> <a href="#" class="list-group-item"> <i class="fa fa-tasks fa-fw"></i> 새 분석결과 <span class="pull-right text-muted small"><em>43 minutes ago</em> </span>
								</a>

							</div>
							<!-- /.list-group -->
							<a href="#" class="btn btn-default btn-block">전체보기</a>
						</div>
						<!-- /.panel-body -->
					</div>
					<!-- /.panel -->
					<div class="chat-panel panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-comments fa-fw"></i> 질문답변
							<div class="btn-group pull-right">
								<button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
									<i class="fa fa-chevron-down"></i>
								</button>
								<ul class="dropdown-menu slidedown">
									<li><a href="#"> <i class="fa fa-refresh fa-fw"></i> 질문바꾸기
									</a></li>
									<li><a href="#"> <i class="fa fa-check-circle fa-fw"></i> 전송하기
									</a></li>
									<li class="divider"></li>
									<li><a href="#" data-dismiss="modal"> <i class="fa fa-times fa-fw"></i> 나가기
									</a></li>
								</ul>
							</div>
						</div>
						<!-- /.panel-heading -->
						<script>
							var num = '1';
							function setNum(a) {
								num = a;

							};
							//콜백 
							function firstCallBack(data) {
								//alert('첫질문 : '+data.question+'/'+data.type+'/'+data.num);
								$('.chat').append(
										'<li class="left clearfix"><span class="chat-img pull-left">' + '<img src="/portfolio/include/img/icon_circle_design.png" alt="User Avatar" class="img-circle" /> </span> ' + '<div class="chat-body clearfix"> <div class="header"> <strong class="primary-font">[' + data.type + '생활]</strong> ' + '<small class="pull-right text-muted"> <i class="fa fa-clock-o fa-fw"></i> ' + data.num + ' / ' + data.totalQna + '번 질문 </small> </div> <p>' + data.question
												+ '</p> </div></li>');
								//저장하기
								setNum(data.num);
							};

							function otherCallBack(data) {
								$('.chat').append('<li class="right clearfix"><span class="chat-img pull-right"> </span> <div class="clearfix"> <div class="header"> <small class=" text-muted"> <i class="fa fa-clock-o fa-fw"></i> <strong class="pull-right primary-font">[ ' + data.num + '번째 ] 답변</strong> </div> <p>' + data.answer + '</p> </div></li>');

								$('.chat').append(
										'<li class="left clearfix"><span class="chat-img pull-left">' + '<img src="/portfolio/include/img/icon_circle_design.png" alt="User Avatar" class="img-circle" /> </span> ' + '<div class="chat-body clearfix"> <div class="header"> <strong class="primary-font">[' + data.type + '생활]</strong> ' + '<small class="pull-right text-muted"> <i class="fa fa-clock-o fa-fw"></i> ' + parseInt(parseInt(data.num)+1)  + ' / ' + data.totalQna + '번 질문 </small> </div> <p>' + data.question
												+ '</p> </div></li>');

								$('.panel-body').scrollTop($('.panel-body').prop('scrollHeight'));

								//저장하기
								setNum(data.num);
							}

							//
							$(document).ready(function() {

								//스크롤 뒤로 

								//첫질문 받기
								$.ajax({

									url : 'firstInsertQuestion',
									type : 'post',
									success : function(data) {
										firstCallBack(data);

									}

								});

								//모두 로딩 후 필드값 받아서 전달해보자 
								$('#btnsend').click(function() {
									var aa = $("#btnanswer").val();

									$.ajax({
										url : 'insertQNA',
										type : 'post',
										data : {
											'answer' : $("#btnanswer").val(),
										},
										success : function(data) {
											otherCallBack(data);
											$("#btnanswer").val('');
										}
									});//ajax 
								});//click

							});//ready
						</script>
						<div class="panel-body">
							<ul class="chat">
								<!-- <li class="left clearfix"><span class="chat-img pull-left"> <img src="/portfolio/include/img/icon_circle_design.png" alt="User Avatar" class="img-circle" />
								</span>
									<div class="chat-body clearfix">
										<div class="header">
											<strong class="primary-font">[여가생활]</strong> <small class="pull-right text-muted"> <i class="fa fa-clock-o fa-fw"></i> 12 / 20번 질문
											</small>
										</div>
										<p>평소에 하는 운동은 뭐가 있어?</p>
									</div></li> -->
								<!-- <li class="right clearfix"><span class="chat-img pull-right"> </span>
									<div class="clearfix">
										<div class="header">
											<small class=" text-muted"> <i class="fa fa-clock-o fa-fw"></i> 20분 전
											</small> <strong class="pull-right primary-font">[ 5번째 ] 답변</strong>
										</div>
										<p>답변기다리는 중</p>
									</div></li> -->

							</ul>
						</div>
						<!-- /.panel-body -->




						<div class="panel-footer">
							<div class="input-group">
								<input id="btnanswer" type="text" class="form-control input-sm" placeholder="답변을 입력해주세요" /> <span class="input-group-btn">
									<button class="btn btn-warning btn-sm" id="btnsend">보내기</button>
								</span>
							</div>
						</div>
						<!-- /.panel-footer -->
					</div>
					<!-- /.panel .chat-panel -->
					<!-- /.panel -->

				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->


	<script>
		$('#bedge_panel').hide();
		$('#openRow2').click(function() {
			$('#bedge_panel').slideToggle();
		});
	</script>
</body>

</html>
