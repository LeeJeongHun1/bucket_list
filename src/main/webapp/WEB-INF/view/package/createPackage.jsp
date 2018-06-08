<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>GARO ESTATE | Properties page</title>
<style type="text/css">
ul.air {
	position: relative;
	overflow: hidden;
	background-color: #f7f7f7;
	border-top: 1px solid #acb4bf;
	color: #8390a3;
}

li.tab {
	float: left;
	width: 120px;
}

li.roomType {
	width: 500px;
	float: left;
}

ul.room {
	width: 1000px;
	text-align: center;
}

li.ok {
	width: 200px;
	float: left;
}

ul.detail {
	position: relative;
	overflow: hidden;
	background-color: #f7f7f7;
	border-top: 1px solid #acb4bf;
	width: 1000px;
	color: #8390a3;
}

ul.detail>li {
	text-align: center;
}

div.airlist {
	overflow: auto;
	height: 234px;
}

.searchTitle {
	font-size: 15px;
	font-weight: bold;
	text-align: center;
}

.detailpop {
	
}

.bold {
	font-weight: bold;
	color: black;
}
</style>
</head>
<body>
	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">Submit new property</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="content-area submit-property"
		style="background-color: #FCFCFC;">
		&nbsp;
		<div class="container">
			<div class="clearfix">
				<div class="wizard-container">
					<div class="wizard-card ct-wizard-orange" id="wizardProperty">
						<form action="" method="POST" id="mm">
							<div class="wizard-header">
								<h3>
									<b>My package</b> YOUR PROPERTY <br> <small>나만의
										패키지를 만들어 여행을 떠나세요.</small>
								</h3>
							</div>
							<ul>
								<li><a href="#step1" data-toggle="tab">AirLine</a></li>
								<li><a href="#step2" data-toggle="tab">Hotel</a></li>
								<li><a href="#step3" data-toggle="tab">Enjoy</a></li>
								<li><a href="#step4" data-toggle="tab">Finished</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-pane" id="step1">
									<div class="row p-b-15  ">
										<div class="col-sm-12">
											<div class="col-sm-12">
												<div class="col-sm-4">
								
												</div>
												<div class="col-sm-4">
<!-- 													<label style="margin-left: 40px">예약인원</label> <label>성인</label> -->
<!-- 													<select name="adult"> -->
<!-- 														<option value="1">1</option> -->
<!-- 													</select> <label>유아</label> <select name="child"> -->
<!-- 														<option value="0">0</option> -->
<!-- 													</select> -->
												</div>
												<c:if test="1 == 0">
													<div class="col-sm-4">
														<label>(관리자) 패키지 간편등록</label> <select name="endDay">
															<option value="1">홍콩</option>
															<option value="1">발리</option>
															<option value="1">동유럽</option>
															<option value="1">서유럽</option>
															<option value="1">중국</option>
															<option value="1">일본</option>
														</select> <select name="endDay">
															<option value="1">도시1</option>
															<option value="1">도시2</option>
															<option value="1">도시3</option>
															<option value="1">도시4</option>
															<option value="1">도시5</option>
														</select>
													</div>
												</c:if>
											</div>
											<div class="col-sm-12">
												<div class="col-sm-4">
													<select id="departureCity" name="departureCityCode" class="selectpicker" data-live-search="true"
														data-live-search-style="begins" title="출발도시">
														<option value="1">인천</option>
														<option value="2">부산</option>
														<option value="3">대구</option>
														<option value="4">청주</option>
														<option value="5">제주</option>
														<option value="6">강원</option>
													</select>
													<select id="arrivalCity" name="arrivalCityCode" class="selectpicker" data-live-search="true"
														data-live-search-style="begins" title="여행도시">
														<option value=""></option>
														<option value="0">파리</option>
														<option value="2">로마</option>
													</select>
												</div>
												<div class="col-sm-4">
													<input type="text" class="form-control" id="departureDate" name="startDate" placeholder="가는일자">
													<input type="text" class="form-control" id="arrivalDate" name="endDate" placeholder="오는일자"><br>
												</div>
												<div class="col-sm-4">
													<button class="btn-primary" style="margin-left: 163px"
														onclick="return doAir();">조회</button>
												</div>
											</div>

											<div class="col-sm-12">
												<div class="col-sm-1"></div>
												<div class="col-sm-10">
													<span style="margin-left: 380px">가는 항공편</span>
													<div class="form-group">
														<ul class="air">
															<li class="tab"><span>항공권</span></li>
															<li class="tab"><span>여정시간</span></li>
															<li class="tab"><span>잔여석</span></li>
															<li class="tab"><span>요금</span></li>
															<li class="tab"><span>예약상태</span></li>
															<li class="tab"><span>선택</span></li>
														</ul>
													</div>
													<div class="start-airlist">
													</div>
													<div class="form-group"></div>
													<span style="margin-left: 380px">오는 항공편</span>
													<div class="form-group">
														<ul class="air">
															<li class="tab"><span>항공권</span></li>
															<li class="tab"><span>여정시간</span></li>
															<li class="tab"><span>잔여석</span></li>
															<li class="tab"><span>요금</span></li>
															<li class="tab"><span>예약상태</span></li>
															<li class="tab"><span>선택</span></li>
														</ul>
													</div>
													<div class="end-airlist">
													</div>
												</div>
												<div class="col-sm-1"></div>
											</div>
										</div>
									</div>
								</div>
								<!--  End step 1 -->

								<div class="tab-pane" id="step2">
									<div class="col-sm-12">
										<div class="col-sm-4">
											<div class="col-sm-12">
												<select id="hCity" name="hotelCity" >
													<option value=''>지역을 선택하세요</option>
													<option value="2">로마</option>
													<option value="3">밀라노</option>
												</select>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="col-sm-12">
												<input type="text" id="hotelName" class="form-control" name="hotelName"
													placeholder="숙박업체명을 입력하세요">
											</div>
										</div>
										<div class="col-sm-4">
											<div class="col-sm-12">
												<button class="btn-primary" style="margin-left: 163px"
														onclick="return doHotel();">조회</button>
											</div>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="col-sm-4">
											<div class="col-sm-12">
												<input type="text" class="form-control" id="checkinDate" name="checkinDate" placeholder="입실일">
											</div>
										</div>
										<div class="col-sm-4">
											<div class="col-sm-12">
												<input type="text" class="form-control" id="checkoutDate" name="checkoutDate" placeholder="퇴실일">
											</div>
										</div>
									</div>
									<div class="form-group"></div>
									<div class="col-sm-12">
										<div class="row" id="pop">
											<div class="proerty-th">
											<!-- 여기부터 ajax 그리기 -->
												<div class="col-sm-6 col-md-3 p0">
													<div class="box-two proerty-item">
														<div class="item-thumb">
															<a href="#"><img src="<c:url value="/resources/assets/img/demo/Ibis_Paris_Tour_Eiffel.jpg"/>"></a>
														</div>
														<div class="item-entry overflow">
															<h5>
																<a href="#">Ibis Paris Tour 3성</a>
															</h5>
															<div class="dot-hr"></div>
															<span class="pull-left">Ibis Paris Tour 3성</span> <span
																class="proerty-price pull-right">110,333 $</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- End step 2 -->

								<div class="tab-pane" id="step3">
									<div class="row">
										<div class="col-sm-4">
											<div class="col-sm-12">
												<span class="searchTitle" style="text-align: center;">테마별 관광지</span>
											</div>
											<div class="col-sm-12">
												<select id="lunchBegins" class="selectpicker"
													data-live-search="true" data-live-search-style="begins"
													title="Select your contry">
													<option value="1">전체</option>
													<option value="2">유명 관광지</option>
													<option value="3">전시/박물관</option>
													<option value="4">쇼핑</option>
													<option value="5">공연/행사</option>
												</select>
											</div>
										</div>
										<div class="col-sm-4">
											<label>낮은 가격순</label> <input type="radio" name="bb"
												class="aaa" /> <label>높은 가격순</label> <input type="radio"
												name="bb" class="aaa" />
										</div>
										<div class="col-sm-12" style="text-align: center;">
											<span class="d">06월 14일</span> <span class="d"
												style="margin-left: 20px">06월 15일</span> <span class="d"
												style="margin-left: 20px">06월 16일</span> <span class="d"
												style="margin-left: 20px">06월 17일</span>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="form-group"></div>
										<div class="row">
											<div class="proerty-th">
												<div class="col-sm-6 col-md-3 p0">
													<div class="box-two proerty-item">
														<div class="item-thumb">
															<a href="#"><img src="<c:url value="/resources/assets/img/demo/Louvre.jpg"/>"></a>
														</div>
														<div class="item-entry overflow">
															<h5>
																<a href="#">루브르 박물관</a>
															</h5>
															<div class="dot-hr"></div>
															<span class="pull-left"><b>선택 :</b> <input
																type="checkbox" name="louvre" /> </span> <span
																class="proerty-price pull-right">15 $</span>
														</div>
													</div>
												</div>
												<div class="col-sm-6 col-md-3 p0">
													<div class="box-two proerty-item">
														<div class="item-thumb">
															<a href="#"><img src="assets/img/demo/Orsay.jpg"></a>
														</div>
														<div class="item-entry overflow">
															<h5>
																<a href="#">오르세 미술관 </a>
															</h5>
															<div class="dot-hr"></div>
															<span class="pull-left"><b>선택 :</b> <input
																type="checkbox" name="orsay" /> </span> <span
																class="proerty-price pull-right"> 2.5$</span>
														</div>
													</div>
												</div>
												<div class="col-sm-6 col-md-3 p0">
													<div class="box-two proerty-item">
														<div class="item-thumb">
															<a href="#"><img src="assets/img/demo/Versailles.jpg"></a>
														</div>
														<div class="item-entry overflow">
															<h5>
																<a href="#">베르사유 궁전 </a>
															</h5>
															<div class="dot-hr"></div>
															<span class="pull-left"><b>선택 :</b> <input
																type="checkbox" name="bersau" /> </span> <span
																class="proerty-price pull-right"> 4$</span>
														</div>
													</div>
												</div>
												<div class="col-sm-6 col-md-3 p0">
													<div class="box-two proerty-item">
														<div class="item-thumb">
															<a href="#"><img src="assets/img/demo/Auvers.jpg"></a>
														</div>
														<div class="item-entry overflow">
															<h5>
																<a href="#">고흐마을 </a>
															</h5>
															<div class="dot-hr"></div>
															<span class="pull-left"><b>선택 :</b> <input
																type="checkbox" name="auvers" /> </span> <span
																class="proerty-price pull-right"> 33$</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!--  End step 3 -->
								<div class="tab-pane" id="step4">
									<h4 class="info-text">Finished</h4>
									<div class="row">
										<div class="col-sm-12">
											<div class="">
												<div class="col-sm-12">
													<div class="col-sm-2">
														<span>가는 항공편</span>
													</div>
													<div class="col-sm-10">
														<span>진에어 (06:05 - 07:20) 58,300원 </span>
													</div>
												</div>
												<div class="checkbox">
													<label> <input type="checkbox" /> <strong>패키지
															내용을 다시한번 확인하시고 체크 하세요</strong>
													</label>
												</div>

											</div>
										</div>
									</div>
								</div>
								<!--  End step 4 -->
							</div>

							<div class="wizard-footer">
								<div class="pull-right">
									<input type='button' class='btn btn-next btn-primary'
										name='next' value='Next' /> <input type='submit'
										class='btn btn-finish btn-primary ' name='finish'
										value='Finish' />
								</div>

								<div class="pull-left">
									<input type='button' class='btn btn-previous btn-default'
										name='previous' value='Previous' />
								</div>
								<div class="clearfix"></div>
							</div>
						</form>
					</div>
					<!-- End submit form -->
				</div>
			</div>
		</div>
	</div>
	<div class="col-sm-12 detailpop">
		<div class="col-sm-4">
			<a href="#"><img src="assets/img/demo/Hotel_Chavanel.jpg"></a>
		</div>
		<div class="col-sm-8">
			<span>호텔명</span>
			<hr>
			<span>주소 : 제주특별자치도 서귀포시 칠십리로91번길 12</span><br> <span>전화 :
				064-763-0773</span><br> <span>등급 : 3성급</span><br> <span>홈페이지
				: www.hotelcombin.com</span><br>
		</div>
		<div class="col-sm-12">
			<span>아래에 원하시는 객식을 선택하세요</span>
		</div>
		<div class="col-sm-12">
			<ul class="detail">
				<li class="roomType"><span>객식타입</span></li>
				<li class="ok"><span>06/14</span></li>
				<li class="ok"><span>선택</span></li>
			</ul>
		</div>
		<div class="col-sm-12">
			<ul class="room">
				<li class="roomType"><span>도미토리 6베드 여성전용(조식불포함)</span></li>
				<li class="ok"><span>9,091원</span></li>
				<li class="ok">가능<input type="radio" name="bb" class="aaa" /></li>
			</ul>
		</div>
		<div class="col-sm-12">
			<ul class="room">
				<li class="roomType"><span>비즈니스(No View)(조식불포함)</span></li>
				<li class="ok"><span>44,629원</span></li>
				<li class="ok">가능<input type="radio" name="bb" class="aaa" /></li>
			</ul>
		</div>
		<div class="col-sm-12">
			<ul class="room">
				<li class="roomType"><span>스탠다드 발코니(No View)(조식불포함)</span></li>
				<li class="ok"><span>40,497원</span></li>
				<li class="ok">가능<input type="radio" name="bb" class="aaa" /></li>
			</ul>
		</div>
		<div class="col-sm-12" style="margin-top: 30px">
			<div class="col-sm-2"></div>
			<div class="col-sm-6">
				<span>선택한 객식 : 스탠다드 발코니(No View)(조식불포함)</span>
			</div>
			<div class="col-sm-2">
				<span>가격: 40,497원</span>
			</div>
			<div class="col-sm-2">
				<a href="#" id="selectHotel" class="btn-primary">선택</a>
			</div>
		</div>
	</div>
	<div style="display: none;">
		<ul class="airInfo">
			<li class="tab"><span class="airName"></span></li>
			<li class="tab"><span class="airFlyingTime"></span></li>
			<li class="tab"><span class="airSeatCnt"></span></li>
			<li class="tab"><span class="airAdultPrice"></span></li>
			<li class="tab"><span class="yn"></span></li>
			<li>
				<input type="radio" class="airCode" name="airCode" value="" />
			</li>
		</ul>
	</div>
	<script>
		$(function() {
			$("div.col-sm-12.detailpop").hide();
// 			$(".airInfo").children().clone()
			$('#departureDate').datepicker({
				format : "yyyy년mm월dd일",
				startDate: 'd',
				autoclose: true
			}).datepicker("setDate", new Date());
			$('#arrivalDate').datepicker({
				format : "yyyy년mm월dd일",
				startDate: '+1d',
				autoclose: true
			}).datepicker("setDate", new Date());
			$('#checkinDate').datepicker({
				format : "yyyy년mm월dd일",
				startDate: $('#departureDate').val(),
				autoclose: true
			}).datepicker("setDate", new Date());
			$('#checkoutDate').datepicker({
				format : "yyyy년mm월dd일",
				startDate: 'd',
				autoclose: true
			}).datepicker("setDate", new Date());
		});
		
		function waitMe() {
			$("body").waitMe({
				effect: "facebook",
				text: "처리 중 입니다.",
				bg: "rgba(255, 255, 255, 0.7)",
				color: "#000",
			});
		}
		
		function doHotel(){
			console.log($("#hCity option").val())
			console.log($("#hCity").text())
			waitMe();
			$.ajax({
				type: "POST",
				url: '<c:url value="/package/hotelSearch.json"/>',
				data: {
						hotelName: $("#hotelName").val(),
						cityCode: $("#hCity").val()
						},
				dataType: "json"
			})
			.done(function (result){
				$("body").waitMe("hide");
				var html = '';
				for(let h of result){
					$(".proerty-th").html("");
					html += '<div class="col-sm-6 col-md-3 p0">';
					html += '	<div class="box-two proerty-item">';
					html += '		<div class="item-thumb">';
					html += '			<a href=# onclick=' + 'return doa()' + ';><img src=' + '<c:url value='+h.hotelImgPath+'/> ' + '></a>';
					html += '		</div>';
					html += '		<div class="item-entry overflow">';
					html += '			<h5>';
					html += '				<a href="#">' + h.hotelName + '</a>';
					html += '			</h5>';
					html += '			<div class="dot-hr"></div>';
					html += '			<span class="pull-left">' + h.cityName + '</span>';
					html += '		</div>';
					html += '	</div>';
					html += '</div>';
					$(".proerty-th").append(html);
				}
			})
			.fail(function (){
				$("body").waitMe("hide");
			});
			return false;
		}
		function doa(){
			var $div = $(".col-sm-12.detailpop");
			$(".item-thumb").click(function() {
				$("#pop").hide();
				$("#pop").after($div);
				$div.show();
			})
			$("#selectHotel").click(function() {
				$div.hide();
				$("#pop").show();
			})
		}
		
		
		function doAir() {
			if ($("#departureCity").val() == '') {
				swal({
					type : 'error',
					title : '출발도시를 선택하세요~',
				})
				return false;
			}
			if ($("#arrivalCity").val() == '') {
				swal({
					type : 'error',
					title : '여행도시를 선택하세요~',
				})
				return false;
			}
			if($("#arrivalDate").val() == ''){
				swal({
					type : 'error',
					title : '오는 일자를 선택하세요',
				})
				return false;
			}
			console.log($("#arrivalDate").val())
			$.ajax({
				url: '<c:url value="/package/airSearch.json"/>',
				data: $("#mm").serialize(),
				type: "POST",
				dataType: "json"
			})
			.done(function (result){
				$(".start-airlist").html("")
				$(".end-airlist").html("")
				if(result.startAir.length == 0){
					$(".start-airlist").html("<span>해당하는 항공편이 존재하지 않습니다.</span>")
				}
				if(result.endAir.length == 0){
					$(".end-airlist").html("<span>해당하는 항공편이 존재하지 않습니다.</span>")
				}
				let $airInfo = $(".airInfo").clone();
				for(let air of result.startAir){
					$airInfo.find(".airName").text(air.airName);
					$airInfo.find(".airFlyingTime").text(air.flyingTime);
					$airInfo.find(".airSeatCnt").text(air.seatCnt);
					$airInfo.find(".airAdultPrice").text(air.adultPrice + '원');
					$airInfo.find(".airCode").val(air.airCode);
					if(air.seatCnt == '0'){
						$airInfo.find(".yn").text("예약불가");
						$airInfo.find(".airCode").attr('disabled');
					}else{
						$airInfo.find(".yn").text("예약가능");
					}
					$airInfo.removeClass("airInfo")
					$(".start-airlist").append($airInfo.clone());
					$(".start-airlist").find(".airCode").click(function (){
						$(this).parent().togleClass("checked");
					})
				}
				for(let air of result.endAir){
					$airInfo.find(".airName").text(air.airName);
					$airInfo.find(".airFlyingTime").text(air.flyingTime);
					$airInfo.find(".airSeatCnt").text(air.seatCnt);
					$airInfo.find(".airAdultPrice").text(air.adultPrice + '원');
					$airInfo.find(".airCode").val(air.airCode);
					if(air.seatCnt == '0') {
						$airInfo.find(".yn").text("예약불가");
						$airInfo.find(".airCode").attr('disabled');
					} else{
						$airInfo.find(".yn").text("예약가능");
					}
					$airInfo.removeClass("airInfo")
					$(".end-airlist").append($airInfo.clone());
					console.log($(".end-airlist").find(".airCode").parent())
					$(".end-airlist").find(".airCode").parent().click(function (){
						$(this).togleClass("checked");
					})
					$(".end-airlist").find(".airCode").click(function (){
						$(this).parent().togleClass("checked");
					})
				}
			})
			return false;
		}
		$("input[name='finish']").click(function() {
			alert("클릭딤");
		})
		var $div = $(".col-sm-12.detailpop");
		$(".item-thumb").click(function() {
			$("#pop").hide();
			$("#pop").after($div);
			$div.show();
		})
		$("#selectHotel").click(function() {
			$div.hide();
			$("#pop").show();
		})
		$(".d").click(function() {
			$(".d").removeClass("bold");
			$(this).addClass("bold");
		})
	</script>

</body>
</html>