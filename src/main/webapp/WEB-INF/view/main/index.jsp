<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>BucketList</title>
<style>
.main_price {margin-top: 10px;}
ul li {list-style: none !important;
    margin:0px !important; padding:0px !important;}
.products {width: 93px;    position: absolute;
    right: 0; text-align: center; border:1px solid #e3e3e1;}
.products ul { padding:0; margin:0;}
.products ul > li > ul {border-top: 1px solid #e3e3e1}
.products ul > li > ul > li:first-child {font-size:12px;}
.product {width: 81px;
    height: 56px;}
.pBtn {border: none; background: none;}
.pClose {    position: absolute;
    right: 0px;
    color: white;
    top: -6px;
}
.point { color:red; margin-left:4px;}
ul {padding:0;}
.pBox {    position: relative;
    width: 89px;}
.fixed {    position: fixed;
    top:0px;
    background: #f3f3f3;
    z-index: 1;
    height:534wpx;}
.item-entry a{    display: inline-block;
    width: 257px;
    white-space: nowrap;
    overflow: hidden;
    text-overflow: ellipsis;}
</style>
</head>
<body>
        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">
                    <div class="item"><img src="../resources/img/slider-image-1.jpg" alt="GTA V"></div>
                    <div class="item"><img src="../resources/img/slider-image-2.jpg" alt="The Last of us"></div>
                    <div class="item"><img src="../resources/img/slider-image-1.jpg" alt="GTA V"></div>

                </div>
            </div>
            <div class="slider-content">
                <div class="row">
                   <!--  <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1 col-sm-12">
                        <h2>8월의 여름 휴양지</h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eligendi deserunt deleniti, ullam commodi sit ipsam laboriosam velit adipisci quibusdam aliquam teneturo!</p>
                    </div> -->
                </div>
            </div>
        </div>
<!-- 		<div class="products">
		<ul>
		<li>
		<ul>
		<li><a href="register.jsp">로그인</a></li>
		<li><a href="register.jsp">회원가입</a></li>
		<li><a href="payment.jsp">예약확인/결제</a></li>
		</ul>
		</li>
		<li>
		<ul>
		<li>최근 본 상품<span class="point">2</span></li>
		<button class="pBtn">▲</button>
		<li>
		<ul class="pB" style="padding-left:0;">
		<li class="pBox" style=" position: relative; width: 89px;">
		<button class="pClose pBtn">x</button>
		<a href="#">
		<img class="product" src="assets/img/demo/property-1.jpg" />
		</a>
		</li>
		</ul>
		</li>
		<button class="pBtn">▼</button>
		</ul>
		</li>
		</ul>
		</div> -->
        <!-- property area -->
        <div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
          
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                       
                        <h2>금주의 추천 상품</h2>
 			</div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                                <c:forEach var="i" items="${pack.recommend}">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="..${i.packageImgpath}"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >${i.packageName}</a></h5>
                                    <div class="dot-hr"></div>
<%--                                      <button
												class="search_detail navbar-btn nav-button wow fadeInRight animated"
												onclick=" location.replace('<c:url value="/search/searchDetail.do"/>?packageCode=${i.packageCode}')"
												data-wow-delay="0.48s"
												style="visibility: visible; animation-delay: 0.48s; animation-name: fadeInRight;">상세보기</button> --%>
								                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" location.replace('<c:url value="/search/searchDetail.do"/>?packageCode=${i.packageCode}')"data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
								
								
									<%-- <a class="search_detail search-btn navbar-btn wow fadeInRight animated" href="<c:url value="/search/searchDetail.do"/>?packageCode=${i.packageCode}" data-wow-delay="0.48s">상세보기</a>
                                     --%>   
                                       <span class="main_price proerty-price pull-right">${i.packagePrice}원</span>
                                </div>
                            </div>
                        </div>
                                </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <!--Welcome area -->
        <div class="Welcome-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>인기상품</h2>
 			</div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                     <c:forEach var="pop" items="${pack.popular}">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="..${pop.packageImgpath}"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >${pop.packageName} </a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" location.replace('<c:url value="/search/searchDetail.do"/>?packageCode=${pop.packageCode}')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                   <span class="main_price proerty-price pull-right">${pop.packagePrice}원</span>
  
                                </div>
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>

        <!-- <!--TESTIMONIALS -->
        <div class="testimonial-area recent-property" style="background-color: #FCFCFC; padding-bottom: 15px;">
             <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>시즌상품</h2>
 			</div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                     <c:forEach var="s" items="${pack.season}">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="..${s.packageImgpath}"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >${s.packageName}</a></h5>
                                    <div class="dot-hr"></div>
                      <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" location.replace('<c:url value="/search/searchDetail.do"/>?packageCode=${s.packageCode}')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                  <span class="main_price proerty-price pull-right">${s.packagePrice}원</span>
                                </div>
                            </div>
                        </div>
						</c:forEach>

                    </div>
                </div>
            </div>
        </div> 
		<script>
		$(window).scroll(function(){
			var w =$(window).height();
			var sT = $(document).scrollTop();
			var doc = $(document).height();
			if(sT >= 730){
				$(".products").addClass("fixed");
		}else{
			$(".products").removeClass("fixed");
		}
			});	
	
/* 		alert("현재창높이" +$(window).height());
	   alert("스크롤위치" +$(document).scrollTop());
	   alert("도큐멘트높이" + $(document).height()); */
		</script>
        
</body>
</html>