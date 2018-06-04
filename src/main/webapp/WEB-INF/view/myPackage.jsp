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
        	
        	.payment {
        		background-color:#ffffff;
        		margin-left:20px;
        	}
        	.payment div {
        		text-align:center;
        	}
        	table, th{
        		text-align:center;
        		
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
                		<li><a href="userUpdate.jsp">회원정보수정</a></li>
                		<li><a href="payment.jsp">결제내역</a></li>
                		<li><a href="myPackage.jsp">나만의 패키지</a></li>
                	</ul>
                </div>  
                <div class="col-md-9 payment">
	              <table class="table table-hover">
					  <thead>
					    <tr>
					      <th scope="col">No</th>
					      <th scope="col">패키지</th>
					      <th scope="col">날짜</th>
					      <th scope="col">금액</th>
					      <th scope="col">승인여부</th>
					      <th scope="col"></th>
					    </tr>
					  </thead>
					  <tbody>
					    <tr>
					      <th scope="row">1</th>
					      <td>챔피언스리그 축구여행</td>
					      <td>2017/03/28</td>
					      <td>2,000,000원</td>
					      <td>대기중</td>
					      <td>
					      	<button>수정</button>
					      	<button>삭제</button>
					      </td>
					    </tr>
					    <tr>
					      <th scope="row">2</th>
					      <td>프리미어리그 축구여행</td>
					      <td>2018/02/12</td>
					      <td>2,000,000원</td>
					      <td>심사중</td>
					      <td>
					      	<button>수정</button>
					      	<button>삭제</button>
					      </td>
					    </tr>
					    <tr>
					      <th scope="row">3</th>
					      <td>세리에A 축구여행</td>
					      <td>2018/05/08</td>
					      <td>2,000,000원</td>
					      <td>확정</td>
					      <td>
					      	<button>수정</button>
					      	<button>삭제</button>
					      </td>
					    </tr>
					    <tr>
					      <th scope="row">4</th>
					      <td>분데스리가 축구여행</td>
					      <td>2018/06/18</td>
					      <td>2,000,000원</td>
					      <td>대기중</td>
					      <td>
					      	<button>수정</button>
					      	<button>삭제</button>
					      </td>
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

    </body>
</html>