<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html class="no-js">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>GARO ESTATE | Property page</title>
<meta name="description" content="GARO is a real-estate template">
<meta name="author" content="Kimarotec">
<meta name="keyword"
	content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800'
	rel='stylesheet' type='text/css'>

<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
<link rel="icon" href="favicon.ico" type="image/x-icon">

<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/font-awesome.min.css">
<link rel="stylesheet" href="assets/css/fontello.css">
<link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css"
	rel="stylesheet">
<link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet" media="screen">
<link rel="stylesheet" href="assets/css/bootstrap-select.min.css">
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/icheck.min_all.css">
<link rel="stylesheet" href="assets/css/price-range.css">
<link rel="stylesheet" href="assets/css/owl.carousel.css">
<link rel="stylesheet" href="assets/css/owl.theme.css">
<link rel="stylesheet" href="assets/css/owl.transitions.css">
<link rel="stylesheet" href="assets/css/lightslider.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet" href="assets/css/responsive.css">
<style>
.review {
	width: 730px;
	border-top: 3px solid;
	border-bottom: 3px solid;
}

.review tr td {
	height: 54px;
	border-bottom: 1px solid #d1d1d1;
	font-size: 14px;
	color: #000;
}

.review_write {
	right: 23px;
	position: absolute;
	padding: 3px 20px;
}

.property-features ul li {
	display: block;
	margin: 0;
}

.day {
	width: 730px;
	border-top: 3px solid;
}

.day .daily {
	height: 56px;
	border-top: 3px solid #333333;
	border-bottom: none;
	background: #f9fbfb;
}

.day tbody > tr {
	height: 54px;
	border-bottom: 1px solid #d1d1d1;
	font-size: 14px;
	color: #000;
}

.view {
	display: none;
}

.on {
	display: table-row;
}

.wClose {
	display: none;
}

.onR {
	display: block;
}
.imgPath{width: 150px;height: 150px; display:block; margin-bottom:10px; margin-top:10px;}
</style>
</head>
<body>

	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- Body content -->




	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">Super nice villa</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area single-property"
		style="background-color: #FCFCFC;">
		&nbsp;
		<div class="container">

			<div class="clearfix padding-top-40">

				<div class="col-md-8 single-property-content prp-style-2">
					<div class="">
						<div class="row">
							<div class="light-slide-item">
								<div class="clearfix">
									<div class="favorite-and-print">
										<a class="add-to-fav" href="#login-modal" data-toggle="modal">
											<i class="fa fa-star-o"></i>
										</a> <a class="printer-icon " href="javascript:window.print()">
											<i class="fa fa-print"></i>
										</a>
									</div>

									<ul id="image-gallery" class="gallery list-unstyled cS-hidden">
										<li data-thumb="assets/img/property-1/property1.jpg"><img
											src="assets/img/property-1/property1.jpg" /></li>
										<li data-thumb="assets/img/property-1/property2.jpg"><img
											src="assets/img/property-1/property3.jpg" /></li>
										<li data-thumb="assets/img/property-1/property3.jpg"><img
											src="assets/img/property-1/property3.jpg" /></li>
										<li data-thumb="assets/img/property-1/property4.jpg"><img
											src="assets/img/property-1/property4.jpg" /></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="single-property-wrapper">

							<div class="section">
								<h4 class="s-property-title">Description</h4>
								<div class="s-property-content">
									<p>홍콩 3일◈ 얌차식/소호거리/빅토리아피크 ◈ 중국속의 세계적 도시! 아시아의 진주! 홍콩을 실속있게
										관광하는 상품</p>
								</div>
							</div>
							<!-- End description area  -->

							<div class="section additional-details">
	<c:forEach var="entry" items="${packageCode}">
									<c:if test="${entry.key eq 'startDate'}">
								<h4 class="s-property-title">여행정보</h4>
								<ul class="additional-details-list clearfix">
									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">상품가격</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${entry.value.packagePrice}원</span></li>

									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">비행시간</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${entry.value.flyingTime}</span></li>
									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">방문도시</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">${entry.value.cityName}</span>
									</li>

									<li><span class="col-xs-6 col-sm-4 col-md-4 add-d-title">총좌석수</span>
										<span class="col-xs-6 col-sm-8 col-md-8 add-d-entry">(좌석:${entry.value.seatCnt}석(최소출발:성인8명))</span>
									</li>

								</ul>
							
									</c:if>
								</c:forEach>
							
							</div>
							<!-- End additional-details area  -->

							<div class="section property-features">

								<h4 class="s-property-title">포함사항</h4>
								<ul>
									<li>1. 제주항공 왕복 항공권</li>
									<li>2. PIC리조트 슈페리어 객실 숙박</li>
									<li>3. 전일정 호텔식 ( 골드카드 - 부대시설 무료이용 )</li>
									<li>4. PIC 선셋BBQ , 씨사이드그릴 1회</li>
									<li>5. 사이판 아일랜드 관광 및 마나가하섬 ( 환경세 포함 )</li>
									<li>6. 너랑나랑별빛 포함</li>
								</ul>

							</div>
							<div class="section property-features">

								<h4 class="s-property-title">불포함사항</h4>
								<ul>
									<li>1. 가이드 경비(성인$30/어린이$10/전일정1인) 현지에서 필수 지불하셔야 합니다.</li>
									<li>2. 선택관광 비용 및 기타 개인경비</li>
									<li>(매너팁은 고객의 자율적 선택사항으로써 지불여부에따른 불이익은 없습니다.)</li>
								</ul>

							</div>

							<div class="section property-features">

								<h4 class="s-property-title">일정표</h4>
								<table class="day">
								<c:forEach var="entry" items="${packageCode}">
									<c:if test="${entry.key eq 'stay'}">
										<tr class="daily">
												<th>일정</th>
												<th>날짜</th>
												<th>숙소명</th>
												<th>숙소사진</th>
											</tr>
				
										<c:forEach var="i" items="${entry.value}" varStatus="status">
										<tr>
											<td>　</td>
											<td>${i.scheduleDaily}</td>
											<td>${i.hotelName}</td>
											<td><img class="imgPath" src="..${i.hotelImgPath}"/></td> 
										</tr>
									<!-- 	<tr>
											<th>식사</th>
											<td>중식 : 기내식</td>
											<td colspan="2">석식 : 기내식</td>
										</tr> -->
										</c:forEach>
									</c:if>
									<c:if test="${entry.key eq 'daily'}">
										<c:forEach var="d" items="${entry.value}" varStatus="status">
										<tr class="daily">
											<td>일정</td>
											<td>${d.scheduleDaily}</td>
											<td colspan="2">${d.themeType}</td>
										</tr>
										<tr>
										<td colspan="4">
											<table width="700px;" style="margin: auto">
												<tr>
													<th colspan="4" style="border-bottom: 1px solid #d1d1d1;">${d.themeInfo}</th>
												</tr>
												<tr style="height: 40px;">
													<td>${d.imgPath}</td>
													<td class="col-md-4"><img
														src="assets/img/property-video.jpg"
														style="width: 150px; heihgt: 150px;"></td>
													<td class="col-md-4"><img
														src="assets/img/property-video2.jpg"
														style="width: 150px; heihgt: 150px;"></td>
													<td class="col-md-4" style="height: 40px;">${d.themeInfo}</td>
												</tr>
												<%-- <tr style="height: 40px;">
													<td class="col-md-4"><img src="">이미지</td>
													<td class="col-md-4"><img src="">이미지</td>
													<td class="col-md-4">원래 루이 13세가 지은 사냥용 별장이었으나, 1662년
														무렵 루이 14세의 명령으로 대정원을 착공하고1668년 건물 전체를 증축하여 외관을 가로축 부분이 앞으로
														튀어나온 U자형 궁전으로 개축하였다. 1979년 유네스코에서 세계문화유산으로 지정하였다. 호화로운 건물과
														광대하고 아름다운 정원과 분수, 로페라와 거울의 방으로 유명하다 !!!!!!!!!!${status.count} 테마 정보: , 테마이름: , 이미지 ${d.imgPath}</td>
												</tr> --%>
											</table>
										</td>
									</tr>
										
                                       </c:forEach>
											</c:if>
										</c:forEach>
									<tr>
										<th>식사</th>
										<td>조식 : 호텔식</td>
										<td>중식 : 한식</td>
										<td>석식 : 기내식</td>
									</tr>

								</table>
							</div>

							<div class="section property-share">
								<h4 class="s-property-title">리뷰</h4>
								<div class="roperty-social">
								<div id="re">
									<table class="review">
										<tr>
											<th>제목</th>
											<th>별점</th>
											<th>작성자</th>
											<th>등록일</th>

										</tr>
							<!-- 			<tr>
											<td>내용입니다.</td>
											<td>별점 : <span>4.5점</span></td>
											<td>홍길동</td>
											<td>2018.04.20</td>
										</tr>
										<tr>
											<td>내용입니다.</td>
											<td>별점 : <span>4.5점</span></td>
											<td>홍길동</td>
											<td>2018.04.20</td>
										</tr> -->
									<!-- 	<tr class="review_list">
											<td>타이틀</td>
											<td>별점 : <span>4.5점</span></td>
											<td>홍길동</td>
											<td>2018.04.20</td>
										</tr>
										<tr class="view">
											<td colspan="4">
												<div>내용</div>
											</td>
										</tr> -->
									</table>
								</div>
									<form method="post" id="reviewRegist">
									<div class="wClose">
										<table class="inReivew" style="position: relative;"
											cellpadding="0" cellspacing="0" border="0" width="100%"
											summary="등급,평점,출발일,항공,호텔">
											<caption></caption>
											<colgroup>
												<col width="13%">
												<col width="25%">
												<col width="13%">
												<col width="49%">
											</colgroup>
											<tbody>
												<tr>
												
										<c:forEach var="entry" items="${packageCode}">
											<c:if test="${entry.key eq 'endDate'}">
										<%--   !!!!!!!!!!${entry.value.packageCode} --%>
  										<input type="hidden" value="${entry.value.packageCode}" name="packageCode"/>
											</c:if>
										</c:forEach>
													<th>아이디</th>
													<td id="user"><input type="text" name="userEmail" value="${sessionScope.member.userEmail}"/></td>
													<th>평점(5점만점)</th>
													<td>
														<ul>
															<li class="vote_list">항공 <select name="airEvalScore">
																	<c:forEach var="i" begin="1" end="5">
																		<option value="1">${i}점</option>
																	</c:forEach>
															</select> 숙박 <select name="hotelEvalScore">
																	<c:forEach var="i" begin="1" end="5">
																		<option value="1">${i}점</option>
																	</c:forEach>
															</select>
															</li>
														</ul>
													</td>
												</tr>
												<tr>
													<th>작성시간</th>
													<td><!-- <input type="text" name="regDate"> --></td>
													<th>항공</th>
													<td>대한항공</td>
												</tr>
												<tr>
													<th>제목</th>
													<td colspan="3"><input type="text" name="title"
														style=" border: 1px solid silver; margin-top: 10px; margin-bottom: 10px; width: 500px; height: 30px;"></td>
												</tr>
												<tr>
													<td colspan="4"><textarea name="content" rows="3"
															cols="100" style="width: 700px;"></textarea></td>
												</tr>
											</tbody>
										</table>
										<button class="navbar-btn nav-button wow fadeInRight animated animated">등록하기</button>
									</div>
									</form>
									<c:if test="${!empty sessionScope.member}">
										<button id="review_write"
											style="position: absolute; right: 0;"
											class="navbar-btn nav-button wow fadeInRight animated animated">글쓰기</button>
									</c:if>
									<c:if test="${empty sessionScope.member}">
										<button id="review_undefined"
											style="position: absolute; right: 0;"
											class="navbar-btn nav-button wow fadeInRight animated animated">글쓰기</button>
									</c:if>
								</div>
							</div>
							<script type="text/javascript">
								$(function() {

									$("#review_write").on("click", function() {
										$(".wClose").toggleClass("onR");
									});
									$("#review_undefined").on("click",
											function() {
												alert("로그인이 필요한 서비스입니다.");
											});

								})
 					$("#reviewRegist").submit(function (e) {
					e.preventDefault();
							alert("rka");	
							alert($("#reviewRegist").serialize());
							$.ajax({
								type:'post',
								url:"<c:url value='/search/reviewRegist.json'/>",
								data:$("#reviewRegist").serialize(),
								success: function(data){
									alert("가지");
									var html ="";
									alert($('#reviewRegist input[name="packageCode"]').val());
									html+='<tr><th>제목</th>';
						            html+='<th>별점</th>';
									html+='<th>작성자</th>';
									html+='<th>작성일</th>';
								    html+='</tr>';
									for (var i = 0; i < data.length; i++) {
									var r = data[i];
									html+='<tr class="review_list"><td>'+r.title+'</td>';
									html+='<td>'+r.airEvalScore+'</td>';
									html+='<td>'+r.userEmail+'</td>';
									var date = new Date(r.regDate);
									var time = date.getFullYear() + "년" 
									         + (date.getMonth() + 1) + "울" 
									         + date.getDate() + "일"
									         + date.getHours() + ":"
									         + date.getMinutes() + ":"
									         + date.getSeconds();
									html += '	<td>' + time + '</td>';  
									html+='</tr>';
									html+='<tr class="view">';
									html+='<td colspan="4">';
									html+='<div>'+r.content+'</div></td></tr>'; 
									}if(data.length == 0){
										html += '<tr class="review_list"><td colspan="4">리뷰가 존재하지 않습니다.</td></tr>';
									}
									$(".review tbody").html(html);
									$(".review_list").on("click", function() {
										alert("감");
										$(".view").toggleClass("on");
									});
								},
								error:function(error){
									alert(error);
								}
				
										})
							
						});	
				
				function reviewList(){
					alert("가는지");
					var $code = $('#reviewRegist input[name="packageCode"]').val();
				$.ajax({
					url: "<c:url value='/search/reviewList.json'/>",
					data: {packageCode:$code},
					dataType: "json", 
					success: function(data){
						var html ="";
						alert($('#reviewRegist input[name="packageCode"]').val());
						html+='<tr><th>제목</th>';
			            html+='<th>별점</th>';
						html+='<th>작성자</th>';
						html+='<th>작성일</th>';
					    html+='</tr>';
						for (var i = 0; i < data.length; i++) {
						var r = data[i];
						html+='<tr class="review_list"><td>'+r.title+'</td>';
						html+='<td>'+r.airEvalScore+'</td>';
						html+='<td>'+r.userEmail+'</td>';
						var date = new Date(r.regDate);
						var time = date.getFullYear() + "년" 
						         + (date.getMonth() + 1) + "울" 
						         + date.getDate() + "일"
						         + date.getHours() + ":"
						         + date.getMinutes() + ":"
						         + date.getSeconds();
						html += '	<td>' + time + '</td>';  
						html+='</tr>';
						html+='<tr class="view">';
						html+='<td colspan="4">';
						html+='<div>'+r.content+'</div></td></tr>'; 
						}if(data.length == 0){
							html += '<tr class="review_list"><td colspan="4">리뷰가 존재하지 않습니다.</td></tr>';
						}
						$(".review tbody").html(html);
						$(".review_list").on("click", function() {
							alert("감");
							$(".view").toggleClass("on");
						});
					},
					error:function(error){
						alert(error);
					}
	
				});
				}
			
					reviewList();
							</script>
							<!-- End video area  -->
						</div>
					</div>
				</div>

				<div class="col-md-4 p0">
					<%-- 				<c:forEach var="entry" items="${packageCode}">
  
   !!!!!!
   <c:if test="${entry.key eq 'startDate'}">
   스타트 데이트!!
 ${entry.value.startDate}
 ${entry.value.endDate}
 ${entry.value.packageCode}
 ${entry.value.packagePrice}
   !!!!!!!!!!!   
   </c:if>
   <c:if test="${entry.key eq 'endDate'}">
   엔드데이트
 ${entry.value.startDate}
 ${entry.value.endDate}
 ${entry.value.packageCode}
 ${entry.value.packagePrice}
   
   </c:if>
   </c:forEach> --%>


					<aside
						class="sidebar sidebar-property blog-asside-right property-style2">
						<div class="dealer-widget">
							<div class="dealer-content">
								<c:forEach var="entry" items="${packageCode}">
									<c:if test="${entry.key eq 'startDate'}">
										<div class="inner-wrapper">
											<div class="single-property-header">
												<h1 class="property-title">${entry.value.packageName}</h1>
											</div>
											<div class="dealer-section-space">
												상품코드<span
													style="color: #FFA500; font-weight: bold; margin-left: 20px;">${entry.value.packageCode}</span>
											</div>
										</div>
									</c:if>
								</c:forEach>
							</div>
						</div>
						<div
							class="panel panel-default sidebar-menu wow fadeInRight animated">
							<c:forEach var="entry" items="${packageCode}">
								<c:choose>
									<c:when test="${entry.key eq 'startDate'}">
										<div class="panel-heading">
											<h3 class="panel-title" style="margin-bottom: 10px;">출발일</h3>
											<p>한국출발 ${entry.value.startDate}</p>
											<p>현지도착 ${entry.value.endDate}</p>
										</div>
									</c:when>
									<c:when test="${entry.key eq 'endDate'}">
										<div class="panel-heading">
											<h3 class="panel-title" style="margin-bottom: 10px;">도착일</h3>
											<p>한국출발 ${entry.value.startDate}</p>
											<p>현지도착 ${entry.value.endDate}</p>
										</div>
									</c:when>
								</c:choose>
							</c:forEach>

							<div class="panel-heading">
								<c:forEach var="entry" items="${packageCode}">
									<c:if test="${entry.key eq 'endDate'}">
										<h3 class="panel-title" style="margin-bottom: 10px;">총
											상품가격</h3>
										<table style="width: 350px;">
											<tr>
												<th>성인</th>
												<td style="">${entry.value.packagePrice}원</td>
											</tr>
											<tr>
												<th>아동</th>
												<td>390,000원</td>
											</tr>
											<tr>
												<th>유아</th>
												<td>150,000원</td>
											</tr>
										</table>
									</c:if>
								</c:forEach>
							</div>

							<div class="panel-heading">
								<h3 class="panel-title" style="margin-bottom: 10px;">총 인원수</h3>
								<table style="width: 350px;">
									<tr>
										<th>성인</th>
										<td><select>
												<c:forEach var="i" begin="1" end="30">
													<option>${i}</option>
												</c:forEach>
										</select></td>
										<th>아동</th>
										<td><select>
												<c:forEach var="i" begin="1" end="30">
													<option>${i}</option>
												</c:forEach>
										</select></td>
										<th>유아</th>
										<td><select>
												<c:forEach var="i" begin="1" end="30">
													<option>${i}</option>
												</c:forEach>
										</select></td>
									</tr>

								</table>
							</div>
							<div class="panel-heading">
								<h3 class="panel-title" style="margin-bottom: 10px;">총 예정금액</h3>
								<h4 style="border: none; display: block;">1000000원</h4>
								<button
									class="navbar-btn nav-button wow fadeInRight animated animated"
									style="display: block;">결제하기</button>
							</div>

						</div>

					</aside>
				</div>

			</div>

		</div>
	</div>

	</div>
	<%-- $.ajax({
				type:'post',
				url:"<c:url value='/search/searchDetail.json'/>",
				data: $("#detailAll").serialize(),
				success: function(data){
					var html="";
					$(".searchColor > span").html("");
					$(".searchColor > span").html(data.length + "건");
					$("#makeSearch").html("");
					alert("실행zss");
				console.log(data);--%>
	<script type="text/javascript">
	/* $.ajax({
		type:'post',
		url:"<c:url value='/search/reviewRegist.json'/>",
		data:$("#reviewRegist").serialize(),
	}).done(function(result){
		alert(result);	
	}); */
	
	</script>

	<script src="assets/js/vendor/modernizr-2.6.2.min.js"></script>
	<script src="assets/js/jquery-1.10.2.min.js"></script>
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/bootstrap-select.min.js"></script>
	<script src="assets/js/bootstrap-hover-dropdown.js"></script>
	<script src="assets/js/easypiechart.min.js"></script>
	<script src="assets/js/jquery.easypiechart.min.js"></script>
	<script src="assets/js/owl.carousel.min.js"></script>
	<script src="assets/js/wow.js"></script>
	<script src="assets/js/icheck.min.js"></script>
	<script src="assets/js/price-range.js"></script>
	<script type="text/javascript" src="assets/js/lightslider.min.js"></script>
	<script src="assets/js/main.js"></script>

	<script>
		$(document).ready(function() {

			$('#image-gallery').lightSlider({
				gallery : true,
				item : 1,
				thumbItem : 9,
				slideMargin : 0,
				speed : 500,
				auto : true,
				loop : true,
				onSliderLoad : function() {
					$('#image-gallery').removeClass('cS-hidden');
				}
			});
		});
	</script>



</body>
</html>