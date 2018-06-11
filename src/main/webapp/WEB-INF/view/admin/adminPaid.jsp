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
                		<li><a href="${pageContext.request.contextPath}/admin/adminMem.do">회원관리</a></li>
                		<li><a href="${pageContext.request.contextPath}/admin/adminMemPackage.do">회원 패키지관리</a></li>
                		<li><a href="">결제내역조회</a></li>
                		<li><a href="${pageContext.request.contextPath}/admin/adminPackage.do">관리자 패키지관리</a></li>
                	</ul>
                </div>  
                
                <!-- 메인 부분 시작-->
                <!-- 헤더 에니메이션 -->
                <div class="col-md-10">
                 <div class="panel panel-default sidebar-menu wow fadeInRight animated" >
                                <div class="panel-heading">
                                    <h3 class="panel-title">결제내역 조회</h3>
                                </div>
                </div>
                </div>
                <!-- form 태그 시작 -->
                <form id="submitForm" class="form-horizontal">
				<div class="col-md-10">
					<div class="col-md-2">
						검색:<select class="form-control" name="searchOption" style="display:inline-block; width: 70%">
							<option value="email">이메일</option>
						</select>
					</div>
					<div class="col-md-3">
						<input type="text" name="keyword" class="form-control">
					</div>
					
				</div>
			    &nbsp;
				<!-- 한줄 시작 -->
				<div class="col-md-10">
					<div class="col-md-3">
						조회기간:<input type="text" id="miniDate" name="miniDate" class="form-control" style="display:inline-block; width: 70%">
					</div>
					<div class="col-md-3">
						<input type="text" id="maxDate" name="maxDate" class="form-control" style="width:70%">
					</div>
				</div>

				<div class="col-md-10" style="margin-top: 20px;">
                <button class="navbar-btn nav-button wow fadeInRight animated" onclick="" data-wow-delay="0.5s" style="width:100%; visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">검색</button>
                </div>
                
                </form>
                <!-- 총결제금액/총결제회수 -->
                <div class="col-md-10" align="right">
                <table >
                <tr><th>총 결제금액:</th><td id="pSum"></td></tr>
                <tr><th>총 결제회수:</th><td id="pCnt"></td></tr>
                </table>
                </div>
                <!-- 테이블 시작 -->
          <div class="col-md-10">
          <table class="table">
            <thead>
             
            </thead>
            <tbody id="tbody">
            
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

<script>
$(function() {
	$('#miniDate').datepicker({
	format : "yyyy-mm-dd",
	autoclose: true
	}).datepicker("setDate", null);
	});
	
$(function() {
	$('#maxDate').datepicker({
	format : "yyyy-mm-dd",
	autoclose: true
	}).datepicker("setDate", null);
	});
	
$('#submitForm').submit(function(e){
	e.preventDefault();
	var params = $("#submitForm").serialize();
    console.log(params);
    
    $.ajax({
    	url:"${pageContext.request.contextPath}/admin/ajaxPaid.json",
    	data:params,
    	type:"POST",
		dataType:"JSON",
		success:function(result){
			var html = "";
			console.log(result);
			
			html += '<tr>\r\n' + 
			'	<th>#</th>\r\n' + 
			'	<th>패키지명</th>\r\n' + 
			'	<th>결제일자</th>\r\n' + 
			'	<th>가격</th>\r\n' + 
			'	</tr>';
			
			if(result.length == 0){
				html += '<tr><td  colspan="4" align="center">조건에 맞는 검색 결과가 존재하지 않습니다.</td></tr>'; 	
				}
			
			for(var i = 0; i < result.length; i++){
				var info = result[i];
				var index = i+1;
				html+="<tr>\r\n" + 
				"                <td>"+ index +"</td>\r\n" + 
				"                <td>"+ info.package_Name +"</td>\r\n" + 
				"                <td>"+ info.payment_Date+"</td>\r\n" + 
				"                <td>"+ info.package_Price+"원</td>\r\n" + 
				"              </tr>"
			}
			
		
			$("#tbody").html(html);
		}
    })
    
    	$.ajax({
		    	url:"${pageContext.request.contextPath}/admin/ajaxSum.json",
		    	data:params,
		    	type:"POST",
				dataType:"JSON",
				success:function(result){
					console.log(result);
					$("#pSum").html(result[0].priceSum+"원");
				}
				});
    
    $.ajax({
    	url:"${pageContext.request.contextPath}/admin/ajaxCnt.json",
    	data:params,
    	type:"POST",
		dataType:"JSON",
		success:function(result){
			console.log(result);
			$("#pCnt").html(result[0].payCnt+"회");
		}
		})
				
})
</script>
    </body>
</html>