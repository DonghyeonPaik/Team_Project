<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />

<title>우리 오늘 모해?</title>
<meta name="description" content="date" />
<script src="https://kit.fontawesome.com/46d3d8cf24.js"
	crossorigin="anonymous"></script>
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" />
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet" />

<link rel="stylesheet" href="resources/css/home.css" type="text/css" />
<link rel="stylesheet" href="resources/css/footer.css" type="text/css" />
<script src="resources/js/home_main.js" defer></script>
<script src="resources/js/jquery-3.2.1.min.js"></script>
</head>
<body>
	<!-- Navbar -->
	<nav id="navbar">
		<div class="navbar_logo">
			<a href="index" id="logo">우리 오늘 뭐해?</a>
		</div>
		<ul class="navbar__menu">
			<li class="navbar__menu__item active" data-link="#menu">검색</li>
			<li class="navbar__menu__item" data-link="#recommend">추천 코스</li>
			<li class="navbar__menu__item" data-link="#review">리뷰</li>
			<!-- 로그인하지 않은 상태 -->
			<c:if test = "${member == null}">
			<li class="navbar__menu__item"><a href="login">로그인</a></li>
			</c:if>
			
			<!-- 로그인 한 상태 -->
			<c:if test  = "${member != null }">
			<li class="navbar__menu__item"><a href="mypage">마이페이지</a></li>
			<li class="navbar__menu__item"><a href="logout.do">로그아웃</a></li>
			</c:if>
			
		</ul>
		<!-- navbar toggle -->
		<button class="navbar__toggle-btn">
			<i class="fas fa-bars"></i>
		</button>
	</nav>



	<!-- Home -->
	<section id="home"
		style="height: 800px;">
		<div class="left">
			<img src="resources/images/mainbackground.png" style="width: 95vh;">
		</div>
		<div class="right">
			<div class="text">
				<h2>데이트 코스 추천 사이트</h2>
				<h1>데이트 코스</h1>
				<input type="button" id="start" value="시작하기" />
			</div>
		</div>
	</section>
		


	<!-- step -->
	<section id="step">
		<div class="flexbox">
			<div class="context1">
				데이트 지역만 선택하면<br /> 일정이 자동으로 완성되는 <br /> 쉽고 간편한 데이트 코스 플래너
			</div>

			<div class="context">
				<ul>
					<li><span>step 1</span></li>
					<li>&nbsp;</li>
					<li>지역선택</li>
				</ul>
			</div>

			<div class="context">
				<ul>
					<li><span>step 2</span></li>
					<li>&nbsp;</li>
					<li>코스 선택</li>
				</ul>
			</div>

			<div class="context">
				<ul>
					<li><span>step 3</span></li>
					<li>&nbsp;</li>
					<li>일정 생성</li>
				</ul>
			</div>
		</div>
	</section>



	<!-- MENU -->
	<section id="menu" class="section">
		<br> <br>
		<div class="section__container">
			<h1>어디로 데이트 가시나요?</h1>
			<h2 id="text_menu" style="color: lightgray">지역을 검색하거나 목록에서 직접
				선택해주세요</h2>

			<div id="search">
				<input class="search" type="text" placeholder="" />
				<button>
					<i class="fas fa-search"></i>
				</button>
			</div>

			<div class="course__wrapper">
				<div class="course__img">
					<img class="c__img" src="resources/images/course/gangnam.jpg"
						alt="desert" />
					<h2 class="c__description">강남</h2>
				</div>

				<div class="course__img">
					<img class="c__img" src="resources/images/course/gunggu.jpg"
						alt="desert" />
					<h2 class="c__description">종로</h2>
				</div>

				<div class="course__img">
					<img class="c__img" src="resources/images/course/hongdae.jpg"
						alt="desert" />
					<h2 class="c__description">홍대</h2>
				</div>

				<div class="course__img">
					<img class="c__img" src="resources/images/course/hannam.png"
						alt="desert" />
					<h2 class="c__description">한남동</h2>
				</div>

				<div class="course__img">
					<img class="c__img" src="resources/images/course/itaewon.jpg"
						alt="desert" />
					<h2 class="c__description">이태원</h2>
				</div>

				<div class="course__img">
					<img class="c__img" src="resources/images/course/sungsu.JPG"
						alt="desert" />
					<h2 class="c__description">성수동</h2>
				</div>
			</div>
		</div>
	</section>

	<section id="recommend" class="section">
		<div class="section__container">
			<br>
			<h1>추천 데이트 장소</h1>
			<h2 id="text_menu" style="color: lightgray">서울 데이트 추천</h2>

			<div class="slideshow-container">
				<!-- Full-width images with number and caption text -->
				<div class="mySlides fade">
					<img class="imgs" src="resources/images/recommend/1.png"
						style="width: 80%" /> <img class="imgs"
						src="resources/images/recommend/2.png" style="width: 80%" />
				</div>

				<div class="mySlides fade">
					<img class="imgs" src="resources/images/recommend/4.png"
						style="width: 80%" /> <img class="imgs"
						src="resources/images/recommend/3.png" style="width: 80%" />
				</div>

				<div class="mySlides fade">
					<img class="imgs" src="resources/images/recommend/6.png"
						style="width: 80%" /> <img class="imgs"
						src="resources/images/recommend/7.png" style="width: 80%" />
				</div>

				<div class="mySlides fade">
					<img class="imgs" src="resources/images/recommend/8.png"
						style="width: 80%" /> <img class="imgs"
						src="resources/images/recommend/9.png" style="width: 80%" />
				</div>

			</div>
		</div>
	</section>

	<section id="review" class="section">
		<div class="section__container">
			<br>
			<h1>데이트 장소 리뷰</h1>
			<div class="course__wrapper">
				<div class="course__img">
					<img class="c__img" src="resources/images/course/gangnam.jpg"
						alt="desert" />
					<h2 class="c__description">리뷰</h2>
				</div>

				<div class="course__img">
					<img class="c__img" src="resources/images/course/gunggu.jpg"
						alt="desert" />
					<h2 class="c__description">리뷰</h2>
				</div>

				<div class="course__img">
					<img class="c__img" src="resources/images/course/hongdae.jpg"
						alt="desert" />
					<h2 class="c__description">리뷰</h2>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<%@include file="../footer.jsp"%>
	</footer>

	<!-- Arrow Up -->
	<button class="arrow__up">
		<i class="fas fa-arrow-up"></i>
	</button>

	<script src="resources/js/home_slides.js"></script>
</body>
</html>
