<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="navi" %>    

<title>BucketList</title>
<style>
.searchBorder {
	width: 1098px;
	margin: 15px auto 0;
	padding: 15px 0;
	text-align: center;
	border: 1px solid #ececec;
}

.searchColor {
	display: inline;
	font-size: 16px;
	font-weight: 600;
}

.sub_title {
	margin-left: 15px;
	font-weight: bold;
}

.c_title {
	font-size: 15px;
	margin-left: 17px;
}


.item-entry a.aStyle {
    color: #000;
    display: inline-block;
    width: 257px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;
}
</style>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<body>

	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">Search List</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- End page header -->

	<!-- property area -->
	<div class="properties-area recent-property"
		style="background-color: #FFF;">
		<div class="container">
			<div class="row  pr0 padding-top-40 properties-page">
				<!--  검색결과 -->
				<div class="searchBorder">
					<span class="searchColor">'${key}'에 대한 <span
						style="color: #f8931f;">${fn:length(allSearch)}건</span>의 여행상품 검색
						결과가 있습니다.
					</span>
				</div>
				<!--  검색창 -->
						<form id="detailAll" action="" class=" form-inline" method="post">
				<div class="col-md-12 padding-bottom-40 large-search">
					<div class="search-form wow pulse">
						<!-- 검색폼 -->
						<%-- ${pageContext.request.contextPath}/search/search.do --%>
							<div class="col-md-4" style="border-right: 1px dashed #e8e8e8;">
								<h4 class="sub_title">도시별</h4>
								<!-- <h4 class="c_title">출발도시</h4> -->
								<div class="col-md-12" style="margin-top: 10px;">
									<select id="lunchBegins" class="selectpicker"
										data-live-search="true" data-live-search-style="begins"
										title="출발 도시" name="cityCode">
										<option value="1">인천</option>
										<option value="3">김포</option>
										<option value="4">제주</option>
										<option value="5">광주</option>
										<option value="6">대구</option>
										<option value="7">청주</option>
										<option value="8">무안</option>
										<option value="9">양양</option>
									</select>

								</div>
								<!-- <h4 class="c_title">귀국도시</h4> -->
								<!-- <div class="col-md-12">
									<select id="lunchBegins" class="selectpicker"
										data-live-search="true" data-live-search-style="begins"
										title="도착 도시">
										<option>New york, CA</option>
										<option>Paris</option>
										<option>Casablanca</option>
										<option>Tokyo</option>
										<option>Marraekch</option>
										<option>kyoto , shibua</option>
									</select>
								</div> -->

								<h4 class="sub_title" style="margin-top: 100px;">기간별</h4>
								<div class="col-md-12">
									<input type="text" id="SDate" name="startDate"
										class="form-control" placeholder="2018-05-21">
								</div>
								<div class="col-md-12">
									<input type="text" id="EDate" name="endDate"
										class="form-control" placeholder="2018-05-22">

								</div>

							</div>
							<div class="col-md-4">
								<h4 class="sub_title">상품 가격별</h4>
								<div class="col-md-12">
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="packagePrice"
												value="1"> 50만원이하
											</label>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="packagePrice"
												value="2"> 50 ~ 100만원
											</label>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="packagePrice"
												value="3"> 100 ~ 200만원
											</label>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="packagePrice"
												value="4"> 200 ~ 300만원
											</label>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="packagePrice"
												value="5"> 300만원이상
											</label>
										</div>
									</div>


								</div>

							</div>
							<div class="col-md-4" style="border-left: 1px dashed #e8e8e8;">
								<h4 class="sub_title">여행 기간별</h4>
								<div class="col-md-12">
								</div>
								<div class="col-md-12">
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="checkbox" name="day" value="1">3일이하
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="checkbox" name="day" value="2">4일~5일
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="checkbox" name="day" value="3">6일~7일
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="checkbox" name="day" value="4">10일이상
											</label>
										</div>
									</div>
									<div class="col-sm-12"
										style="margin-top: 10px; margin-bottom: 10px;">
										<input type="text" class="form-control" name="dkeyword"
											placeholder="Key word">
											<input type="hidden" class="form-control" name="keyword" value="${key}">
									</div>
									<div class="col-sm-12">

										<button id="dSearch" class="btn search-btn" type="button"
											style="width: 140px; font-weight: bold;"
											onclick="return doAction();">결과 내 재검색</button>
									</div>
								</div>
							</div>
						
					</div>
				</div>

				<!-- 검색결과 -->
				<div class="col-md-12  clear">
					<div class="col-xs-10 page-subheader sorting pl0">
						<ul class="sort-by-list">
							<li class="active"></li>
							<li class=""><select id="price" name="price">
									<option value="0">가격순</option>
									<option value="1">가격낮은순</option>
									<option value="2">가격높은순</option>
							</select> </li>
									<li class=""><select id="departure" name="departure">
									<option value="0">출발일순</option>
									<option value="1">출발일이 빠른순</option>
									<option value="2">출발일이 느린순</option>
							</select>
					</div>

					<div class="col-xs-2 layout-switcher">
						<a class="layout-list" href="javascript:void(0);"> <i
							class="fa fa-th-list"></i>
						</a> <a class="layout-grid active" href="javascript:void(0);"> <i
							class="fa fa-th"></i>
						</a>
					</div>
					<!--/ .layout-switcher-->
				</div>
</form>
						<!-- 폼 끝 -->
				<div id="makeSearch" class="col-md-12 clear ">
				<c:forEach var="item" items="${allSearch}">
					<div id="list-type" class="proerty-th">
						<div class="col-sm-6 col-md-3 p0">
								<div class="box-two proerty-item">
									<div class="item-thumb">
										<a href="property-1.html"><img src="..${item.packageImgPath}"></a>
									</div>
									<div class="item-entry overflow">
										<h5>
											<a class="aStyle" href="property-1.html">${item.packageName}</a>
											<button
												class="search_detail navbar-btn nav-button wow fadeInRight animated"
												onclick=" location.replace('<c:url value="/search/searchDetail.do"/>?packageCode=${item.packageCode}')"
												data-wow-delay="0.48s"
												style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight;">상세보기</button>
												<%-- <a style="color:#fff" class="nav-button search_detail search-btn navbar-btn wow fadeInRight animated" href="<c:url value="/search/searchDetail.do"/>?packageCode=${item.packageCode}" data-wow-delay="0.48s">테스트</a>' --%>
										</h5>
										<div class="dot-hr"></div>
										<!-- <span class="pull-left"><b> Area :</b> 120m </span> -->
										<span class="proerty-price pull-right">${item.packagePrice}</span>
										<p style="display: none;">${item.packageName}</p>
									</div>
							
								</div>
						</div>
					</div>
					</c:forEach> 
<%-- 					<c:if test="${empty keyname}">
		    <div id="list-type" class="proerty-th">입력된 게시물이 없습니다.</div>
		  </c:if> --%>
				</div>
				<!-- 검색결과끄읕 -->
				<div class="col-md-12 clear">
					<div class="pull-right">
						<div class="pagination">
							<ul>
								<li><navi:page data="${pageResult}" /></li>
<!-- 								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">Next</a></li> -->
							</ul>
						</div>
						<div id="test"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		function goPage(pageNo){
			location.href="search.do?pageNo="+pageNo+ `&keyword=${key}`;
		}
		
		$(function() {
			$('#SDate').datepicker({
				format : "yyyy년mm월dd일",
				startDate : 'd',
				autoclose : true
			}).datepicker("setDate", new Date());
			$('#EDate').datepicker({
				format : "yyyy년mm월dd일",
				startDate : '+1d',
				autoclose : true
			}).datepicker("setDate", new Date());
		});
		
		function doAction(){
 			console.log($("#detailAll").serialize());
			$.ajax({	
				type:'post',
				url:"<c:url value='/search/searchDetail.json'/>",
				data: $("#detailAll").serialize(),
				success: function(data){
					var html="";
					alert("실행zss");
					console.log(data);
					if (data.length == 0){
					//	alert("가는지 확인");
						$(".searchColor > span").html("");
						$(".searchColor > span").html(data.length + "건");
						$("#makeSearch").html("");
						html+= '<div id="list-type" class="proerty-th">';
						html+='<div class="col-sm-12 col-md-12 p0">';
						html+='<div class="box-two proerty-item">';
						html+='<div class="item-thumb">';
					    html+= '없다';
					    html+='</div></div></div></div>';
					}else{
						for(let a of data){
							
							$(".searchColor > span").html("");
							$(".searchColor > span").html(data.length + "건");
							$("#makeSearch").html("");
							html+='<div id="list-type" class="proerty-th">';
							html+='<div class="col-sm-6 col-md-3 p0">';
							html+='<div class="box-two proerty-item">';
							html+='<div class="item-thumb">';
							html+='<a href="property-1.html"><img src="..'+a.packageImgPath+'"></a>';
							html+='</div>';
							html+='<div class="item-entry overflow">';
							html+='<h5>';
							html+='<a class="aStyle" href="property-1.html">'+a.packageName+'</a>';
							//html+='<button type="button" class="search_detail navbar-btn nav-button wow fadeInRight animated" onclick="location.replace('${pageContext.request.contextPath}/search/searchDetail.do')" data-wow-delay="0.48s">상세보기</button>'
							html+='<a style="width: 85px; line-height: 34px; text-align: center;    display: inline-block; background: #EAE9E9;" class="search_detail search-btn navbar-btn wow fadeInRight animated" href="<c:url value="/search/searchDetail.do"/>?packageCode='+a.packageCode+'" data-wow-delay="0.48s">상세보기</a>';
							//html+='<a href="<c:url value='/search/searchDetail.do'/>'+?${a.packageCode}+'"></a>';
							html+='</h5>';
							html+='<div class="dot-hr"></div>';
							html+='<span class="proerty-price pull-right">'+a.packagePrice+'</span>';
							html+='<p style="display: none;">'+a.packageName+'</p>';
							html+='</div></div></div></div>';
						}	
					}
					$("#makeSearch").html(html);
					
				},
				error:function(error){
					alert(error);
				}
			})
			return false;
		};
/* 			data:{selectDay:$("#selectDeparture").val(), selectPrice:$("#selectPrice").val()} */
		$("#price").change(function(){
		alert($("#price").val());
			$.ajax({
			type:'post',
			url:"<c:url value='/search/searchSelect.json'/>",
			data: $("#detailAll").serialize()
		}) .done(function(result){
			var html="";
			$("#makeSearch").html("");
			console.log(result);
				for(let a of result){
					html+='<div id="list-type" class="proerty-th">';
					html+='<div class="col-sm-6 col-md-3 p0">';
					html+='<div class="box-two proerty-item">';
					html+='<div class="item-thumb">';
					html+='<a href="property-1.html"><img src="..'+a.packageImgPath+'"></a>';
					html+='</div>';
					html+='<div class="item-entry overflow">';
					html+='<h5>';
					html+='<a class="aStyle" href="property-1.html">'+a.packageName+'</a>';
					//html+='<button type="button" class="search_detail navbar-btn nav-button wow fadeInRight animated" onclick="location.replace('${pageContext.request.contextPath}/search/searchDetail.do')" data-wow-delay="0.48s">상세보기</button>'
					html+='</h5>';
					html+='<div class="dot-hr"></div>';
					html+='<span class="proerty-price pull-right">'+a.packagePrice+'</span>';
					html+='<p style="display: none;">'+a.packageName+'</p>';
					html+='</div></div></div></div>';
				}	
			$("#makeSearch").html(html);
	
		});
		});
		
		
		$("#departure").change(function(){
			alert($("#departure").val());
				$.ajax({
				type:'post',
				url:"<c:url value='/search/departureSelect.json'/>",
				data: $("#detailAll").serialize()
			}) .done(function(result){
				var html="";
				$("#makeSearch").html("");
				console.log(result);
					for(let a of result){
						html+='<div id="list-type" class="proerty-th">';
						html+='<div class="col-sm-6 col-md-3 p0">';
						html+='<div class="box-two proerty-item">';
						html+='<div class="item-thumb">';
						html+='<a href="property-1.html"><img src="..'+a.packageImgPath+'"></a>';
						html+='</div>';
						html+='<div class="item-entry overflow">';
						html+='<h5>';
						html+='<a class="aStyle" href="property-1.html">'+a.packageName+'</a>';
						//html+='<button type="button" class="search_detail navbar-btn nav-button wow fadeInRight animated" onclick="location.replace('${pageContext.request.contextPath}/search/searchDetail.do')" data-wow-delay="0.48s">상세보기</button>'
						html+='</h5>';
						html+='<div class="dot-hr">'+a.startDate+'</div>';
						html+='<span class="proerty-price pull-right">'+a.packagePrice+'</span>';
						html+='<p style="display: none;">'+a.packageName+'</p>';
						html+='</div></div></div></div>';
					}	
				$("#makeSearch").html(html);
		
				});
			});

	</script>


</body>
</html>