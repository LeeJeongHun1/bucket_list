<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>GARO ESTATE | Register page</title>
        <meta name="description" content="GARO is a real-estate template">
        <meta name="author" content="Kimarotec">
        <meta name="keyword" content="html5, css, bootstrap, property, real-estate theme , bootstrap template">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,700,800' rel='stylesheet' type='text/css'>

        <!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
        <link rel="icon" href="favicon.ico" type="image/x-icon">

        <link rel="stylesheet" href="assets/css/normalize.css">
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">
        <link rel="stylesheet" href="assets/css/fontello.css">
        <link href="assets/fonts/icon-7-stroke/css/pe-icon-7-stroke.css" rel="stylesheet">
        <link href="assets/fonts/icon-7-stroke/css/helper.css" rel="stylesheet">
        <link href="assets/css/animate.css" rel="stylesheet" media="screen">
        <link rel="stylesheet" href="assets/css/bootstrap-select.min.css"> 
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/icheck.min_all.css">
        <link rel="stylesheet" href="assets/css/price-range.css">
        <link rel="stylesheet" href="assets/css/owl.carousel.css">  
        <link rel="stylesheet" href="assets/css/owl.theme.css">
        <link rel="stylesheet" href="assets/css/owl.transitions.css">
        <link rel="stylesheet" href="assets/css/style.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <link rel="stylesheet" href="assets/css/responsive.css">
        <style>
        	.mylist {
        		text-decoration:none;
        		background-color:#ffffff;
        		height:450px;
        		list-style:none;
        	}
        	
        	.mylist > ul {
        		padding-left:0px;
        	}
        	
        	.mylist > ul > li {
        		list-style:none;
				text-align:center;
				margin-top:30px;        		
        	}
        	.mylist > ul > li > a{
        		font-size:18px;
        	}
        </style>
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>

        <!-- register-area -->
        <div class="register-area" style="background-color: rgb(249, 249, 249);">
            <div class="container">

                <div class="col-md-2 mylist">
                	<ul>
                		<li><a href="">회원조회</a></li>
                		<li><a href="adminMemPackage.jsp">회원 패키지관리</a></li>
                		<li><a href="adminPaid.jsp">결제내역조회</a></li>
                		<li><a href="adminPackage.jsp">관리자 패키지관리</a></li>
                	</ul>
                </div>  
                
                <!-- 메인 부분 시작-->
                <!-- 헤더 에니메이션 -->
                <div class="col-md-10">
                 <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                                <div class="panel-heading">
                                    <h3 class="panel-title">회원조회</h3>
                                </div>
                </div>
                </div>
                <!-- form 태그 시작 -->
                <form class="form-horizontal">
				<div class="col-md-10">
					<div class="col-md-2">
						검색:<select class="form-control" style="display:inline-block; width: 70%;">
							<option>이름</option>
							<option>이메일</option>
						</select>
					</div>
					<div class="col-md-2">
						<input type="text" class="form-control">
					</div>
					<div class="col-md-2">
					출생연도:<input type="text" class="form-control" style="display: inline-block; width: 50%;">
					</div>
					<div class="col-md-2">
						~<input type="text" class="form-control" style="display: inline-block; width: 50%;" >
					</div>
				</div>
			    &nbsp;
				<!-- 한줄 시작 -->
				<div class="col-md-10">
					<div class="col-md-3">
						가입일:<input type="date" class="form-control" style="display:inline-block; width: 70%">
					</div>
					<div class="col-md-3">
						<input type="date" class="form-control" style="width: 80%">
					</div>
					<div class="col-md-4">
					
					</div>
				</div>

				<div class="col-md-10" style="margin-top: 20px;">
                <button class="navbar-btn nav-button wow fadeInRight animated" onclick="" data-wow-delay="0.5s" style="width:100%; visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">검색</button>
                </div>
                
                </form>
              
                <!-- 테이블 시작 -->
                <div class="col-md-10">
          <table class="table">
            <thead>
              <tr>
                <th>#</th>
                <th>이름</th>
                <th>가입일</th>
                <th>출생연도</th>
                <th>결제내역</th>
                <th>내가 만든 패키지</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>1</td>
                <td>Mark</td>
                <td>2010-11-20</td>
                <td>2010-11-20</td>
                <td>-원</td>
                <td>A패키지</td>
              </tr>
              <tr>
                <td>2</td>
                <td>Jacob</td>
                <td>2010-11-20</td>
                <td>2010-11-20</td>
                <td>-원</td>
                <td>B패키지</td>
              </tr>
              <tr>
                <td>3</td>
                <td>Larry</td>
                <td>2010-11-20</td>
                <td>2010-11-20</td>
                <td>-원</td>
                <td>C패키지</td>
              </tr>
            </tbody>
          </table>
           </div>
           
</div>
</div>
         <script src="assets/js/modernizr-2.6.2.min.js"></script>

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

        <script src="assets/js/main.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap-wizard/1.2/jquery.bootstrap.wizard.js"></script>

    </body>
</html>