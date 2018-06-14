<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
<title>GARO ESTATE | Properties page</title>
<script type="https://momentjs.com/downloads/moment.js"></script>
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
	width: 115px;
}

li.roomType {
	width: 500px;
	float: left;
}

ul.room {
	width: 1000px;
	text-align: center;
}
ul.selTheme{
	width: 600px;
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
.d{
	margin-left: 20px;
}
</style>
</head>
<body>
	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">Create Your Package</h1>
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
						<form action="${pageContext.request.contextPath}/package/insertPackage.do" method="POST" id="mm">
							<div class="wizard-header">
								<h3>
									<b>My package</b> YOUR BUCKET LIST <br> <small>나만의
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
														<option value="8">밀라노</option>
														<option value="15">블라디보스토크</option>
														<option value="0">바르셀로나</option>
														<option value="0">마드리드</option>
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
<!-- 												<div class="col-sm-1"></div> -->
												<div class="col-sm-12">
													<span style="margin-left: 380px">가는 항공편</span>
													<div class="form-group">
														<ul class="air">
															<li class="tab"><span>항공권</span></li>
															<li class="tab"><span>출발</span></li>
															<li class="tab"><span>도착</span></li>
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
															<li class="tab"><span>출발</span></li>
															<li class="tab"><span>도착</span></li>
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
<!-- 												<div class="col-sm-1"></div> -->
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
														<option value="0">파리</option>
														<option value="2">로마</option>
														<option value="8">밀라노</option>
														<option value="15">블라디보스토크</option>
														<option value="0">바르셀로나</option>
														<option value="0">마드리드</option>
												</select>
											</div>
										</div>
										<div class="col-sm-4">
											<div class="col-sm-12">
												<input type="text" id="hotelSearchName" class="form-control" name="hotelName"
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
												<span class="sDate"></span> 
												<span class="eDate"></span> 
											</div>
										</div>
										<div class="col-sm-4">
											<div class="col-sm-12">
											</div>
										</div>
									</div>
									<div class="col-sm-12" id="detailhotel">
										<div class="row" id="pop">
											<div class="proerty-th hotel">
											<!-- 여기부터 ajax 그리기 -->
											</div>
										</div>
									</div>
									<div class="col-sm-12" id='rh' style="display: none;">
										<span id="hotelPrice" class='bold'>호텔 요금 :</span><br>
										<span id='hotelName' class='bold'>호텔 명 :</span>
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
												<select id="theme" name="themeCode">
													<option value="">전체</option>
												</select>
											</div>
										</div>
<!-- 										<div class="col-sm-4"> -->
<!-- 											<label>낮은 가격순</label> <input type="radio" name="bb" -->
<!-- 												class="aaa" /> <label>높은 가격순</label> <input type="radio" -->
<!-- 												name="bb" class="aaa" /> -->
<!-- 										</div> -->
										<div class="col-sm-4">
											<div class="col-sm-12">
												<button class="btn-primary" style="margin-left: 163px"
														onclick="return doTheme();">검색</button>
										</div>
										</div>
										<div class="col-sm-12" id="daily" style="text-align: center;">
										</div>
									</div>
									<div class="col-sm-12">
										<div class="row">
											<div class="proerty-th proerty-theme" >
											<!-- 테마 ajax -->
											</div>
											<div class="col-sm-12">
												<div class="col-sm-2">
												</div>
												<div class="col-sm-8 sel_bx" style="display: none;">
													<ul class="selTheme" style="text-align: left; float: left;">
														<li class="selThemeDay" style="float: left;"><span>선택한 날짜</span></li>
														<li class="selThemeName" style="float: left;"><span>선택한 테마 이름</span></li>
														<li class="selThemePrice" style="float: left;"><span>선택한 테마 가격</span></li>
													</ul>
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
											<div class="col-sm-12">
												<div class="col-sm-2">
													<span>패지키 이름 : </span>
												</div>
												<div class="col-sm-10">
													<span>
														<input type="text" name="packageName" class="packageName" placeholder="패키지 이름을 설정하세요"/>
													</span>
												</div>
												<div class="col-sm-2">
													<span>가는 항공편</span>
												</div>
												<div class="col-sm-10">
													<span class="fStartAir"></span>
												</div>
												<div class="col-sm-2">
													<span>오는 항공편</span>
												</div>
												<div class="col-sm-10">
													<span class="fEndAir"></span>
												</div>
												<div class="col-sm-2">
													<span>숙박 정보</span>
												</div>
												<div class="col-sm-10">
													<span class='fHotelName'>숙박 업체를 선택하세요 !!</span>
													<span class='fHotelPrice'>숙박 업체</span>
												</div>
												<div class="col-sm-2">
													<span>테마 및 입장권</span>
												</div>
												<div class="col-sm-10">
												</div>
												<div class="col-sm-12">
													<span class="fThemeInfo"></span>
												</div>
												<div class="col-sm-12">
													<span class="totalP"></span>
												</div>
											</div>
											<div class="checkbox">
												<label> <input type="checkbox" id='agreeCheck'/>
												 <strong>패키지 내용을 다시한번 확인하시고 체크 하세요</strong>
												</label>
												<label> <input type="checkbox" id='agreeCheck'/>
												</label>
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
										onclick="return doAgree();"
										value='Finish' />
								</div>

								<div class="pull-left">
									<input type='button' class='btn btn-previous btn-default'
										name='previous' value='Previous' />
								</div>
								<div class="clearfix"></div>
							</div>
							<input type="hidden" name="userEmail" value="${sessionScope.member.userEmail}">
							<input type="hidden" id='packPrice' name="packagePrice" value="">
						</form>
					</div>
					<!-- End submit form -->
				</div>
			</div>
		</div>
	</div>
	<div style="display: none;">
		<ul class="airInfo">
			<li class="tab"><span class="airName"></span></li>
			<li class="tab"><span class="airSTime"></span></li>
			<li class="tab"><span class="airETime"></span></li>
			<li class="tab"><span class="airFlyingTime"></span></li>
			<li class="tab"><span class="airSeatCnt"></span></li>
			<li class="tab"><span class="airAdultPrice"></span></li>
			<li class="tab"><span class="yn"></span></li>
			<li class="tab">
				<div class="col-sm-4">
				
				</div>
			</li>
		</ul>
	</div>
	<script>
		var packagePrice = 0;
		var sm = '';
		var sd = '';
		var em = '';
		var ed = '';
		var day = '';
		var fStartAir = '';
		var fEndAir = '';
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
		var cityCode = '';
		
		
		function doHotel(){
			console.log(packagePrice)
			console.log($('#departureDate').val())
			console.log($('#arrivalDate').val())
			var startAirCode = $("input[name='startAirCode']:checked").val();
			var endAirCode = $("input[name='endAirCode']:checked").val();
			console.log(endAirCode, startAirCode)
			
			if(!startAirCode || !endAirCode){
				swal({
					type : 'error',
					title : '항공권을 선택하세요~',
				})
				return false;
			}
			
			waitMe();
			$.ajax({
				url: '<c:url value="/package/hotelSearch.json"/>',
				type: "POST",
				data: {
						hotelName: $("#hotelSearchName").val(),
						cityCode: arrivalCity,
						startAirCode: startAirCode,
						endAirCode: endAirCode
						},
				dataType: "json"
			})
			.done(function (result){
				console.log( $("#hotelName").val())
				console.log(arrivalCity)
				$("#rh").show();
				$("body").waitMe("hide");
				var html = '';
				$(".hotel").html('');
				console.dir(result)
				for(let h of result.hotel){
					$(".hotel").html("");
					html += '<div class="col-sm-6 col-md-3 p0">';
					html += '	<div class="box-two proerty-item">';
					html += '		<div class="item-thumb">';
					html += '			<a href="#" onclick="return doHotelDetail('+h.hotelCode+')"><img src="..' + h.hotelImgPath + '" /></a>';
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
					$(".hotel").append(html);
				}
				for(var t=0; t<result.theme.length; t++){
					$("#theme").append("<option value='"+result.theme[t].themeType+"'>"+result.theme[t].themeType+"</option>")
				}
				sm = result.schedule.startDate.split('년')[1].split('월')[0];
				sd = result.schedule.startDate.split('년')[1].split('월')[1].split('일')[0];
				em = result.schedule.endDate.split('년')[1].split('월')[0];
				ed = result.schedule.endDate.split('년')[1].split('월')[1].split('일')[0];
				$(".sDate").html(sm+'월'+sd+'일 ~')
				$(".eDate").html(em+'월'+ed+'일')
			})
			.fail(function (){
				$("body").waitMe("hide");
			});
			return false;
		}
		var t = [];
		function doTheme(){
			console.log($("input[name='z']:checked").val())
			console.log($("input[name='roomCode']:checked"))
			if(!roomCode){
				swal({
					type : 'error',
					title : '호텔을선택하세요 ~',
				})
				return false;
			}
			
			waitMe();
			console.log(roomCode)
			console.log($("#theme").val())
			console.log(arrivalCity)
			console.log($("#arrivalCity").val())
			$.ajax({
				url: '<c:url value="/package/themeSearch.json"/>',
				type: "POST",
				data: {
						themeType: $("#theme").val(),
						cityCode: $("#arrivalCity").val(),
						},
				dataType: "json"
			})
			.done(function (result){
				$("body").waitMe("hide");
				console.dir(result)
				var html = '';
				$(".proerty-theme").html('');
				for(let t of result){
					$(".proerty-theme").html("");
					html += '<div class="col-sm-6 col-md-3 p0">';
					html += '	<div class="box-two proerty-item">';
					html += '		<div class="item-thumbt">';
					html += '			<img src="..' + t.imgPath + '" style="height: 169px; width: 259px;"/>';
					html += '		</div>';
					html += '		<div class="item-entry overflow">';
					html += '			<h5>';
					html += '				<a href="#" class="aStyle">' + t.themeName + '</a>';
					html += '			</h5>';
					html += '			<div class="dot-hr"></div>';
					html += '			<span class="pull-left"><b>가격 :' + numberWithCommas(t.themePrice)+ '원</b>';
					html += '				<button id='+t.themeCode+' class="themeBtn" onclick="return false">선택</button> ';
					html += '			</span>';
					html += '		</div>';
					html += '		<div class="selectThm'+t.themeCode+'" style="display: none;">';
					if(sm == em){
						day = ed - sd;
						var eDay = Number(sd)+Number(day);
						for(var i=sd; i<=eDay; i++ ){
							var aa = sm + '월' + i + '일';
							html += '<span class="selectDay">'+aa+'<input type="radio" class="'+t.themeCode+'" data-price="'+t.themePrice+'" name="'+t.themeCode+'daily" value='+ aa +' style="width: 26px"/></span>';
						}
					}
					html += '		</div>';
					html += '	</div>';
					html += '</div>';
				}
				
				if(sm == em){
					day = ed - sd;
					var eDay = Number(sd)+Number(day);
					for(var i=sd; i<=eDay; i++ ){
						var aa = sm + '월' + i + '일';
						$("#mm").append($("<input type='hidden' name='scheduleDaily' value='"+aa+"' />"))
					}
				}
				$("#mm").append($("<input type='hidden' name='roomCode' value='"+roomCode+"' />"))
				
				$(".proerty-theme").append(html);
				$(".sel_bx").show();
				$(".themeBtn").click(function (){
					var id = $(this).attr("id");
					$(".selectThm"+id).slideToggle("slow");
				})
				$("input[name*='daily']").click(function (){
// 					console.log($(this).val())
// 					console.log($(this).attr("data-price"))
// 					console.log($(this).parent().parent().parent().find("a").text())
					var tArray = $("input[name*='daily']:checked");
					var thtml = ''
					$(".sel_bx").html('');
					for(var i=0; i<tArray.length; i++){
						console.log("날짜 : " + $(tArray[i]).val());
						console.log("가격 :" + $(tArray[i]).attr("data-price"))
						console.log("이름 : " + $(tArray[i]).parent().parent().parent().find("a").text())
						
						thtml += '';
						thtml +='<ul class="selTheme" style="text-align: left; float: left;">';
						thtml +='	<li class="selThemeDay" style="float: left;"><span>'+ $(tArray[i]).val()+ '</span></li>';
						thtml +='	<li class="selThemePrice" style="float: left;"><span>'+ numberWithCommas($(tArray[i]).attr("data-price"))+ '원</span></li>';
						thtml +='	<li class="selThemeName" style="float: left;"><span>'+  $(tArray[i]).parent().parent().parent().find("a").text() + '</span></li>';
						thtml +='</ul>';
					}
					$(".sel_bx").append(thtml);
				})
			})
			.fail(function (){
				$("body").waitMe("hide");
			});
			return false;
		}
		
		function doHotelDetail(h){
			waitMe();
			$.ajax({
				url: '<c:url value="/package/hotelDetail.json"/>',
				type: "POST",
				data: {hotelCode: h},
				dataType: "json"
			})
			.done(function (result){
				$("body").waitMe("hide");
				console.log(result)
				$("#pop").hide();
				var html = '';
				html+= '	<div class="col-sm-12" id="detailpop">';
				html+= '		<div class="col-sm-4">';
				html+= '			<a href="#"><img src="..'+ result[0].hotelImgPath + '"/></a>';
				html+= '		</div>';
				html+= '		<div class="col-sm-8">';
				html+= '			<span class="detailHotelName">'+ result[0].hotelName +'</span>';
				html+= '			<hr>';
				html+= '		</div>';
				html+= '		<div class="col-sm-12">';
				html+= '			<span>아래에 원하시는 객식을 선택하세요</span>';
				html+= '		</div>';
				html+= '		<div class="col-sm-12">';
				html+= '			<ul class="detail">';
				html+= '				<li class="roomType"><span>객실타입</span></li>';
				html+= '				<li class="ok"><span>가격</span></li>';
				html+= '				<li class="ok"><span>선택</span></li>';
				html+= '			</ul>';
				html+= '		</div>';
				if(result.length == 0){
					html+= '<div class="col-sm-12">';
					html+= '<span>예약가능한 객실이 존재하지 않습니다.</span>';
					html+= '</div>';
				}
				for(let d of result){
					html+= '<div class="col-sm-12">';
					html+= '	<ul class="room">';
					html+= '		<li class="roomType"><span>'+d.roomName+'</span></li>';
					html+= '		<li class="ok"><span>'+d.roomPrice+'원</span></li>';
					if(roomCode == d.roomCode){
						html+= '		<li class="ok"><input type="radio" name="roomCode" value="'+d.roomCode+ '" checked /></li>';
					}else{
						html+= '		<li class="ok"><input type="radio" name="roomCode" value="'+d.roomCode+ '" /></li>';
					}
					html+= '	</ul>';
					html+= '</div>';
				}
				html+= '		<div class="col-sm-12" style="margin-top: 30px">';
				html+= '			<div class="col-sm-2"></div>';
				html+= '			<div class="col-sm-6">';
				html+= '			</div>';
				html+= '			<div class="col-sm-2">';
				html+= '			</div>';
				html+= '			<div class="col-sm-2">';
				html+= '				<a href="#" onclick="return detailHide('+h+')" class="btn-primary">닫기</a>';
				html+= '			</div>';
				html+= '		</div>';
				html+= '	</div>';
				$("#detailhotel").append(html);
			})
			.fail(function (){
				$("body").waitMe("hide");
			});
			return false;
		}
		var roomCode = '';
		
		function detailHide(code) {
			console.log($("input[name='roomCode']"))
			console.log('호텔 코드' + code)
			var price = 0;
			if($("input[name='roomCode']:checked").val()){
				roomCode = $("input[name='roomCode']:checked").val();
				console.log($("input[name='roomCode']:checked").parent().parent().find("li:eq(0)").text());
				console.log("text :" + $("input[name='roomCode']:checked").parent().parent().find("li:eq(1)").text());
				console.log("day :" + Number(ed - sd))
				price = Number($("input[name='roomCode']:checked").parent().parent().find("li:eq(1)").text().split('원')[0]) * Number(ed - sd);
				console.log(price)
				$("#rh").find("#hotelPrice").html('선택하신 호텔 요금 :' + numberWithCommas(price) + '원');
				$("#rh").find("#hotelName").html('  호텔 명 ' + $("input[name='roomCode']:checked").parent().parent().parent().parent().find(".detailHotelName").text() +
				'<br>  객실명 :  ' + $("input[name='roomCode']:checked").parent().parent().find("li:eq(0)").text())
// 				$("input[name='roomCode']:checked").parent().parent().parent().parent().find(".detailHotelName").text();
			}
			console.log(roomCode);
			html = '';
			$("#detailhotel").append(html);
			$("#detailpop").remove();
			$("#detailhotel").append($("#pop"));
			$("#pop").show();
			$(".fHotelName").text($("#hotelName").text());
			console.log("호텔이름 :" + $("#hotelPrice").html())
			console.log("호텔가격 :" + $("#hotelName").text())
			$(".fHotelPrice").text($("#hotelPrice").html());
			$("#mm").append($("<input type='hidden' name='hotelCode' value='"+code+"' />"))
			packagePrice += Number(price);
			return false;
		}
		var arrivalCity = '';
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
			waitMe();
			$.ajax({
				url: '<c:url value="/package/airSearch.json"/>',
				data: $("#mm").serialize(),
				type: "POST",
				dataType: "json"
			})
			.done(function (result){
				arrivalCity = $("#arrivalCity").val();
				$("body").waitMe("hide");
				$(".start-airlist").html("")
				$(".end-airlist").html("")
				if(result.startAir.length == 0){
					$(".start-airlist").html("<span>해당하는 항공편이 존재하지 않습니다.</span>")
				}
				if(result.endAir.length == 0){
					$(".end-airlist").html("<span>해당하는 항공편이 존재하지 않습니다.</span>")
				}
// 				airName"></sp
// 				airFlyingTime
// 				airSTime"></s
// 				airETime"></s
// 				airSeatCnt"><
// 				airAdultPrice
// 				yn"></span></
				let $airInfo = $(".airInfo").clone();
				for(let air of result.startAir){
					$airInfo.find(".airName").text(air.airName);
					$airInfo.find(".airFlyingTime").text(air.flyingTime);
					$airInfo.find(".airSTime").text(air.startDate.split('년')[1]);
					$airInfo.find(".airETime").text(air.endDate.split('년')[1]);
					$airInfo.find(".airSeatCnt").text(air.seatCnt);
					$airInfo.find(".airAdultPrice").text(air.adultPrice + '원');
					var $radio = $airInfo.find(".col-sm-4");
					if(air.seatCnt == '0'){
						$airInfo.find(".yn").attr("data-yn", "n").text("예약불가");
						$(".start-airlist span[data-yn='n']").parent().addClass("disabled")
						$radio.html("<input type='radio' name='startAirCode' value='"+ air.airCode +"' disabled />")
					}else{
						$airInfo.find(".yn").attr("data-yn", "y").text("예약가능");
						$radio.html("<input type='radio' name='startAirCode' value='"+ air.airCode +"' />")
					}
					$airInfo.removeClass("airInfo")
					$(".start-airlist").append($airInfo.clone());
				}
				for(let air of result.endAir){
					$airInfo.find(".airName").text(air.airName);
					$airInfo.find(".airFlyingTime").text(air.flyingTime);
					$airInfo.find(".airSTime").text(air.startDate.split('년')[1]);
					$airInfo.find(".airETime").text(air.endDate.split('년')[1]);
					$airInfo.find(".airSeatCnt").text(air.seatCnt);
					var $radio = $airInfo.find(".col-sm-4");
					if(air.seatCnt == '0'){
						$airInfo.find(".yn").attr("data-yn", "n").text("예약불가");
						$(".end-airlist span[data-yn='n']").parent().addClass("disabled")
						$radio.html("<input type='radio' name='endAirCode' value='"+ air.airCode +"' disabled />")
					}else{
						$airInfo.find(".yn").attr("data-yn", "y").text("예약가능");
						$radio.html("<input type='radio' name='endAirCode' value='"+ air.airCode +"' />")
					}
					$airInfo.removeClass("airInfo")
					$(".end-airlist").append($airInfo.clone());
				}
				var sm = 0;
				var em = 0;
				var price = 0;
				$("input[name='startAirCode']").click(function (){
					sm = numberWithCommas($(this).parent().parent().parent().find(".airAdultPrice").text().split('원')[0]);
					fStartAir = $(this).parent().parent().parent().find(".airName").text() + '  ' +
								'(' + $(this).parent().parent().parent().find(".airSTime").text() + '~' +
								$(this).parent().parent().parent().find(".airSTime").text() + ')' + '  ' +
								sm + '원';
					packagePrice = Number($(this).parent().parent().parent().find(".airAdultPrice").text().split('원')[0]);
				})
				$("input[name='endAirCode']").click(function (){
					em = numberWithCommas($(this).parent().parent().parent().find(".airAdultPrice").text().split('원')[0]);
					fEndAir = $(this).parent().parent().parent().find(".airName").text() + '  ' +
								'(' + $(this).parent().parent().parent().find(".aiESTime").text() + '~' +
								$(this).parent().parent().parent().find(".airETime").text() + ')' + '  '+
								em + '원';
					packagePrice += Number($(this).parent().parent().parent().find(".airAdultPrice").text().split('원')[0]);
				})
			})
			.fail(function (){
				$("body").waitMe("hide");
			});
			return false;
		}
		
		function doAgree() {
			console.log(packagePrice)
			if($("input[name='packageName']").val() == ''){
				swal({
					type : 'error',
					title : '패키지 이름을 설정하세요',
				})
				return false;
			}
			if(!$("#agreeCheck").is(":checked")){
				swal({
					type : 'error',
					title : '패키지 정보를 확인하시고 체크 후 등록하세요',
				})
				return false;
			}
			swal({
				  position: 'top-end',
				  type: 'success',
				  title: '관리자 승인 후 목록에 보여집니다~',
				  showConfirmButton: false,
				  timer: 1500
			})
			return true;
		}
		
		$("input[name='startAirCode']").click(function (){
			console.log($(this).parent().parent().parent().find(".airName").text())
		})
		$("input[name='next']").click(function () {
			if($("#step3").attr("class") == 'tab-pane active'){
				$(".fStartAir").text(fStartAir);
				$(".fEndAir").text(fEndAir);
				var tArray = $("input[name*='daily']:checked");
				var thtml = '';
				var tCode = '';
				for(var i=0; i<tArray.length; i++){
					thtml += '일정 : ' + $(tArray[i]).val() + ' ' + $(tArray[i]).parent().parent().parent().find("a").text() + ' 가격 : ' + numberWithCommas($(tArray[i]).attr("data-price")) + '원<br>';
					packagePrice += Number($(tArray[i]).attr("data-price"));
					tCode = $(tArray[i]).attr("class");
					$("#mm").append($("<input type='hidden' name='themeDaily' value='"+$(tArray[i]).val()+"' />"))
					$("#mm").append($("<input type='hidden' name='tCode' value='"+tCode+"' />"))
				}
				$(".fThemeInfo").html(thtml);
				$(".totalP").text(numberWithCommas(packagePrice));
				$("#packPrice").val(packagePrice)
// 				waitMe();
// 				$.ajax({
// 					url: '<c:url value="/package/packageInsert.json"/>',
// 					data: $("#mm").serialize(),
// 					type: "POST",
// 					dataType: "json"
// 				})
// 				.done(function (){
// 					$("body").waitMe("hide");
// 				})
// 				.fail(function (){
// 					$("body").waitMe("hide");
					
// 				})
			}
		})
		function numberWithCommas(x) {
			return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		}


		var $div = $(".col-sm-12.detailpop");
// 		$(".item-thumb").click(function() {
// 			$("#pop").hide();
// 			$("#pop").after($div);
// 			$div.show();
// 		})
		$(".d").click(function() {
			$(".d").removeClass("bold");
			$(this).addClass("bold");
		})
	</script>

</body>
</html>