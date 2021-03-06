<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>일상의 포트폴리오 :: 커버미</title>
<meta name="description" content="This is a free Bootstrap landing page theme created for BootstrapZero. Feature video background and one page design." />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="generator" content="Codeply">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css" />
<link href="http://cdnjs.cloudflare.com/ajax/libs/animate.css/3.1.1/animate.min.css" rel="stylesheet" />
<link rel="stylesheet" href="http://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" />
<link rel="stylesheet" href="./css/styles.css" />
<script type="text/javascript" src="./js/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="./pages/portfolio/js/join_write.js"></script>

<script>
	window.onload = function() {
		var idCheck = false;
		var sid = document.getElementById("userid");
		sid.onblur = function() {
			if (sid.value != null && sid.value.length > 0) {
				$.ajax({
					url : 'idCheck',
					data : {
						"memberVo.memberId" : sid.value
					},
					dataType : 'json',
					success : function(data) {
						if (data.result == true) {
							idCheck = true;
							document.getElementById("idCheckSpan").innerHTML = "사용 가능한 아이디입니다";
						} else {
							idCheck = false;
							document.getElementById("idCheckSpan").innerHTML = "사용 불가능한 아이디입니다.";
						}
					}
				});
			}
		}

		document.getElementById("form1").onsubmit = function() {
			var name = document.getElementById("username");
			var nameCheck = document.getElementById("nameCheck");
			if (name.value == null || name.value.lenth == 0) {
				nameCheck.innerHTML = "이름은 필수 입력입니다.";
				return false;
			}

			var sid = document.getElementById("userid");
			if (sid.value == null || sid.value.length == 0) {
				alert("아이디는 필수 입력입니다.");
				return false;
			}

			var password = document.getElementById("userpw")
			if (password.value == null || password.length == 0) {
				alert("PW는 필수입력입니다.");
				return false;
			}
			return true;
		}
	}
</script>
</head>
<body>
	<nav id="topNav" class="navbar navbar-default navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-navbar">
				<span class="sr-only">Toggle navigation</span> <span>class="icon-bar"></span> <span class="icon-bar"></span> <span>class="icon-bar"></span>
			</button>
			<a class="navbar-brand page-scroll" href="#first"><i class="ion-ios-analytics-outline"></i> COVER ME</a>
		</div>
		<div class="navbar-collapse collapse" id="bs-navbar">
			<ul class="nav navbar-nav">
				<li><a class="page-scroll" href="#one">소개</a></li>
				<li><a class="page-scroll" href="#two">기능</a></li>
				<li><a class="page-scroll" href="#three">스샷</a></li>
				<li><a class="page-scroll" href="#four">팀원</a></li>
				<li><a class="page-scroll" href="#aboutpro">기술</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a class="page-scroll" data-toggle="modal" title="A free Bootstrap video landing theme" href="#aboutModal">About</a></li>
			</ul>
		</div>
	</div>
	</nav>
	<header id="first">
	<div class="header-content">
		<div class="inner">
			<h1 class="cursive">私の日常ポートフォリオ :: Cover ME</h1>
			<h4>Cover ME 서비스를 이용하려면 로그인!</h4>
			<hr>
			<a href="#video-background" id="toggleVideo" data-toggle="collapse" class="btn btn-primary btn-xl">영상전환</a> &nbsp; <a href="#loginModal" data-toggle="modal" class="btn btn-primary btn-xl page-scroll">시작하기</a>


		</div>
	</div>
	<video autoplay="" loop="" class="fillWidth fadeIn wow collapse in" data-wow-delay="0.5s" poster="https://s3-us-west-2.amazonaws.com/coverr/poster/Traffic-blurred2.jpg" id="video-background"> <source src="https://s3-us-west-2.amazonaws.com/coverr/mp4/Traffic-blurred2.mp4" type="video/mp4"> 브라우저에서 영상재생을 지원하지 않습니다. 업데이트를 부탁드립니다. </video> </header>
	<section class="bg-primary" id="one">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 col-lg-offset-3 col-md-8 col-md-offset-2 text-center">
				<h2 class="margin-top-0 text-primary">Cover ME 서비스를 소개합니다.</h2>
				<br>
				<p class="text-faded">
					커버미는 포트폴리오 관리 서비스입니다. SC마스터에서 일본 IT취직을 준비하며 저희가 사용하고 싶어서 만들게 되었습니다. Agile한 프로토타입 방식 개발방식을 채택하여 우선은 일본 + IT + SC마스터생에 특화되어 기획 및 개발 되었습니다. <br>향후 통합플랫폼으로 성장시킬 수 있기를 소망하고 있습니다.
				</p>
				<a href="#three" class="btn btn-default btn-xl page-scroll">Learn More</a>
			</div>
		</div>
	</div>
	</section>
	<section id="two">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 text-center">
				<h2 class="margin-top-0 text-primary">3가지 주요 기능</h2>
				<hr class="primary">
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 text-center">
				<div class="feature">
					<i class="icon-lg ion-android-laptop wow fadeIn" data-wow-delay=".3s"></i>
					<h3>ポートフォリオ</h3>
					<p class="text-muted">캡슐화된 일상지문으로 포트폴리오 작성이 손쉬워집니다.</p>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 text-center">
				<div class="feature">
					<i class="icon-lg ion-social-sass wow fadeInUp" data-wow-delay=".2s"></i>
					<h3>포트폴리오 분석</h3>
					<p class="text-muted">데이터를 분석하여 나만의 패턴을 알려줍니다.</p>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 text-center">
				<div class="feature">
					<i class="icon-lg ion-ios-star-outline wow fadeIn" data-wow-delay=".3s"></i>
					<h3>포트폴리오 공유</h3>
					<p class="text-muted">정보공유 및 컨설팅 등 지속변화발전을 응원합니다.</p>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section id="three" class="no-padding">
	<div class="container-fluid">
		<div class="row no-gutter">
			<div class="col-lg-4 col-sm-6">
				<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./img/g.jpg"> <img src="./img/a.jpg" class="img-responsive" alt="Image 1">
					<div class="gallery-box-caption">
						<div class="gallery-box-content">
							<div>
								<i class="icon-lg ion-ios-search"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./img/b.jpg"> <img src="./img/b.jpg" class="img-responsive" alt="Image 2">
					<div class="gallery-box-caption">
						<div class="gallery-box-content">
							<div>
								<i class="icon-lg ion-ios-search"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./img/h.jpg"> <img src="./img/h.jpg" class="img-responsive" alt="Image 3">
					<div class="gallery-box-caption">
						<div class="gallery-box-content">
							<div>
								<i class="icon-lg ion-ios-search"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./img/c.jpg"> <img src="./img/c.jpg" class="img-responsive" alt="Image 4">
					<div class="gallery-box-caption">
						<div class="gallery-box-content">
							<div>
								<i class="icon-lg ion-ios-search"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./img/d.jpg"> <img src="./img/d.jpg" class="img-responsive" alt="Image 5">
					<div class="gallery-box-caption">
						<div class="gallery-box-content">
							<div>
								<i class="icon-lg ion-ios-search"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="#galleryModal" class="gallery-box" data-toggle="modal" data-src="./img/e.jpg"> <img src="./img/e.jpg" class="img-responsive" alt="Image 6">
					<div class="gallery-box-caption">
						<div class="gallery-box-content">
							<div>
								<i class="icon-lg ion-ios-search"></i>
							</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</div>
	</section>
	<section class="container-fluid">
	<div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
			<h2 class="text-center text-primary" id="four">팀원</h2>
			<hr>
			<div class="media wow fadeInRight">
				<h3>TeamName 솜구름</h3>
				<div class="media-body media-middle">
					<p>솜구름의 학명으로 적란운(積亂雲)이라고 합니다. 많은 것이 쌓여있다는 의미입니다. 우리팀은 유대를 쌓았습니다.</p>
				</div>
				<div class="media-right">
					<i class="icon-lg ion-ios-bolt-outline"></i>
				</div>
			</div>
			<hr>
			<div class="media wow fadeIn">
				<h3>김경민</h3>
				<div class="media-left">
					<a href="#alertModal1" data-toggle="modal" data-target="#alertModal1"><i class="icon-lg ion-ios-cloud-download-outline"></i></a>
				</div>
				<div class="media-body media-middle">
					<p>팀의 리더. 불꽃지성 불꽃미소. 여러분의 리더 김경민입니다.</p>
				</div>
			</div>
			<hr>
			<div class="media wow fadeInRight">
				<h3>김완길</h3>
				<div class="media-body media-middle">
					<p>기획분석담당. 얼음마스터라 불러다오. 안녕하세요? 클라이언트에게는 상냥한 엔드유저 개밥담당 김완길입니다.</p>
				</div>
				<div class="media-right">
					<a href="#alertModal2" data-toggle="modal" data-target="#alertModal2"> <i class="icon-lg ion-ios-snowy"></i>
					</a>


				</div>
			</div>
			<hr>
			<div class="media wow fadeIn">
				<h3>이수현</h3>
				<div class="media-left">
					<a href="#alertModal3" data-toggle="modal" data-target="#alertModal3"> <i class="icon-lg ion-ios-heart-outline"></i>
					</a>

				</div>
				<div class="media-body media-middle">
					<p>DBA와 백엔드엔지니어. 팀의 재간둥이. 오로지 서버만 사랑하는 남자. 2수현입니다.</p>
				</div>
			</div>
			<hr>
			<div class="media wow fadeInRight">
				<h3>박정은</h3>
				<div class="media-body media-middle">
					<p>
						프론트엔지니어 . 안녕하세요? 솜구름팀의 홍일점, <br>undefined매력녀 박정은입니다.
					</p>
				</div>
				<div class="media-right">
					<a href="#alertModal4" data-toggle="modal" data-target="#alertModal4"> <i class="icon-lg ion-ios-flask-outline"></i>
					</a>

				</div>
			</div>
		</div>
	</div>
	</section>
	<aside class="bg-dark">
	<div class="container text-center">
		<div id="aboutpro" class="call-to-action">
			<h2 class="text-primary">프로젝트에 관해서</h2>
			<a href="https://sites.google.com/site/dekimasuse/" target="ext" class="btn btn-default btn-lg wow flipInX">PM 사이트 이동</a>
		</div>
		<br>
		<hr />
		<br>
		<div class="row">
			<div class="col-lg-10 col-lg-offset-1">
				<div class="row">
					<h6 class="wide-space text-center">JQUERY와 SERVELET을 기반으로 구현하였습니다.</h6>
					<div class="col-sm-3 col-xs-6 text-center">
						<i class="icon-lg ion-social-html5-outline" title="html 5"></i>
					</div>
					<div class="col-sm-3 col-xs-6 text-center">
						<i class="icon-lg ion-social-sass" title="sass"></i>
					</div>
					<div class="col-sm-3 col-xs-6 text-center">
						<i class="icon-lg ion-social-javascript-outline" title="javascript"></i>
					</div>
					<div class="col-sm-3 col-xs-6 text-center">
						<i class="icon-lg ion-social-css3-outline" title="css 3"></i>
					</div>
				</div>
			</div>
		</div>
	</div>
	</aside>
	<section id="last">
	<div class="container">
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2 text-center">
				<h2 class="margin-top-0 wow fadeIn">TEAM NAME ♥ わたくも</h2>
				<hr class="primary">
				<p>하늘의 솜구름처럼 순수하게 하나되어 세상을 자유롭게 누비자는 의미로 정했습니다.</p>
			</div>
			<div class="col-lg-10 col-lg-offset-1 text-center">
				<form action="mailto:watakumo@gmail.com" method="post" class="contact-form row">
					<div class="col-md-4">
						<label></label> <input type="text" class="form-control" placeholder="성함">
					</div>
					<div class="col-md-4">
						<label></label> <input type="text" class="form-control" placeholder="메일">
					</div>
					<div class="col-md-4">
						<label></label> <input type="text" class="form-control" placeholder="연락처">
					</div>
					<div class="col-md-12">
						<label></label>
						<textarea class="form-control" rows="9" placeholder="내용을 입력해주세요!"></textarea>
					</div>
					<div class="col-md-4 col-md-offset-4">
						<label></label>
						<button type="button" data-toggle="modal" data-target="#alertModal" class="btn btn-primary btn-block btn-lg">
							Send <i class="ion-android-arrow-forward"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	</section>
	<footer id="footer">
	<div class="container-fluid">
		<div class="row">
			<div class="col-xs-6 col-sm-3 column">
				<h4>프로젝트정보</h4>
				<ul class="list-unstyled">
					<li><a href="">SC MASTER 31기</a></li>
					<li><a href="">2차 프로젝트</a></li>
					<li><a href="">2016-10-01 はじめ</a></li>
					<li><a href="">2016-11-15 完成</a></li>
				</ul>
			</div>
			<div class="col-xs-6 col-sm-3 column">
				<h4>팀원소개</h4>
				<ul class="list-unstyled">
					<li><a href="#">김경민</a></li>
					<li><a href="#">김완길</a></li>
					<li><a href="#">박정은</a></li>
					<li><a href="#">이수현</a></li>
				</ul>
			</div>
			<div class="col-xs-12 col-sm-3 column">
				<h4>프로젝트의 소식지 신청!</h4>
				<form>
					<div class="form-group">
						<input type="text" class="form-control" title="No spam, we promise!" placeholder="이메일을 적어주세요">
					</div>
					<div class="form-group">
						<button class="btn btn-primary" data-toggle="modal" data-target="#alertModal" type="button">메일링 신청하기</button>
					</div>
				</form>
			</div>
			<div class="col-xs-12 col-sm-3 text-right">
				<h4>Follow</h4>
				<ul class="list-inline">
					<li><a rel="nofollow" href="" title="Twitter"><i class="icon-lg ion-social-twitter-outline"></i></a>&nbsp;</li>
					<li><a rel="nofollow" href="" title="Facebook"><i class="icon-lg ion-social-facebook-outline"></i></a>&nbsp;</li>
					<li><a rel="nofollow" href="" title="Dribble"><i class="icon-lg ion-social-dribbble-outline"></i></a></li>
				</ul>
			</div>
		</div>
		<br /> <span class="pull-right text-muted small"><a href="http://www.bootstrapzero.com">Landing Zero by BootstrapZero</a> ©2015 Company</span>
	</div>
	</footer>
	<div id="galleryModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-lg">
			<div class="modal-content">
				<div class="modal-body">
					<img src="//placehold.it/1200x700/222?text=..." id="galleryImage" class="img-responsive" />
					<p>
						<br />
						<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">
							Close <i class="ion-android-close"></i>
						</button>
					</p>
				</div>
			</div>
		</div>
	</div>
	<div id="aboutModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">プロジェクトの目的は・・・</h2>
					<h5 class="text-center">一緒に前に進むこと</h5>
					<p class="text-justify">
						한명 한명의 프로그래밍 실력은 부족할 수도 있습니다. 분명 힘들었던 적도 있었고 , 마음이 상한 적도 있었습니다. 그래도 절대 포기하지 않았습니다. 그리고 다른 것은 몰라도 단 한가지 만은 확실하게 얻을 수 있었습니다. 그것은 바로 " 함께하는 즐거운 마음 "입니다. 여러분들은 한달간 프로젝트를 하며 어떤 것을 느끼셨나요? 그리고 어떤 것을 얻으셨나요? <br>자 !&nbsp; 이제 [우리들]의 이야기를 시작하겠습니다.


					</p>
					<p class="text-center">
						<a href="https://sites.google.com/site/dekimasuse/" target="_blank">프로젝트 관리사이트 이동</a>
					</p>
					<br />
					<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">OK</button>
				</div>
			</div>
		</div>
	</div>
	<div id="alertModal1" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">チームのリーダー</h2>
					<img src="./img/kkm.jpg" style="margin-left: 23%">
					<p class="text-center">キムギョンミン</p>
					<p class="text-center">
						<a href="http://www.bootstrapzero.com">個人サイトはこちら・・・</a>
					</p>
					<br />
					<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">
						OK <i class="ion-android-close"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<div id="alertModal2" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">企画・分析担当</h2>
					<img src="./img/kwg.jpg" style="margin-left: 23%">
					<p class="text-center">キムワンギルです。</p>
					<p class="text-center">
						<a href="http://www.bootstrapzero.com">個人サイトはこちら・・・</a>
					</p>
					<br />
					<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">
						OK <i class="ion-android-close"></i>
					</button>
				</div>
			</div>
		</div>
	</div>
	<!--  -->
	<div id="alertModal3" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">Back-End Engineer</h2>
					<img src="./img/lsh.jpg" style="margin-left: 23%">
					<p class="text-center">イ・スヒョンです。</p>
					<p class="text-center">
						<a href="http://www.bootstrapzero.com">個人サイトはこちら・・・</a>
					</p>
					<br />
					<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">
						OK <i class="ion-android-close"></i>
					</button>
				</div>
			</div>
		</div>
	</div>

	<!--  -->
	<div id="alertModal4" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-sm">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">Front-End Engineer</h2>
					<img src="./img/pje.jpg" style="margin-left: 23%">
					<p class="text-center">パクジョンウンです</p>
					<p class="text-center">
						<a href="http://www.bootstrapzero.com">個人サイトはこちら・・・</a>
					</p>
					<br />
					<button class="btn btn-primary btn-lg center-block" data-dismiss="modal" aria-hidden="true">
						OK <i class="ion-android-close"></i>
					</button>
				</div>
			</div>
		</div>
	</div>

	<!--  -->

	<!--  -->
	<!-- 로그인창모달 -->
	<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<h2 class="text-center">
						로그인해주세요
						<button class="btn btn-primary btn-md pull-right" data-dismiss="modal" aria-hidden="true">X</button>

					</h2>


					<form action="login.action" method="post" name="login" role="form">
						<fieldset>
							<div class="form-group">
								<input class="form-control" placeholder="ID" name="memberVo.memberId" type="email" autofocus>
							</div>
							<div class="form-group">
								<input class="form-control" placeholder="Password" name="memberVo.password" type="password" value="">
							</div>
							<div class="checkbox">
								<label> <input name="remember" type="checkbox" value="Remember Me">저장
								</label>
							</div>
							<!-- Change this to a button or input when using this as a form -->
							<a href="#joinModal" data-toggle="modal" class="btn btn-lg btn-success btn-block" data-dismiss="modal">회원가입</a> <a href="#" onclick="javascript:login.submit();" class="btn btn-lg btn-success btn-block">로그인</a>
						</fieldset>
					</form>

				</div>
			</div>
		</div>
	</div>

	<!-- 회원가입 -->
	<style>
/*
회원가입창 스타일 수정
*/
#joinModal  ul {
	list-style-type: none;
}

#joinModal  form {
	width: 100%;
	font-family: meiryo;
	font-size: 13px;
}

#joinModal  fieldset {
	border: 0;
	font-size: 13px;
}

#joinModal  fieldset legend {
	font-size: 25px;
	font-weight: bold;
	font-family: malgun gothic, sans-serif;
	color: #00afef;
	padding: 10px 0 20px 10px;
}

#joinModal  fieldset ul {
	width: 800px;
}

#joinModal  fieldset label {
	width: 150px;
	display: inline-block;
	padding-right: 25px;
	text-align: right;
	font-weight: bold;
	color: #777;
}

#joinModal  fieldset input {
	width: 260px;
	height: 30px;
	margin-bottom: 5px;
	text-indent: 15px;
	border-radius: 2px;
	border: 1px solid #aaa;
	color: #777;
}

#joinModal  #btn01 {
	width: 80px;
	height: 28px;
	text-indent: 0px;
	font-size: 11px;
	font-weight: 600;
	background-color: #fff;
	color: #00afef;
	border-radius: 5px;
	border: 2px solid #00afef;
	vertical-align: center;
}

#joinModal  fieldset #userpw0 {
	margin-bottom: 30px;
}

#joinModal  fieldset #pwEnter {
	margin-bottom: 30px;
}

#joinModal  fieldset #gender {
	width: 100%;
	line-height: 30px;
}

#joinModal   #gender input {
	width: 12px;
	height: 12px;
	margin: 0 5px 0 10px;
	text-indent: 0px;
	vertical-align: middle;
}

#joinModal  fieldset select {
	width: 60px;
	height: 24px;
	margin-bottom: 7px;
}

#joinModal  fieldset select#useryear {
	width: 90px;
}

#joinModal  #tel input {
	width: 167px;
}

#joinModal  #master {
	margin-bottom: 30px;
}

#joinModal  #master label {
	font-weight: bold;
}

#joinModal  #master input {
	width: 95px;
	border-radius: 4px;
	border: 2px solid #00afef;
}

#joinModal  #btnCenter {
	width: 250px;
	margin: 0 auto;
	text-align: center;
}

#joinModal  #btnCenter input {
	width: 110px;
	height: 40px;
	margin-right: 5px;
	border-radius: 5px;
	border: 0;
	background-color: #00afef;
	color: #fff;
	font-size: 14px;
	font-weight: bold;
	text-indent: 0;
}

#joinModal  .danger {
	color: red;
	font-weight: normal;
}

#joinModal  #loginT .danger {
	color: red;
	font-weight: normal;
	margin-left: 26%;
}

#joinModal .must_text {
	font-size: 12px;
	color: #000;
}
}
</style>
	<div id="joinModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<form action="join.action" id="form1" name="form1" method="post" onsubmit="return joinMember()">
						<fieldset>
							<div class="page-header" style="border-left: 5px solid #1b809e; padding-top: 0;">
								<span style="font-size: 25px; font-weight: bold; font-family: inherit; margin-left: 1%;">회원가입</span>
							</div>

							<!-- 기본 정보 -->
							<ul id="basicInfo">
								<li><label for="userid">아이디</label> <input type="text" id="userid" name="memberVo.memberId" placeholder="아이디" maxlength="20" required="required" onchange="idChanged();" /></li>
								<br>
								<span id="idCheckSpan"></span>

								<!-- <input type="button" id="btn01" onclick="check_Id()"
                           value="중복확인" required="required" />                  
                           <div id="checkId"></div>
                        <li><small></small></li> -->

								<li><label for="userpw" style="background: url(' ') no-repeat 140px 6px;">패스워드</label> <input type="password" id="userpw" name="memberVo.password" placeholder="패스워드" maxlength="20" required="required" /> <br></li>
								<li id="pwEnter"><label for="userpw0">패스워드 확인</label> <input type="password" id="userpw0" placeholder="패스워드 확인" maxlength="20" required="required" /></li>
								<li><label for="username" style="background: url(' ') no-repeat 140px 6px;">이름</label> <input type="text" id="username" name="memberVo.name" placeholder="이름" maxlength="20" required="required" /> <span id="nameCheck"></span></li>
								<li id="gender"><label style="background: url(' ') no-repeat 140px 6px;">성별</label> <input name="memberVo.gender" id="man" type="radio" value="0" checked="checked" />남자 <input name="memberVo.gender" id="woman" type="radio" value="1" />여자</li>
								<li><label style="background: url(' ') no-repeat 140px 6px;">생년월일</label> <select id="year" name="useryear" title="년도"></select> 년&nbsp&nbsp <select id="month" name="usermonth" title="월"></select> 월&nbsp <select id="day" name="userday" title="일"></select> 일</li>
								<li><label style="background: url(' ') no-repeat 140px 6px;">이메일</label> <input type="text" placeholder="이메일 주소@도메인" id="email" name="memberVo.email" required="required"></li>
								<li><label style="background: url(' ') no-repeat 140px 6px;">휴대폰번호</label> <input type="text" id="tel" name="memberVo.phone" placeholder="숫자만 입력" required="required"></li>
							</ul>
							<div id="btnCenter">
								<input type="submit" value="가입" /> <input type="reset" data-dismiss="modal" value="취소" />
							</div>
						</fieldset>
						<input type="hidden" id="birthday" name="memberVo.birth">
					</form>

				</div>
			</div>
		</div>
	</div>

	<!--  -->

	<!--scripts loaded here from cdn for performance -->
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.js"></script>
	<script src="js/scripts.js"></script>

</body>
</html>