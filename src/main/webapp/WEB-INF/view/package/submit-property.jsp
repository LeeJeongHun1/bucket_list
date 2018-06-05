<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html class="no-js" >
<head>
        <meta charset="utf-8">
        <title>GARO ESTATE | Properties  page</title>
        <style type="text/css">
        	ul.air{
        		position: relative;
				overflow: hidden;
				background-color: #f7f7f7;
				border-top: 1px solid #acb4bf;
				color: #8390a3;
        	}
        	li.tab{
        		float: left;
        		width: 120px;
        	}
        	li.roomType{
        		width: 500px;
        		float: left;
        	}
        	ul.room{
        		width: 1000px;
        		text-align: center;
        	}
        	li.ok{
        		width: 200px;
        		float: left;
        	}
        	ul.detail{
        		position: relative;
				overflow: hidden;
				background-color: #f7f7f7;
				border-top: 1px solid #acb4bf;
				width: 1000px;
				color: #8390a3;
        	}
        	ul.detail > li {
        		text-align: center;
        	}
        	div.airlist {
        		overflow: auto;
        		height: 234px;
        	}
        	.searchTitle{
        		font-size: 15px;
        		font-weight: bold;
        		text-align: center;
        	}
        	.detailpop{
        		
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
        <div class="content-area submit-property" style="background-color: #FCFCFC;">&nbsp;
            <div class="container">
                <div class="clearfix" > 
                    <div class="wizard-container"> 
                        <div class="wizard-card ct-wizard-orange" id="wizardProperty">
                            <form action="#" method="" id="mm">                        
                                <div class="wizard-header">
                                    <h3>
                                        <b>My package</b> YOUR PROPERTY <br>
                                        <small>나만의 패키지를 만들어 여행을 떠나세요.</small>
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
													<label>출발도시</label>
													<select name="startCity">
														<option value="1">서울</option>
													</select>
		                                        	<label>가는 일자</label>
		                                        	<select name="startDay">
		                                        		<option value="1">datePicker</option>
		                                        	</select>
	                                          	</div>
												<div class="col-sm-4">
													<label style="margin-left: 40px">예약인원</label>
													<label>성인</label>
													<select name="adult">
														<option value="0">0</option>
													</select>
													<label>유아</label>
													<select name="child">
														<option value="0">0</option>
													</select>
	                                          	</div>
												<div class="col-sm-4">
		                                        	<label>(관리자) 패키지 간편등록</label>
													<select name="endDay">
		                                        		<option value="1">홍콩</option>
		                                        		<option value="1">발리</option>
		                                        		<option value="1">동유럽</option>
		                                        		<option value="1">서유럽</option>
		                                        		<option value="1">중국</option>
		                                        		<option value="1">일본</option>
		                                        	</select>
													<select name="endDay">
		                                        		<option value="1">도시1</option>
		                                        		<option value="1">도시2</option>
		                                        		<option value="1">도시3</option>
		                                        		<option value="1">도시4</option>
		                                        		<option value="1">도시5</option>
		                                        	</select>
												</div>
                                        	</div>
											<div class="col-sm-12">
												<div class="col-sm-4">
													<label>도착도시</label>
		                                        	<select name="endCity">
														<option value="1">파리</option>
													</select>
		                                        	<label>오는 일자</label>
													<select name="endDay">
		                                        		<option value="1">datePicker</option>
		                                        	</select>
												</div>
												<div class="col-sm-4">
												</div>
												<div class="col-sm-4">
													<a href="#" class="btn-primary" style="margin-left: 163px">조회</a>
												</div>
                                        	</div>
                                        	
                                       		<div class="col-sm-12">
                                       			<div class="col-sm-1"></div>
                                       			<div class="col-sm-10">
		                                       		<span>가는 항공편</span>
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
		                                        	<div class="airlist">
		                                        		<ul>
		                                        			<li class="tab"><span>진에어</span></li>
		                                        			<li class="tab"><span>06:05 - 07:20</span></li>
		                                        			<li class="tab"><span>할인석 0석</span></li>
		                                        			<li class="tab"><span>58,300원</span></li>
		                                        			<li class="tab"><span>예약불가</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" disabled class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>티웨이 항공</span></li>
		                                        			<li class="tab"><span>06:40 - 07:50</span></li>
		                                        			<li class="tab"><span>일반석 14석</span></li>
		                                        			<li class="tab"><span>41,300원</span></li>
		                                        			<li class="tab"><span>예약가능</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>아시아나</span></li>
		                                        			<li class="tab"><span>14:00 - 15:10</span></li>
		                                        			<li class="tab"><span>특가석 6석</span></li>
		                                        			<li class="tab"><span>98,400원</span></li>
		                                        			<li class="tab"><span>예약가능</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="aa" class="aaa"/></div></li>
		                                        		</ul>
		                                        	</div>
		                                        	<div class="form-group"></div>
		                                        	<span>오는 항공편</span>
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
		                                        	<div class="airlist">
		                                        		<ul>
		                                        			<li class="tab"><span>진에어</span></li>
		                                        			<li class="tab"><span>06:05 - 07:20</span></li>
		                                        			<li class="tab"><span>할인석 0석</span></li>
		                                        			<li class="tab"><span>58,300원</span></li>
		                                        			<li class="tab"><span>예약불가</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" disabled class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>티웨이 항공</span></li>
		                                        			<li class="tab"><span>06:40 - 07:50</span></li>
		                                        			<li class="tab"><span>일반석 14석</span></li>
		                                        			<li class="tab"><span>41,300원</span></li>
		                                        			<li class="tab"><span>예약가능</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>아시아나</span></li>
		                                        			<li class="tab"><span>14:00 - 15:10</span></li>
		                                        			<li class="tab"><span>특가석 6석</span></li>
		                                        			<li class="tab"><span>98,400원</span></li>
		                                        			<li class="tab"><span>예약가능</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
		                                        		<ul>
		                                        			<li class="tab"><span>항공권</span></li>
		                                        			<li class="tab"><span>여정시간</span></li>
		                                        			<li class="tab"><span>잔여석</span></li>
		                                        			<li class="tab"><span>요금</span></li>
		                                        			<li class="tab"><span>예약상태</span></li>
		                                        			<li><div class="col-sm-4"><input type="radio" name="bb" class="aaa"/></div></li>
		                                        		</ul>
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
													<span class="searchTitle">숙박유형</span>
												</div>
                                    			<div class="col-sm-12">
													<select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your type">
	                                                      <option>전체</option>
	                                                      <option>호텔</option>
	                                                      <option>게시트 하우스</option>
	                                                      <option>게시트 하우스</option>
	                                                      <option>게시트 하우스</option>
	                                                      <option>게시트 하우스</option>
	                                                 </select>
												</div>
                                        	</div>
                                        	<div class="col-sm-4">
                                        		<div class="col-sm-12">
													<span class="searchTitle">숙박지명</span>
                                        		</div>
                                        		<div class="col-sm-12">
													<input type="text" class="form-control" name="hotelName" placeholder="search">
                                        		</div>
                                        	</div>
                                        	<div class="col-sm-4">
                                        		<div class="col-sm-12">
													<a href="#" class="btn-primary" style="margin-left: 163px">조회</a>
                                        		</div>
                                        		<div class="col-sm-12">
													<a href="#" class="btn-primary" style="margin-left: 163px">조회</a>
                                        		</div>
                                        	</div>
                                    	</div>
                                    	<div class="col-sm-12">
                                    		<div class="col-sm-4">
		                                    	<div class="col-sm-12">
													<span class="searchTitle">지역</span>
                                    			</div>
		                                    	<div class="col-sm-12">
													<select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your contry">
														<option>전체</option>
														<option>오사카</option>
														<option>도쿄</option>
														<option>규슈</option>
														<option>후쿠오카</option>
													</select>
												</div>
                                    		</div>
                                    		<div class="col-sm-4">
                                    			<div class="col-sm-12">
                                    				<span class="searchTitle">입실일</span>
                                    			</div>
                                    			<div class="col-sm-12">
                                    				<select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your contry">
														<option>datePicker</option>
													</select>
                                    			</div>
                                    		</div>
                                    		<div class="col-sm-4">
                                    			<div class="col-sm-12">
                                    				<span class="searchTitle">퇴실일</span>
                                    			</div>
                                    			<div class="col-sm-12">
                                    				<select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your contry">
														<option>datePicker</option>
													</select>
                                    			</div>
                                    		</div>
                                    	</div>
                                    	<div class="form-group"></div>
                                    	<div class="col-sm-12">
											<div class="row" id="pop">
												<div class="proerty-th">
													<div class="col-sm-6 col-md-3 p0">
														<div class="box-two proerty-item">
															<div class="item-thumb">
																<a href="#"><img src="assets/img/demo/Ibis_Paris_Tour_Eiffel.jpg"></a>
															</div>
															<div class="item-entry overflow">
																<h5>
																	<a href="#">Ibis Paris Tour  3성</a>
																</h5>
																<div class="dot-hr"></div>
																<span class="pull-left"><b>파리 :</b>포르트 드 베르사유</span>
																 <span class="proerty-price pull-right">110,333 $</span>
															</div>
														</div>
													</div>
													<div class="col-sm-6 col-md-3 p0">
														<div class="box-two proerty-item">
															<div class="item-thumb">
																<a href="#"><img src="assets/img/demo/Hotel_Chavanel.jpg"></a>
															</div>
															<div class="item-entry overflow">
																<h5>
																	<a href="#">Hotel Chavanel 3성</a>
																</h5>
																<div class="dot-hr"></div>
																<span class="pull-left"><b>파리 :</b> 샹젤리제 </span> <span
																	class="proerty-price pull-right">$ 379,000</span>
															</div>
														</div>
													</div>
													<div class="col-sm-6 col-md-3 p0">
														<div class="box-two proerty-item">
															<div class="item-thumb">
																<a href="#"><img src="assets/img/demo/Pullman_Paris_Tour_Eiffel.jpg"></a>
															</div>
															<div class="item-entry overflow">
																<h5>
																	<a href="#">Pullman Paris  3성</a>
																</h5>
																<div class="dot-hr"></div>
																<span class="pull-left"><b>파리 :</b>포르트 드 베르사유</span> 
																<span class="proerty-price pull-right">$ 226,000</span>
																<div style="display: none;">
																	
																</div>
															</div>
														</div>
													</div>
													<div class="col-sm-6 col-md-3 p0">
														<div class="box-two proerty-item">
															<div class="item-thumb">
																<a href="#"><img src="assets/img/demo/Hotel_de_Nell.jpg"></a>
															</div>
															<div class="item-entry overflow">
																<h5>
																	<a href="#">Hotel de Nell  5성</a>
																</h5>
																<div class="dot-hr"></div>
																<span class="pull-left"><b>파리 :</b> 포브르그 몽마르트 </span> <span
																	class="proerty-price pull-right">$ 350,000</span>
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
													<select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your contry">
														<option value="1">전체</option>
														<option value="2">유명 관광지</option>
														<option value="3">전시/박물관</option>
														<option value="4">쇼핑</option>
														<option value="5">공연/행사</option>
													</select>
												</div>
                                    		</div>
                                    		<div class="col-sm-4">
                                   				<label>낮은 가격순</label>
												<input type="radio" name="bb" class="aaa"/>
												<label>높은 가격순</label>
												<input type="radio" name="bb" class="aaa"/>
                                    		</div>
											<div class="col-sm-12" style="text-align: center;">
												<span class="d">06월 14일</span>
												<span class="d" style="margin-left: 20px">06월 15일</span>
												<span class="d" style="margin-left: 20px">06월 16일</span>
												<span class="d" style="margin-left: 20px">06월 17일</span>
											</div>
                                        </div>
                                        <div class="col-sm-12">
                                        <div class="form-group"></div>
	                                        <div class="row">
												<div class="proerty-th">
													<div class="col-sm-6 col-md-3 p0">
														<div class="box-two proerty-item">
															<div class="item-thumb">
																<a href="#"><img src="assets/img/demo/Louvre.jpg"></a>
															</div>
															<div class="item-entry overflow">
																<h5>
																	<a href="#">루브르 박물관</a>
																</h5>
																<div class="dot-hr"></div>
																<span class="pull-left"><b>선택 :</b> <input type="checkbox" name="louvre" /> </span>
																 <span class="proerty-price pull-right">15 $</span>
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
																<span class="pull-left"><b>선택 :</b> <input type="checkbox" name="orsay" /> </span>
																 <span class="proerty-price pull-right"> 2.5$</span>
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
																<span class="pull-left"><b>선택 :</b> <input type="checkbox" name="bersau" /> </span>
																 <span class="proerty-price pull-right"> 4$</span>
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
																<span class="pull-left"><b>선택 :</b> <input type="checkbox" name="auvers" /> </span>
																 <span class="proerty-price pull-right"> 33$</span>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
                                    </div>
                                    <!--  End step 3 -->
                                    <div class="tab-pane" id="step4">                                        
                                        <h4 class="info-text"> Finished </h4>
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
                                                        <label>
                                                            <input type="checkbox" /> <strong>패키지 내용을 다시한번 확인하시고 체크 하세요</strong>
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
                                        <input type='button' class='btn btn-next btn-primary' name='next' value='Next' />
                                        <input type='submit' class='btn btn-finish btn-primary ' name='finish' value='Finish' />
                                    </div>

                                    <div class="pull-left">
                                        <input type='button' class='btn btn-previous btn-default' name='previous' value='Previous' />
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
				<span>주소 : 제주특별자치도 서귀포시 칠십리로91번길 12</span><br>
				<span>전화 : 064-763-0773</span><br>
				<span>등급 : 3성급</span><br>
				<span>홈페이지 : www.hotelcombin.com</span><br>
			</div>
			<div class="col-sm-12"><span>아래에 원하시는 객식을 선택하세요</span></div>
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
					<li class="ok">가능<input type="radio" name="bb" class="aaa"/></li>
				</ul>
			</div>
			<div class="col-sm-12">
				<ul class="room">
					<li class="roomType"><span>비즈니스(No View)(조식불포함)</span></li>
					<li class="ok"><span>44,629원</span></li>
					<li class="ok">가능<input type="radio" name="bb" class="aaa"/></li>
				</ul>
			</div>
			<div class="col-sm-12">
				<ul class="room">
					<li class="roomType"><span>스탠다드 발코니(No View)(조식불포함)</span></li>
					<li class="ok"><span>40,497원</span></li>
					<li class="ok">가능<input type="radio" name="bb" class="aaa"/></li>
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
<script>
	$(".col-sm-12.detailpop").hide();
	$("input[name='finish']").click(function () {
		alert("클릭딤");
	})
	console.log($(".item-thumb > a").html());
	console.dir($(".item-thumb").length);
	var $div = $(".col-sm-12.detailpop");
	$(".item-thumb").click(function () {
		$("#pop").hide();
		$("#pop").after($div);
		$div.show();
	})
	$("#selectHotel").click(function () {
		$div.hide();
		$("#pop").show();
	})
	$(".d").click(function (){
		$(".d").removeClass("bold");
		$(this).addClass("bold");
	})
</script>

</body>
</html>