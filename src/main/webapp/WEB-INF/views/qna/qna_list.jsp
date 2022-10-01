<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
 crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
crossorigin="anonymous"></script>
<link href="https://webfontworld.github.io/NanumSquare/NanumSquare.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/qna_css/qnacss.css"  rel="stylesheet">
<link href="${pageContext.request.contextPath}/resources/css/qna_css/qnalist.css"  rel="stylesheet">
<script src="${pageContext.request.contextPath}/resources/js/httpRequest.js"></script>
<!--  <script src="${pageContext.request.contextPath}/resources/js/qnajs/qna.js"></script> -->
</head>
<script>
$(document).ready(function () {
    $(".nav_container nav ul li").mouseenter(function (e) {
        $(".nav_container nav ul li a").siblings(".nav_dropdown").show();
    });
    
    $("nav").mouseleave(function () {
      $(".nav_dropdown").hide();
    });
      
    $(".nav_dropdown div").mouseenter(function () {
      $(this).parentsUntil("li").parent().css("background-color", "#ffe695");
    });
        
    $(".nav_dropdown div").mouseleave(function () {
      $(this).parentsUntil("li").parent().css("background-color", "#fff");
    });
  });

function test() {

	var target = document.getElementById("search");

	var search = target.options[target.selectedIndex].value;

	var search_res = document.getElementById("search_res").value.trim();
	if (search == '') {
		// search에 값이 비어있으면 gogaeklist.do?search= 이렇게만 넘어가므로
		// gogaeklist.do?search=all로 넘어갈 수 있도록 해준다.
		search = 'all';
	}
	location.href = "qna_list.do?page=1&search="
			+ search + "&search_res=" + search_res;
	
}

</script>

<div id="all">
<body>
  <header>
    <div class="box"> 
      <nav id="menu">
					<ul id="top_menu">
						<c:choose>
							<c:when test="${empty user}">
								<li><a href="login_form.do">로그인</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="logout.do">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
						<li>|</li>
						<li><a href="checkout.do">마이페이지</a></li>
					</ul>
				</nav>
      <div id="logo">
          <a href="main.do"><img src="${pageContext.request.contextPath}/resources/img/logo.png"></a>
       </div> 
    </div> 
  </header>
  <div id="sticky">
  <section class="navigation box">
            <div class="nav_container">
               <nav>
                  <ul>
                     <li><a href="search.do" class="title">자료검색</a>
                        <ul class="nav_dropdown">
                           <div class="menu_bd">
                              <li><a href="search.do">통합검색</a></li>
                              <li><a href="recommend.do">추천도서</a></li>
                              <li><a href="request.do">희망도서신청</a></li>
                           </div>
                        </ul></li>
                     <li><a href="library_guide.do" class="title">도서관소개</a>
                        <ul class="nav_dropdown">
                           <div class="menu_bd">
                              <li><a href="library_guide.do">도서관 안내</a></li>
                              <li><a href="checkout_guide.do">대출반납안내</a></li>
                              <li><a href="map.do">찾아오시는길</a></li>
                              <li><a href="membership.do">회원증 발급</a></li>
                           </div>
                        </ul></li>
                     <li><a href="notice_list.do" class="title">열린공간</a>
                        <ul class="nav_dropdown">
                           <div class="menu_bd">
                              <li><a href="notice_list.do">공지사항</a></li>
                              <li><a href="often.do">자주하는질문</a></li>
                              <li><a href="qna_list.do">Q&A 게시판</a></li>
                              <li><a href="eventlist.do">행사안내</a></li>
                           </div>
                        </ul></li>
                     <li><a href="checkout.do" class="title">나만의도서관</a>
                        <ul class="nav_dropdown">
                           <div>
                              <li><a href="checkout.do">도서대출현황</a></li>
                              <li><a href="wish.do">관심도서목록</a></li>
                              <li><a href="review.do">나만의한줄평</a></li>
                              <li><a href="mbti.do">동화 MBTI 테스트</a></li>
                           </div>
                        </ul></li>
                  </ul>
               </nav>
            </div>
         </section>
      </div>
    <div class = "box">
    <aside>
        
        
         <ul>
            <li id="strong">열린공간</li>
            <li><a href="notice_list.do">공지사항</a></li>
            <li><a href="qna_list.do">Q&A 게시판</a></li>
            <li><a href="often.do">자주 하는 질문</a></li>
            <li><a href="eventlist.do">행사 관련 안내</a></li>
            
        </ul>
  
  
</aside>

    <!-- <section class="box" style="height:500px">

    </section> -->
    
     
   
   <div class = "main">
    
      <div class="page-title">
         <div id="location">
		            <div>
		              <h1> Q&A </h1>
		            </div>
		            <div class="loc_history">
		              	홈 &nbsp;>&nbsp; 열린공간 &nbsp;> &nbsp; <b> Q&A </b>
		            </div>
		     
        </div>
    
        <!-- board seach area -->
        
        <div id="board-search">
            
                <div class="search-window">
                    <form>
                    
                        <div class="search-wrap">
                            <select id ="search" style = "height : 40px; padding-left : 10px;">
                            	<option value="all" selected>전체</option>
                            	<option value="id">아이디</option>
                            	<option value="title">제목</option>
                            </select>
                            <input id="search_res"  placeholder="검색어를 입력해주세요.">
                            <input type="button" id ="btn" class="btn btn-dark" value="검색" onclick="test();">
                        </div>
                        </form>
                      </div>
                   </div>
                    
                
            </div>
  
      
      <!-- board list area -->
        <div id="board-list">
          
                <table class="board-table">
                    <thead>
                    <tr>
                        <th scope="col" class="th-num">번호</th>
                        <th scope="col" class="th-title">제목</th>
                        <th scope="col" class="th-name">아이디</th>
                        <th scope="col" class="th-date">등록일</th>
                        <th scope="col" class="th-readhit">조회수</th>
                    </tr>
                    </thead>
               <tbody>
		<c:forEach var="vo" items="${ list }">
		<tr>
			<td align="center">${ vo.idx }</td>
			
			<td style = "text-align : left; padding-left : 10px;">
			<!-- 댓글일경우 제목을 들여쓰기 한다 -->
			<c:forEach begin="1" end="${ vo.depth }">&nbsp;</c:forEach>
			
			<!-- 댓글기호 -->
			<c:if test="${ vo.depth ne 0 }">ㄴ[re]:</c:if>
			
			<!-- 삭제된 글일경우 클릭이 불가 -->
			<c:if test="${ vo.del eq 0 }">
				<a href="qna_view.do?idx=${ vo.idx }&page=${empty param.page ? 1 : param.page }">${ vo.title }</a>
			</c:if>
			
			<c:if test="${ vo.del eq -1 }">
				<font color="gray">${ vo.title }</font>
			</c:if>
			
			</td>
			
			<td align="center">${ vo.id }</td>
			
			<td align="center">${fn:split(vo.regidate, ' ')[0]}</td>
			
			<td align="center">${ vo.readhit }</td>
		</tr>

		</c:forEach>
	
                   
                   
                    </tbody>
                </table>
          
			<c:if test="${!empty list}">
						<p align="center">${pageMenu}</p>
					</c:if>

		
                <div class = "write">
                <input type="button" class="btn btn-dark" value="글쓰기" onclick="location.href='qna_insert_form.do'">
            </div>
       
      </div>
    </div>
  </div>
    <footer>
      <div class="box">
         <nav id="bottom_menu">
            <ul>
                <li><a href="footer1.do">이용약관</a></li>
                <li><a href="footer2.do">개인정보처리방침</a></li>
                <li><a href="footer3.do">도서관운영조례</a></li>
            </ul>
         </nav>
         <div class="items">
            <ul>
                <li>Copyright© 2000. JINRI DISTRICT LIBRARY. All Rights Reserved.</li>
            </ul>
         </div> 
      </div> 
    </footer>
    

    
    
    
    
      
      
</body>
</html>