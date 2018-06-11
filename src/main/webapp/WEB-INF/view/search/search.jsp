<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="navi" %>    

<title>GARO ESTATE | Properties page</title>
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

.search_detail {
	background-color: #3F3F3F;
	padding: 8px 15px;
}
</style>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script>
	
</script>

</head>
<body>

	<div class="page-head">
		<div class="container">
			<div class="row">
				<div class="page-head-content">
					<h1 class="page-title">List Layout With Sidebar</h1>
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
				<div class="col-md-12 padding-bottom-40 large-search">
					<div class="search-form wow pulse">
						<!-- 검색폼 -->
						<%-- ${pageContext.request.contextPath}/search/search.do --%>
						<form id="detailAll" action="" class=" form-inline" method="post">
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
									<!-- 									<select id="lunchBegins" class="selectpicker"
										data-live-search="true" data-live-search-style="begins"
										title="테마별">
										<option>New york, CA</option>
										<option>Paris</option>
										<option>Casablanca</option>
										<option>Tokyo</option>
										<option>Marraekch</option>
										<option>kyoto , shibua</option>
									</select> -->

								</div>
								<!-- <h4 class="c_title">기간별</h4> -->
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

									<!-- <!-- End of  -->
									<!-- 									<h4 class="c_title">기타</h4>
 -->
									<div class="col-sm-12"
										style="margin-top: 10px; margin-bottom: 10px;">
										<input type="text" class="form-control" name="dkeyword"
											placeholder="Key word">
										<!-- 		<div class="checkbox">
											<label> <input type="checkbox">전체검색
											</label>
										</div> -->
									</div>
									<div class="col-sm-12">

										<button id="dSearch" class="btn search-btn" type="button"
											style="width: 140px; font-weight: bold;"
											onclick="return doAction();">결과 내 재검색</button>
									</div>
								</div>
							</div>
						</form>
						<!-- 폼 끝 -->
					</div>
				</div>

				<!-- 검색결과 -->
				<div class="col-md-12  clear">
					<div class="col-xs-10 page-subheader sorting pl0">
						<ul class="sort-by-list">
							<li class="active"></li>
							<li class=""><select id="price" name="price">
									<option value="">가격순</option>
									<option value="1">가격낮은순</option>
									<option value="2">가격높은순</option>
							</select> </li>
									<li class=""><select id="departure" name="departure">
									<option value="0">출발일순</option>
									<option value="1">출발일이 빠른순</option>
									<option value="2">출발일이 느린순</option>
							</select> <!-- <a href="javascript:void(0);"
								class="order_by_price" data-orderby="property_price"
								data-order="DESC">인기순<i
									class="fa fa-sort-numeric-desc"></i>  </a>--></li>
						</ul>
						<!--/ .sort-by-list-->
						<div class="items-per-page">
							<label for="items_per_page"><b>총 페이수:</b></label>
							<div class="sel" style="text-align: left;">
								<select id="items_per_page" name="per_page">
									<option value="3">3</option>
									<option value="6">6</option>
									<option value="9">9</option>
									<option selected="selected" value="12">12</option>
									<option value="15">15</option>
									<option value="30">30</option>
									<option value="45">45</option>
									<option value="60">60</option>
								</select>
							</div>
							<!--/ .sel-->
						</div>
						<!--/ .items-per-page-->
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

				<div id="makeSearch" class="col-md-12 clear ">
				<c:forEach var="item" items="${allSearch}">
					<div id="list-type" class="proerty-th">
						<div class="col-sm-6 col-md-3 p0">
								<div class="box-two proerty-item">
									<div class="item-thumb">
										<a href="property-1.html"><img src="..${item.imgPath}"></a>
									</div>
									<div class="item-entry overflow">
										<h5>
											<a href="property-1.html"> 여행도시 <span>${item.cityName}</span></a>
											<button
												class="search_detail navbar-btn nav-button wow fadeInRight animated"
												onclick=" location.replace('${pageContext.request.contextPath}/search/searchDetail.do')"
												data-wow-delay="0.48s"
												style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight;">상세보기</button>
												<a class="search_detail search-btn navbar-btn wow fadeInRight animated" href="<c:url value="/search/searchDetail.do"/>?packageCode='${item.packageCode}'" data-wow-delay="0.48s">테스트</a>'
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
					alert("가냐");
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

			$.ajax({
				type:'post',
				url:"<c:url value='/search/searchDetail.json'/>",
				data: $("#detailAll").serialize(),
				success: function(data){
					var html="";
					$(".searchColor > span").html("");
					$(".searchColor > span").html(data.length + "건");
					$("#makeSearch").html("");
					alert("실행zss");
					console.log(data);
					if (data.length == 0){
						html+= '<div id="list-type" class="proerty-th">';
						html+='<div class="col-sm-12 col-md-12 p0">';
						html+='<div class="box-two proerty-item">';
						html+='<div class="item-thumb">';
					    html+= '없다';
					    html+='</div></div></div></div>';
					}else{
						for(let a of data){
							html+='<div id="list-type" class="proerty-th">';
							html+='<div class="col-sm-6 col-md-3 p0">';
							html+='<div class="box-two proerty-item">';
							html+='<div class="item-thumb">';
							html+='<a href="property-1.html"><img src="..'+a.imgPath+'"></a>';
							html+='</div>';
							html+='<div class="item-entry overflow">';
							html+='<h5>';
							html+='<a href="property-1.html"> 여행도시 <span>'+a.cityName+'</span></a>';
							//html+='<button type="button" class="search_detail navbar-btn nav-button wow fadeInRight animated" onclick="location.replace('${pageContext.request.contextPath}/search/searchDetail.do')" data-wow-delay="0.48s">상세보기</button>'
							html+='<a class="search_detail search-btn navbar-btn wow fadeInRight animated" href="<c:url value="/search/searchDetail.do"/>?packageCode='+a.packageCode+'" data-wow-delay="0.48s">테스트</a>';
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
			data:{price:$("#price").val()}
		}) .done(function(result){
			var html="";
			$("#makeSearch").html("");
			console.log(result);
				for(let a of result){
					html+='<div id="list-type" class="proerty-th">';
					html+='<div class="col-sm-6 col-md-3 p0">';
					html+='<div class="box-two proerty-item">';
					html+='<div class="item-thumb">';
					html+='<a href="property-1.html"><img src="..'+a.imgPath+'"></a>';
					html+='</div>';
					html+='<div class="item-entry overflow">';
					html+='<h5>';
					html+='<a href="property-1.html"> 여행도시 <span>'+a.cityName+'</span></a>';
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
				data:{price:$("#departure").val()}
			}) .done(function(result){
				var html="";
				$("#makeSearch").html("");
				console.log(result);
					for(let a of result){
						html+='<div id="list-type" class="proerty-th">';
						html+='<div class="col-sm-6 col-md-3 p0">';
						html+='<div class="box-two proerty-item">';
						html+='<div class="item-thumb">';
						html+='<a href="property-1.html"><img src="..'+a.imgPath+'"></a>';
						html+='</div>';
						html+='<div class="item-entry overflow">';
						html+='<h5>';
						html+='<a href="property-1.html"> 여행도시 <span>'+a.cityName+'</span></a>';
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