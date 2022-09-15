<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/resources/js/httpRequest.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/review.css">
<!-- 부트스트랩 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- 차트 링크 -->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<link href="https://webfontworld.github.io/NanumSquare/NanumSquare.css"
	rel="stylesheet">
<title>진리도서관 :: 나만의 한줄평</title>
<script type="text/javascript">
	$(document).ready(
			function() {
				$(".nav_container nav ul li").mouseenter(
						function(e) {
							$(".nav_container nav ul li a").siblings(
									".nav_dropdown").show();
						});

				$("nav").mouseleave(function() {
					$(".nav_dropdown").hide();
				});

				$(".nav_dropdown div").mouseenter(
						function() {
							$(this).parentsUntil("li").parent().css(
									"background-color", "#ffe695");
						});

				$(".nav_dropdown div").mouseleave(
						function() {
							$(this).parentsUntil("li").parent().css(
									"background-color", "#fff");
						});
				// 아코디언 패널
				var allPanels = $(".accordion > dd");
				allPanels.hide();
				$(".accordion > dt > a").click(function() {
					$(this).parent().next().slideToggle();
					$(this).parent().next().scrollIntoView({
						behavior : "smooth"
					});
				});
				// 차트
				var ctx = document.getElementById('myChart');
				var myChart = new Chart(ctx, {
					type : 'bar',
					data : {
						labels : [ '1월', '2월', '3월', '4월', '5월', '6월' ],
						datasets : [ {
							label : '매달 공유된 한줄평',
							data : [ 2, 5, 7, 11, 8, 4 ],
							backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
									'rgba(54, 162, 235, 0.2)',
									'rgba(255, 206, 86, 0.2)',
									'rgba(75, 192, 192, 0.2)',
									'rgba(153, 102, 255, 0.2)',
									'rgba(255, 159, 64, 0.2)' ],
							borderColor : [ 'rgba(255, 99, 132, 1)',
									'rgba(54, 162, 235, 1)',
									'rgba(255, 206, 86, 1)',
									'rgba(75, 192, 192, 1)',
									'rgba(153, 102, 255, 1)',
									'rgba(255, 159, 64, 1)' ],
							borderWidth : 1
						} ]
					},
					options : {
						scales : {
							yAxes : [ {
								ticks : {
									beginAtZero : true
								}
							} ]
						}
					}
				});
			});
</script>
</head>
<body>
	<div id="all">
		<header>
			<div class="box">
				<nav id="menu">
					<ul id="top_menu">
						<li>로그인</li>
						<li>|</li>
						<li>로그아웃</li>
						<li>|</li>
						<li>마이페이지</li>
					</ul>
				</nav>
				<div id="logo">
					<a href="index.html"><img
						src="${pageContext.request.contextPath}/resources/img/logo.png"></a>
				</div>
			</div>
		</header>
		<div id="sticky">
			<section class="navigation box">
				<div class="nav_container">
					<nav>
						<ul>
							<li><a href="search.html" class="title">자료검색</a>
								<ul class="nav_dropdown">
									<div class="menu_bd">
										<li><a href="search.html">통합검색</a></li>
										<li><a href="recommend.html">추천도서</a></li>
									</div>
								</ul></li>
							<li><a href="info.html" class="title">도서관소개</a>
								<ul class="nav_dropdown">
									<div class="menu_bd">
										<li><a href="info.html">도서관 안내</a></li>
										<li><a href="borrow.html">대출반납안내</a></li>
										<li><a href="map.html">찾아오시는길</a></li>
										<li><a href="join.html">회원증 발급</a></li>
									</div>
								</ul></li>
							<li><a href="project.html" class="title">열린공간</a>
								<ul class="nav_dropdown">
									<div class="menu_bd">
										<li><a href="project.html">공지사항</a></li>
										<li><a href="#">자주하는질문</a></li>
										<li><a href="#">Q&A 게시판</a></li>
										<li><a href="event.html">행사안내</a></li>
									</div>
								</ul></li>
							<li><a href="checkout_return.html" class="title">나만의도서관</a>
								<ul class="nav_dropdown">
									<div>
										<li><a href="checkout_return.html">도서대출현황</a></li>
										<li><a href="book_request.html">희망도서신청</a></li>
										<li><a href="review.html">나만의한줄평</a></li>
										<li><a href="mbti.html">도서관NPC테스트</a></li>
									</div>
								</ul></li>
						</ul>
					</nav>
				</div>
			</section>
		</div>

		<div class="box">
			<aside>
				<ul>
					<li id="strong">나만의 도서관</li>
					<li><a href="checkout_return.html">도서대출현황</a></li>
					<li><a href="book_request.html">희망도서 신청</a></li>
					<li><a href="review.html">나만의 한줄평</a></li>
					<li><a href="mbti.html">도서관 NPC 테스트</a></li>
				</ul>
			</aside>
			<div class="review_main">
				<h2 id="review_title">나만의 한줄평</h2>
				<p id="review_sub_title">이야기는 나눌수록 배가 된다</p>
				<div class="container">
					<canvas id="myChart"></canvas>
				</div>
				<!-- board seach area -->
				<div id="board-search">
					<div class="container">
						<div class="search-window">
							<form action="">
								<div class="search-wrap">
									<input id="search" type="search" name=""
										placeholder="검색어를 입력해주세요." value="">
									<button type="submit" class="btn btn-dark">검색</button>
								</div>
						</div>
						</form>
					</div>
				</div>

				<!-- board list area -->
				<div id="board-list">
					<div class="container">
						<table class="board-table">
							<thead>
								<tr>
									<th scope="col" class="th-num">번호</th>
									<th scope="col" class="th-title">제목</th>
									<th scope="col" class="th-num">작성자</th>
									<th scope="col" class="th-date">등록일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td></td>
									<th><a href="#">대출기간은 언제까진가요?</a>
										<p>테스트</p></th>
									<td>홍길동</td>
									<td>2017.07.13</td>
								</tr>
								<tr>
									<td></td>
									<th><a href="#!">도서관 이용시간은 언제까진가요?</a></th>
									<td>홍길동</td>
									<td>2017.06.15</td>
								</tr>
							</tbody>
						</table>
					</div>
					<input type="button" class="btn btn-dark" id="write_btn" onclick="location.href='review_write.do'" value="글쓰기">
				</div>
			</div>
		</div>
	</div>

	<footer>
		<div class="box">
			<nav id="bottom_menu">
				<ul>
					<li><a href="tos.html">이용약관</a></li>
					<li><a href="privacy.html">개인정보처리방침</a></li>
					<li><a href="use.html">도서관운영조례</a></li>
				</ul>
			</nav>
			<div class="items">
				<ul>
					<li>Copyright© 2000. JINRI DISTRICT LIBRARY. All Rights
						Reserved.</li>
				</ul>
			</div>
		</div>
	</footer>
	</div>
</body>
</html>