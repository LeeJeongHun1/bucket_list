<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<a class="navbar-brand" href="index.jsp"
				style="color: #4e4e4e; font-size: 26px; padding: 23px;">BucketList<!-- <img src="assets/img/logo.png" alt=""> --></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse yamm" id="navigation">
			<div class="button navbar-right">
				<button class="navbar-btn nav-button wow bounceInRight login"
					onclick=" window.open('register.jsp')" data-wow-delay="0.45s">Login</button>
				<button class="navbar-btn nav-button wow fadeInRight"
					onclick=" window.open('userUpdate.jsp')" data-wow-delay="0.48s">MyPage</button>
			</div>
			<ul class="main-nav nav navbar-nav navbar-right"
				style="margin-right: 0;">
				<!--    <li class="dropdown ymm-sw " data-wow-delay="0.1s">
                            <a href="index.html" class="dropdown-toggle active" data-toggle="dropdown" data-hover="dropdown" data-delay="200">Home <b class="caret"></b></a>
                            <ul class="dropdown-menu navbar-nav">
                                <li>
                                    <a href="index-2.html">Home Style 2</a>
                                </li>
                                <li>
                                    <a href="index-3.html">Home Style 3</a>
                                </li>
                                <li>
                                    <a href="index-4.html">Home Style 4</a>
                                </li>
                                <li>
                                    <a href="index-5.html">Home Style 5</a>
                                </li>
                            </ul>
                        </li> -->
				<!-- <li class="wow fadeInDown" data-wow-delay="0.2s"><a class="" href="properties.html">Properties</a></li> -->
				<!--                         <li class="wow fadeInDown" data-wow-delay="0.3s"><a class="" href="property.html">Property</a></li> -->
				<li class="dropdown yamm-fw" data-wow-delay="0.4s">
					<div class="search-form wow pulse" data-wow-delay="0.8s">

						<form
							action="${pageContext.request.contextPath}/view/properties.jsp"
							class=" form-inline">
							<!--    <button class="btn  toggle-btn" type="button"><i class="fa fa-bars"></i></button> -->

							<div class="form-group" style="width: 475px;">
								<input type="text" class="form-control" placeholder="Key word">
							</div>
							<!--                                 <div class="form-group">                                   
                                    <select id="lunchBegins" class="selectpicker" data-live-search="true" data-live-search-style="begins" title="Select your city">

                                        <option>New york, CA</option>
                                        <option>Paris</option>
                                        <option>Casablanca</option>
                                        <option>Tokyo</option>
                                        <option>Marraekch</option>
                                        <option>kyoto , shibua</option>
                                    </select>
                                </div> -->
							<!--                                 <div class="form-group">                                     
                                    <select id="basic" class="selectpicker show-tick form-control">
                                        <option> -Status- </option>
                                        <option>Rent </option>
                                        <option>Boy</option>
                                        <option>used</option>  

                                    </select>
                                </div> -->
							<button class="btn search-btn" type="submit">
								<i class="fa fa-search"></i>
							</button>

							<div style="display: none;" class="search-toggle">

								<div class="search-row">

									<div class="form-group mar-r-20">
										<label for="price-range">Price range ($):</label> <input
											type="text" class="span2" value="" data-slider-min="0"
											data-slider-max="600" data-slider-step="5"
											data-slider-value="[0,450]" id="price-range"><br />
										<b class="pull-left color">2000$</b> <b
											class="pull-right color">100000$</b>
									</div>
									<!-- End of  -->

									<div class="form-group mar-l-20">
										<label for="property-geo">Property geo (m2) :</label> <input
											type="text" class="span2" value="" data-slider-min="0"
											data-slider-max="600" data-slider-step="5"
											data-slider-value="[50,450]" id="property-geo"><br />
										<b class="pull-left color">40m</b> <b class="pull-right color">12000m</b>
									</div>
									<!-- End of  -->
								</div>

								<div class="search-row">

									<div class="form-group mar-r-20">
										<label for="price-range">Min baths :</label> <input
											type="text" class="span2" value="" data-slider-min="0"
											data-slider-max="600" data-slider-step="5"
											data-slider-value="[250,450]" id="min-baths"><br />
										<b class="pull-left color">1</b> <b class="pull-right color">120</b>
									</div>
									<!-- End of  -->

									<div class="form-group mar-l-20">
										<label for="property-geo">Min bed :</label> <input type="text"
											class="span2" value="" data-slider-min="0"
											data-slider-max="600" data-slider-step="5"
											data-slider-value="[250,450]" id="min-bed"><br /> <b
											class="pull-left color">1</b> <b class="pull-right color">120</b>
									</div>
									<!-- End of  -->

								</div>
								<br>
								<div class="search-row">

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Fire
												Place(3100)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Dual
												Sinks(500)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Hurricane
												Shutters(99)
											</label>
										</div>
									</div>
									<!-- End of  -->
								</div>

								<div class="search-row">

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Swimming
												Pool(1190)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> 2
												Stories(4600)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Emergency
												Exit(200)
											</label>
										</div>
									</div>
									<!-- End of  -->
								</div>

								<div class="search-row">

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Laundry
												Room(10073)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> Jog
												Path(1503)
											</label>
										</div>
									</div>
									<!-- End of  -->

									<div class="form-group">
										<div class="checkbox">
											<label> <input type="checkbox"> 26'
												Ceilings(1200)
											</label>
										</div>
									</div>
									<!-- End of  -->
									<br>
									<hr>
								</div>
								<button class="btn search-btn prop-btm-sheaerch" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>

						</form>
					</div>

				</li>
				<li class="dropdown yamm-fw" data-wow-delay="0.4s"><a
					href="category.jsp" class="dropdown-toggle" style="padding: 18px;">thematic
						tour</a></li>
				<li class="dropdown yamm-fw" data-wow-delay="0.4s"><a
					href="submit-property.jsp" class="dropdown-toggle"
					style="padding: 18px;">My Package</a></li>

				<!--  <li class="wow fadeInDown" data-wow-delay="0.5s"><a href="contact.html">Contact</a></li> -->
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>

<script>
	
</script>