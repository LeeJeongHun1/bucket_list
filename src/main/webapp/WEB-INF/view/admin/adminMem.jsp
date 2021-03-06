<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                		<li><a href="${pageContext.request.contextPath}/admin/adminMemPackage.do">회원 패키지관리</a></li>
                		<li><a href="${pageContext.request.contextPath}/admin/adminPaid.do">결제내역조회</a></li>
                		<li><a href="${pageContext.request.contextPath}/admin/adminPackage.do">관리자 패키지관리</a></li>
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
                <form id="submitForm" class="form-horizontal" method="post" >
				<div class="col-md-10">
					<div class="col-md-2">
						검색:<select class="form-control" name="searchOption" style="display:inline-block; width: 70%;">
							<option value="name">이름</option>
							<option value="email">이메일</option>
						</select>
					</div>
					<div class="col-md-2">
						<input type="text" name="keyword" class="form-control">
					</div>
					<div class="col-md-2">
					출생연도:<input type="text" name="miniBirth" class="form-control" style="display: inline-block; width: 50%;" maxlength="4">
					</div>
					<div class="col-md-2">
						~<input type="text" name="maxBirth" class="form-control" style="display: inline-block; width: 50%;" maxlength="4">
					</div>
				</div>
			    &nbsp;
				<!-- 한줄 시작 -->
				<div class="col-md-10">
					<div class="col-md-3">
						가입일:<input type="text" id="miniDate" name="miniDate" class="form-control" style="display:inline-block; width: 70%">
					</div>
					<div class="col-md-3">
						<input type="text" id="maxDate" name="maxDate" class="form-control" style="width: 80%">
					</div>
					<div class="col-md-4">
					
					</div>
				</div>

				<div class="col-md-10" style="margin-top: 20px;">
                <button class="navbar-btn nav-button wow fadeInRight animated" id="searchBtn" onclick="" data-wow-delay="0.5s" style="width:100%; visibility: visible; animation-delay: 0.5s; animation-name: fadeInRight;">검색</button>
                </div>
                
                </form>
              
                <!-- 테이블 시작 -->
                <div class="col-md-10">
          <table class="table" id="table">
            <thead>
            
            </thead>
            <tbody>
              
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
        <script src="http://momentjs.com/downloads/moment.min.js"></script>
        
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
	autoclose: true,
	}).datepicker("setDate", null);
	});
		
	
$('#submitForm').submit(function(e){
	e.preventDefault();
	var params = $("#submitForm").serialize();
    console.log(params);
	
    
    
	$.ajax({
		url:"${pageContext.request.contextPath}/admin/ajaxMem.json",
		data:params,
		type:"POST",
		dataType:"JSON",
		async:false,
		success:function(result){
			var html = "";
			html += '<table class=\'table\' id=\'table\'>\r\n' + 
			'            <thead>\r\n' + 
			'              <tr>\r\n' + 
			'                <th>#</th>\r\n' + 
			'                <th>이름</th>\r\n' + 
			'                <th>이메일</th>\r\n' + 
			'                <th>생년월일</th>\r\n' + 
			'                <th>가입일</th>\r\n' + 
			'              </tr>\r\n' + 
			'            </thead>\r\n';
			
			if(result.length == 0){
			html += '<tr><td  colspan="6" align="center">조건에 맞는 검색 결과가 존재하지 않습니다.</td></tr>'; 	
			}
			
			for(var i = 0; i < result.length; i++){
				var mem = result[i];
				var index = i+1;
				html +="<tr>\r\n" + 
				'                <td>'+ index +'</td>\r\n' + 
				'                <td>'+ mem.name +'</td>\r\n' + 
				'                <td>'+ mem.user_email +'</td>\r\n' + 
				'                <td>'+ mem.birth +'</td>\r\n' + 
				'                <td>'+ moment(new Date(mem.reg_Date).toString()).format('YYYY년MM월DD일') +'</td>\r\n' + 
				'              </tr>';
			}
			$("tbody").html(html);
			
			
			console.log(result);
			
		},
	    error : function(){
            alert('통신실패!!');
        }
	})
})


</script>
    </body>
</html>