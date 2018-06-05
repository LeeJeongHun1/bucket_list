<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html class="no-js">
<head>
<meta charset="utf-8">
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
					<span class="searchColor">'미얀마'에 대한 <span
						style="color: #f8931f;">총 5 건</span>의 여행상품 검색 결과가 있습니다.
					</span>
				</div>
				<!--  검색창 -->
				<div class="col-md-12 padding-bottom-40 large-search">
					<div class="search-form wow pulse">
						<form action="" class=" form-inline">
							<div class="col-md-4" style="border-right: 1px dashed #e8e8e8;">
								<h4 class="sub_title">도시별</h4>
								<!-- <h4 class="c_title">출발도시</h4> -->
								<div class="col-md-12">
									<select id="lunchBegins" class="selectpicker"
										data-live-search="true" data-live-search-style="begins"
										title="출발 도시">
										<option>New york, CA</option>
										<option>Paris</option>
										<option>Casablanca</option>
										<option>Tokyo</option>
										<option>Marraekch</option>
										<option>kyoto , shibua</option>
									</select>

								</div>
								<!-- <h4 class="c_title">귀국도시</h4> -->
								<div class="col-md-12">
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
								</div>

								<h4 class="sub_title" style="margin-top: 100px;">기간별</h4>
								<div class="col-md-12">
									<input type="text" id="datepicker" class="form-control"
										placeholder="2018-05-21">
								</div>
								<div class="col-md-12">
									<input type="text" id="alternate" class="form-control"
										placeholder="2018-05-22">





								</div>

							</div>
							<div class="col-md-4">
								<h4 class="sub_title">상품 가격별</h4>
								<div class="col-md-12">
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="pay">
												30만원이하
											</label>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="pay"> 30 ~
												40만원
											</label>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="pay"> 30 ~
												40만원
											</label>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="pay"> 30 ~
												40만원
											</label>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="radio" name="pay"> 30 ~
												40만원
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
											<label> <input type="checkbox">3일이하
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="checkbox">4일~5일
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="checkbox">6일~7일
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="col-sm-12">
										<div class="checkbox">
											<label> <input type="checkbox">10일이상
											</label>
										</div>
									</div>

									<!-- <!-- End of  -->
									<!-- 									<h4 class="c_title">기타</h4>
 -->
									<div class="col-sm-12"
										style="margin-top: 10px; margin-bottom: 10px;">
										<input type="text" class="form-control" placeholder="Key word">
										<!-- 		<div class="checkbox">
											<label> <input type="checkbox">전체검색
											</label>
										</div> -->
									</div>
									<div class="col-sm-12">

										<button class="btn search-btn" type="submit"
											style="width: 140px; font-weight: bold;">결과 내 재검색</button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>

				<!-- 검색결과 -->
				<div class="col-md-12  clear">
					<div class="col-xs-10 page-subheader sorting pl0">
						<ul class="sort-by-list">
							<li class="active"></li>
							<li class=""><select>
									<option>정렬순</option>
									<option>인기순</option>
							</select> <!-- <a href="javascript:void(0);"
								class="order_by_price" data-orderby="property_price"
								data-order="DESC">인기순<i
									class="fa fa-sort-numeric-desc"></i> --> </a></li>
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

				<div class="col-md-12 clear ">
					<div id="list-type" class="proerty-th">
						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img
										src="assets/img/demo/property-3.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> 여행국가 <span>홍콩</span></a>
										<button
											class="search_detail navbar-btn nav-button wow fadeInRight animated"
											onclick=" window.open('property-2.jsp')"
											data-wow-delay="0.48s"
											style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight;">상세보기</button>
									</h5>
									<div class="dot-hr"></div>
									<!-- <span class="pull-left"><b> Area :</b> 120m </span> -->
									<span class="proerty-price pull-right">1,936,400원</span>
									<p style="display: none;">
										<b>(특가/EVENT)</b>홍콩 핵심 관광 3일/4일『자유일정포함』 #홍콩 2박3일 #홍콩 3박4일 #홍콩
										패키지 # 자유일정 #홍콩 관광 #홍콩 #HONGKONG #홍콩여행
									</p>

								</div>


							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-2.jsp"><img
										src="assets/img/demo/property-2.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
									<p style="display: none;">Suspendisse ultricies Suspendisse
										ultricies Nulla quis dapibus nisl. Suspendisse ultricies
										commodo arcu nec pretium ...</p>
									<div class="property-icon">
										<img src="assets/img/icon/bed.png">(5)| <img
											src="assets/img/icon/shawer.png">(2)| <img
											src="assets/img/icon/cars.png">(1)
									</div>
								</div>


							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item proerty-item-ads">
								<a href=""><img src="assets/img/pro-ads.jpg"></a>
							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img
										src="assets/img/demo/property-3.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
									<p style="display: none;">Suspendisse ultricies Suspendisse
										ultricies Nulla quis dapibus nisl. Suspendisse ultricies
										commodo arcu nec pretium ...</p>
									<div class="property-icon">
										<img src="assets/img/icon/bed.png">(5)| <img
											src="assets/img/icon/shawer.png">(2)| <img
											src="assets/img/icon/cars.png">(1)
									</div>
								</div>


							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img
										src="assets/img/demo/property-1.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
									<p style="display: none;">Suspendisse ultricies Suspendisse
										ultricies Nulla quis dapibus nisl. Suspendisse ultricies
										commodo arcu nec pretium ...</p>
									<div class="property-icon">
										<img src="assets/img/icon/bed.png">(5)| <img
											src="assets/img/icon/shawer.png">(2)| <img
											src="assets/img/icon/cars.png">(1)
									</div>
								</div>


							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img
										src="assets/img/demo/property-2.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
									<p style="display: none;">Suspendisse ultricies Suspendisse
										ultricies Nulla quis dapibus nisl. Suspendisse ultricies
										commodo arcu nec pretium ...</p>
									<div class="property-icon">
										<img src="assets/img/icon/bed.png">(5)| <img
											src="assets/img/icon/shawer.png">(2)| <img
											src="assets/img/icon/cars.png">(1)
									</div>
								</div>


							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img
										src="assets/img/demo/property-3.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
									<p style="display: none;">Suspendisse ultricies Suspendisse
										ultricies Nulla quis dapibus nisl. Suspendisse ultricies
										commodo arcu nec pretium ...</p>
									<div class="property-icon">
										<img src="assets/img/icon/bed.png">(5)| <img
											src="assets/img/icon/shawer.png">(2)| <img
											src="assets/img/icon/cars.png">(1)
									</div>
								</div>


							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img
										src="assets/img/demo/property-2.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
									<p style="display: none;">Suspendisse ultricies Suspendisse
										ultricies Nulla quis dapibus nisl. Suspendisse ultricies
										commodo arcu nec pretium ...</p>
									<div class="property-icon">
										<img src="assets/img/icon/bed.png">(5)| <img
											src="assets/img/icon/shawer.png">(2)| <img
											src="assets/img/icon/cars.png">(1)
									</div>
								</div>


							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img
										src="assets/img/demo/property-1.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
									<p style="display: none;">Suspendisse ultricies Suspendisse
										ultricies Nulla quis dapibus nisl. Suspendisse ultricies
										commodo arcu nec pretium ...</p>
									<!-- 	<div class="property-icon">
										<img src="assets/img/icon/bed.png">(5)| <img
											src="assets/img/icon/shawer.png">(2)| <img
											src="assets/img/icon/cars.png">(1)
									</div> -->
								</div>


							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item proerty-item-ads">
								<a href=""><img src="assets/img/pro-ads.jpg"></a>
							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img
										src="assets/img/demo/property-2.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
									<p style="display: none;">Suspendisse ultricies Suspendisse
										ultricies Nulla quis dapibus nisl. Suspendisse ultricies
										commodo arcu nec pretium ...</p>
									<div class="property-icon">
										<img src="assets/img/icon/bed.png">(5)| <img
											src="assets/img/icon/shawer.png">(2)| <img
											src="assets/img/icon/cars.png">(1)
									</div>
								</div>


							</div>
						</div>

						<div class="col-sm-6 col-md-3 p0">
							<div class="box-two proerty-item">
								<div class="item-thumb">
									<a href="property-1.html"><img
										src="assets/img/demo/property-1.jpg"></a>
								</div>

								<div class="item-entry overflow">
									<h5>
										<a href="property-1.html"> Super nice villa </a>
									</h5>
									<div class="dot-hr"></div>
									<span class="pull-left"><b> Area :</b> 120m </span> <span
										class="proerty-price pull-right"> $ 300,000</span>
									<p style="display: none;">Suspendisse ultricies Suspendisse
										ultricies Nulla quis dapibus nisl. Suspendisse ultricies
										commodo arcu nec pretium ...</p>
									<div class="property-icon">
										<img src="assets/img/icon/bed.png">(5)| <img
											src="assets/img/icon/shawer.png">(2)| <img
											src="assets/img/icon/cars.png">(1)
									</div>
								</div>


							</div>
						</div>
					</div>
				</div>

				<div class="col-md-12 clear">
					<div class="pull-right">
						<div class="pagination">
							<ul>
								<li><a href="#">Prev</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">Next</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker").datepicker();
			$("#alternate").datepicker();
			
		});
	</script>
</body>
</html>