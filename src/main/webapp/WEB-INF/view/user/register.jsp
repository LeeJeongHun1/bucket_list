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
    </head>
    <body>

        <div id="preloader">
            <div id="status">&nbsp;</div>
        </div>
        <!-- Body content -->

       
        <!--End top header -->

        <!-- End of nav bar -->

        <!-- End page header -->
 

        <!-- register-area -->
        <div class="register-area" style="background-color: rgb(249, 249, 249);">
            <div class="container">
                <div class="col-md-6">
                    <div class="box-for overflow">
                        <div class="col-md-12 col-xs-12 register-blocks">
                            <h2>회원가입 </h2> 
                            <form action="${pageContext.request.contextPath}/user/insertUser.do" method="post">
                                <div class="form-group">
                                    <label for="name">Name</label>
                                    <input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해주세요.">
                                    <label for="birth">Birth Date</label>
                                    <input type="text" class="form-control" id="birth" name="birth" placeholder="생년월일을 입력해주세요.">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" id="email" name="userEmail" placeholder="이메일을 입력해주세요.">
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="password" name="password" placeholder="패스워드를 입력해주세요.">
                                </div>
                                <div class="text-center">
                                    <button type="submit" id="registerBtn" class="btn btn-default">Register</button>
                                </div>
                                <input type="hidden" value="u" id="auth" name="userAuth">
                            </form>
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="box-for overflow">                         
                        <div class="col-md-12 col-xs-12 login-blocks">
                            <h2>로그인 </h2> 
                            <form action="${pageContext.request.contextPath}/user/loginPost.json" method="post">
                                <div class="form-group">
                                    <label for="email">Email</label>
                                    <input type="text" class="form-control" id="userEmail" name="userEmail" placeholder="이메일을 입력해주세요." >
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" class="form-control" id="userPassword" name="password" placeholder="비밀번호를 입력해주세요.">
                                </div>
                                <div class="text-center">
                                    <button type="submit" id="loginBtn" class="btn btn-default"> Log In</button>
                                </div>
                            </form>
                            <br>
                            
                        </div>
                        
                    </div>
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
		<script>
		
		$("#loginBtn").click(function () {
			  var id = $("#userEmail").val();
			  var pw = $("#userPassword").val();
			  
			  if(id=='') {
				   alert("아이디를 입력하세요");
				   return false;
				 }  	
				 	if(pw=='') {
				   alert("비밀번호를 입력하세요");
				   return false;
				 }
			  
				 $.ajax({
				   url: `${pageContext.request.contextPath}/user/loginPost.json`,
				   data: {userEmail : id, password : pw},
				   type: "POST",
				   success: function(result){
				   if (result.startsWith("/")){
				   location.href = `${pageContext.request.contextPath}` + result;
				   return;
				   }
				   alert(result);
				   }
				   
				 	});
				});
		
		
		
		
		
		
// 		$("#loginBtn").click(function () {
// 			var userEmail = $("#userEmail").val();
// 			var password = $("#userPassword").val();
			
// 			if (userEmail == '') {
// 				alert("아이디를 입력해주세요");
// 				return false;
// 			} 
// 			if (password == '') {
// 				alert("패스워드를 입력해주세요");
// 				return false;
// 			}
// 			alert(${message});
// 		});
		
		$("#registerBtn").click(function () {
			var name = $("#name").val();
			var birth = $("#birth").val();
			var email = $("#email").val();
			var regPass = $("#password").val();
			
			if (name == '') {
				alert("이름을 입력해주세요");
				return false;
			}
			if (birth == '') {
				alert("생년월일을 입력해주세요");
				return false;
			}
			if (email == '') {
				alert("이메일을 입력해주세요");
				return false;
			}
			if (regPass == '') {
				alert("패스워드를 입력해주세요");
				return false;
			}
		});
		
		</script>
    </body>
</html>