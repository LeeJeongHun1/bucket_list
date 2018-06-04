<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>GARO ESTATE | Home page</title>
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
</style>
</head>
<body>
        <div class="slider-area">
            <div class="slider">
                <div id="bg-slider" class="owl-carousel owl-theme">

                    <div class="item"><img src="assets/img/slide1/slider-image-1.jpg" alt="GTA V"></div>
                    <div class="item"><img src="assets/img/slide1/slider-image-2.jpg" alt="The Last of us"></div>
                    <div class="item"><img src="assets/img/slide1/slider-image-1.jpg" alt="GTA V"></div>

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
		<div class="products">
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
		</div>
        <!-- property area -->
        <div class="content-area home-area-1 recent-property" style="background-color: #FCFCFC; padding-bottom: 55px;">
            <div class="container">
                <div class="row">
                    <div class="col-md-10 col-md-offset-1 col-sm-12 text-center page-title">
                        <!-- /.feature title -->
                        <h2>금주의 추천 상품</h2>
<!--                         <p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies . </p>-->                    
 			</div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/property-1.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >다낭*호이안*후에 4,5일 ★뭉쳐야뜬다&최저가상품★ </a></h5>
                                    <div class="dot-hr"></div>
                                     <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                    <span class="main_price proerty-price pull-right">399,000원</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-2.html" ><img src="assets/img/demo/property-2.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-2.html" >[핵심일정] 하노이/하롱베이/옌뜨/닌빈 </a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                    <span class="main_price proerty-price pull-right">278,900원</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-3.html" ><img src="assets/img/demo/property-3.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-3.html" >방콕/파타야 [베스트셀러] #뭉쳐야뜬다 #100%출발확정</a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                   <span class="main_price proerty-price pull-right">422,200원</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/property-4.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >(특가/EVENT)홍콩/마카오 완전일주 3일/4일</a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                   <span class="main_price proerty-price pull-right">379,000원</span>
                                </div>
                            </div>
                        </div>

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
<!--                         <p>Nulla quis dapibus nisl. Suspendisse ultricies commodo arcu nec pretium. Nullam sed arcu ultricies . </p>-->                    
 			</div>
                </div>

                <div class="row">
                    <div class="proerty-th">
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/gam-1.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >괌 PIC 5일 패키지 </a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                   <span class="main_price proerty-price pull-right">833,200원</span>
  
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-2.html" ><img src="assets/img/demo/gam-2.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-2.html" >사이판 PIC 골드 4일 5일</a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                   <span class="main_price proerty-price pull-right">732,600원</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-3.html" ><img src="assets/img/demo/gam-3.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-3.html" >괌 PIC 4일,5일</a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                  <span class="main_price proerty-price pull-right">877,400원</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/gam-4.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >3/4/5개국 핵심일주 10일</a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                  <span class="main_price proerty-price pull-right">2,408,800원</span>
                                </div>
                            </div>
                        </div>
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
                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/miju-1.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >[초특가][홈쇼핑따라잡기]미동부 캐나다 9~11일</a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                  <span class="main_price proerty-price pull-right">2,189,200원</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-2.html" ><img src="assets/img/demo/miju-2.jpg"></a>
                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-2.html" >[베스트셀러] 캐나다 항공일주 8일</a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                    <span class="proerty-price pull-right">2,700,200원</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-3.html" ><img src="assets/img/demo/miju-3.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-3.html" >[초특가필살기] 미서부 핵심 7/9일 (그랜드캐년/3대캐년) </a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                    <span class="proerty-price pull-right">1,299,000원</span>
                                </div>
                            </div>
                        </div>

                        <div class="col-sm-6 col-md-3 p0">
                            <div class="box-two proerty-item">
                                <div class="item-thumb">
                                    <a href="property-1.html" ><img src="assets/img/demo/miju-4.jpg"></a>

                                </div>
                                <div class="item-entry overflow">
                                    <h5><a href="property-1.html" >규슈 4일 - 핵심관광</a></h5>
                                    <div class="dot-hr"></div>
                                    <button style="padding: 2px 14px;" class="navbar-btn nav-button wow bounceInRight login animated" onclick=" window.open('register.jsp')" data-wow-delay="0.45s" style="visibility: visible; animation-delay: 0.45s; animation-name: bounceInRight;">상세보기</button>
                                    <span class="proerty-price pull-right">499,000원</span>
                                </div>
                            </div>
                        </div>
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