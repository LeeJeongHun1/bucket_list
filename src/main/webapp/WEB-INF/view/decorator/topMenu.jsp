<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<nav class="navbar navbar-default ">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navigation">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href='<c:url value="/main/index.do"/>'
				style="color: #4e4e4e; font-size: 26px; padding: 23px;">BucketList<!-- <img src="assets/img/logo.png" alt=""> --></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse yamm" id="navigation">
			<div class="button navbar-right">
			<c:choose>
			<c:when test="${empty sessionScope.member}">
				<button class="navbar-btn nav-button wow bounceInRight loginBtn"
					onclick="location.replace('${pageContext.request.contextPath}/user/register.do')" data-wow-delay="0.45s">LogIn</button>
			</c:when>
			<c:otherwise>
				<button class="navbar-btn nav-button wow bounceInRight logoutBtn"
					onclick="location.replace('${pageContext.request.contextPath}/user/logout.do')" data-wow-delay="0.45s">Logout</button>
			</c:otherwise>					
			</c:choose>
			<c:choose>
			<c:when test="${sessionScope.member.userAuth eq 'm'}">
				<button class="navbar-btn nav-button wow fadeInRight"
					onclick="location.replace('${pageContext.request.contextPath}/admin/adminMem.do')" data-wow-delay="0.48s">Admin</button>
			</c:when>
			<c:when test="${!empty sessionScope.member}">
				<button class="navbar-btn nav-button wow fadeInRight"
					onclick="location.replace('${pageContext.request.contextPath}/user/userUpdate.do')" data-wow-delay="0.48s">MyPage</button>
			</c:when>
			</c:choose>
			</div>
			<ul class="main-nav nav navbar-nav navbar-right"
				style="margin-right: 0;">
							<li class="dropdown yamm-fw" data-wow-delay="0.4s">
					<div class="search-form wow pulse" data-wow-delay="0.8s">

						<form id="search" action="${pageContext.request.contextPath}/search/search.do"
							class=" form-inline" method="post" name="allsearch">
							<div class="form-group" style="width: 475px;">
								<input id="keyname" type="text" class="form-control" name="keyword" placeholder="검색어">
							</div>
							<button id="searchBtn" class="btn search-btn" type="submit">
								<i class="fa fa-search"></i>
							</button>
						</form>
					</div>

				</li>
				<li class="dropdown yamm-fw" data-wow-delay="0.4s"><a
					href="${pageContext.request.contextPath}/theme/theme.do" class="dropdown-toggle" style="padding: 16px;">thematic
						tour</a></li>
				<c:if test="${!empty sessionScope.member}">
					<li class="dropdown yamm-fw" data-wow-delay="0.4s"><a
						href="<c:url value='/package/createPackage.do' />" class="dropdown-toggle"
						style="padding: 16px;">My Package</a></li>
				</c:if>

				<!--  <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="contact.html">Contact</a></li> -->
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
	
</nav>
<script>
//  $("#searchBtn").click("on",function(){
// 	 alert("간다");
// 	$.ajax({
// 		type:"post",
// 		url:"<c:url value='/search/searhList.json'/>",
// 		data:$("#search").serialize(),
// 		success: function(data){
// 			console.log(data);
// 			//$("#test").append(data.getPackageName);
// 		}
// 	})
//  });
</script>
