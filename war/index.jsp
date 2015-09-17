<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="shortcut icon" href="#">
	
	<style>
		
		#lean_overlay {
		    position: fixed;
		    z-index:100;
		    top: 0px;
		    left: 0px;
		    height:100%;
		    width:100%;
		    background: #000;
		    display: none;
		}
		
		.colorPic{
			left:97px;
			position:relative;
			margin-left: 6px;
			float:left;
			top:10px;
			width:30px;
			height:30px;
			border-radius:6px;
		}
		
		#imageHolder
        {
           width:480px;
           height:293px;
           background:url(assets/img/car/yaris1.png) 0 0 no-repeat;                         
        }
		
	</style>
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/chosen/chosen.min.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/pictopro-outline/pictopro-outline.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/pictopro-normal/pictopro-normal.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/colorbox/colorbox.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/jslider/bin/jquery.slider.min.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="assets/css/carat.css" media="screen, projection">

    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:100,400,700,400italic,700italic" rel="stylesheet" type="text/css"  media="screen, projection">

	
	
	
    <title>RACING MACHANIC</title>
</head>
<body>
  <div class="topbar gray">
	<div class="container">
		<div class="row">
            <div class="col-md-6 col-xs-12 header-top-left">
                <div>
                    <div class="news">
                        <div class="inner">
                                <ul class="news-list">


                                </ul><!-- /.news-list -->
                        </div><!-- /.inner -->
                    </div><!-- /.news -->
                </div>
            </div>

            <div class="col-md-6 col-xs-12 header-top-right">
                <div>
                    
					
					<div class="social">
                        <div class="inner">
							<!--<a href="#register_popup" id="reglink">REGISTER</a>
							&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
							<a href="#login_popup" id="loglink">LOGIN</a>-->
                        </div><!-- /.inner -->
                    </div><!-- /.social -->

                </div>
            </div><!-- /.col-md-5 -->
		</div><!-- /.row -->
	</div><!-- /.container -->
</div><!-- /.topbar -->

<div id="chat_popup" style="display: none; position: fixed; z-index: 11000; left: 50%; margin-left: -330px; top: 200px; ">
	<div class="detail_content" style="background-color:#999;width:600px;padding:50px;height: 400px;">
		<div class="detail_content" id="chatDiv" style="background-color:#ccc;width:500px;padding:10px;height: 250px; overflow: auto;">
		</div>
		<textarea rows="5" cols="96" id="chatBox"></textarea>
	</div>
	<input class="btn btn-primary btn-block" type="button" id="send" value="Send">
	
</div>


<div id="login_popup" style="display: none; position: fixed; z-index: 11000; left: 50%; margin-left: -330px; top: 200px;">
	<div class="detail_content" style="background-color:#999;width:auto;padding:50px;">
		<form action="login" method="post">

            <div >
                <div style="margin-left: auto; margin-right: auto;">
                    <label>Email Address</label>
                    <input type="text" name="email" class="form-control" value="sri@gmail.com">
                </div>
				
				<br />
				
                <div style="margin-left: auto; margin-right: auto;">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control" value="123">
                </div>
            </div>
			
			<br />

            <div style="margin-left: auto; margin-right: auto;">
                <input class="btn btn-primary btn-block" type="submit" value="LOGIN">
	        </div>
        </form>
	</div>
</div>

<div id="register_popup" style="display: none; position: fixed; z-index: 11000; left: 50%; margin-left: -330px; top: 200px;">
	<div class="detail_content" style="background-color:#999;width:auto;padding:50px;">
		<form action="registeruser" method="post">

            <div >
				<div style="margin-left: auto; margin-right: auto;">
                    <label>Name</label>
                    <input type="text" name="userName" class="form-control">
                </div>
				
				<br />
			
                <div style="margin-left: auto; margin-right: auto;">
                    <label>Email Address</label>
                    <input type="text" name="email" class="form-control">
                </div>
				
				<br />
				
                <div style="margin-left: auto; margin-right: auto;">
                    <label>Password</label>
                    <input type="password" name="password" class="form-control">
                </div>
            </div>
			
			<br />

            <div style="margin-left: auto; margin-right: auto;">
                <input class="btn btn-primary btn-block" type="submit" value="REGISTER">
	        </div>
        </form>
	</div>
</div>





<div id="yaris_popup" style="display: none; position: fixed; z-index: 11000; left: 50%; top: 200px;">
	<div class="detail_content" style="background-color:#999;width:auto;height:450px; padding:50px;">
<!-- 		<div class="imgContainer" style="width:475px;"> -->
<!-- 		<img id="pic" src="assets/img/car/yaris/1.png" style="position:relative;float:left;width:475px;height:277px;left:-30px;top:-100px;"/> -->
		
		<div id="imageHolder"></div>
		<div class="colorPic" style="background-color:#ffffff;" onclick="changeColor('1'); "></div>
		<div class="colorPic" style="background-color:#e1e1e1;" onclick="changeColor('2'); "></div>
		<div class="colorPic" style="background-color:#494848;" onclick="changeColor('3'); "></div>
		<div class="colorPic" style="background-color:#1d1e1e;" onclick="changeColor('4'); "></div>
		<div class="colorPic" style="background-color:#b1160c;" onclick="changeColor('5'); "></div>
		<div class="colorPic" style="background-color:#0a5d6b;" onclick="changeColor('6'); "></div>
		<div class="colorPic" style="background-color:#788cb2;" onclick="changeColor('7'); "></div>
		<div class="colorPic" style="background-color:#15499c;" onclick="changeColor('8'); "></div>
		
		<div style="width: 480px; height:100px; position:relative;top:-324px;">
			<form action="addcar" method="post">
				<input type="hidden" value="Toyota Yaris" name="car">
				<input type="hidden" id="carColor" name="color"> 
				<select name="engine" class="form-control" style="width: 480px;">
					<option>V8 Engine</option>
					<option>V12 Engine</option>
					<option>Super Cool Engine</option>
					<option>Dragon Engine</option>
					<option>Yaris V4 Engine</option>
					<option>Terbo Engine</option>
				</select>
				<input type="submit" value="Order this car" style="position: relative; top: 300px;" class="btn btn-primary btn-block">
			</form>
		</div>
		
	</div>
	</div>
</div>

<header id="header">
	<div class="header-inner">
		<div class="container">
			<div class="row">
				<div class="col-md-12 clearfix">
					<div class="brand">
						<div class="logo">
							<a href="index.html">
								<img src="assets/img/logo1.jpg" alt="Ejnar">
							</a>
						</div><!-- /.logo -->

						<div class="slogan">No 1077,<br>Galle Rd, Colombo 07.</div><!-- /.slogan -->
					</div><!-- /.brand -->
					
					<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
					    <span class="sr-only">Toggle navigation</span>
					    <span class="icon-bar"></span>
					    <span class="icon-bar"></span>
					    <span class="icon-bar"></span>
					</button>

					<nav class="collapse navbar-collapse navbar-collapse" role="navigation">
						<ul class="navigation">
						
						<%
							if(session.getAttribute("userEmail") != null){
								out.println("<li><a href=''>"+session.getAttribute("userEmail")+"</a></li>");
								
						%>
						
						<li><a href="index.html">Home</a></li>						
						<li><a href="contact.html">Contact</a></li>
						
						<%		
								out.println("<li><a href='#chat_popup' id='chatlink' rel='leanModal'>Chat</a></li>");
								out.println("<li><a href='/logout' >Logout</a></li>");
							}else{
								
						%>
						
						<li><a href="index.html">Home</a></li>						
						<li><a href="contact.html">Contact</a></li>
						
						<%		
								out.println("<li><a href='#register_popup' id='reglink' rel='leanModal'>Register</a></li>");
								out.println("<li><a href='#login_popup' id='loglink' rel='leanModal'>Login</a></li>");
							}
						%>
						
						</ul><!-- /.nav -->
					</nav>
				</div><!-- /.col-md-12 -->
			</div><!-- /.row -->
		</div><!-- /.container -->
	</div><!-- /.header-inner -->
</header><!-- /#header -->


<div class="infobar">

</div><!-- /.infobar -->  <div class="highlighted-wrapper gray">
    <div class="highlighted section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-3">
                    <div id="overviews">
                        <div class="overview active">
                            <div class="overview-table">
                                <div class="item title">
                                    <h3>Toyota Yaris</h3>
                                    <div class="subtitle">V8, TDi</div>
                                </div><!-- /.item -->

                                <div class="item tags">
                                    <div class="price">$14,430</div>
                                    
                                    <%
									if(session.getAttribute("userEmail") != null){
									%>	
									
                                    <div class="type"> <a href="#yaris_popup" rel="leanModal" style="text-decoration: none;color: inherit;"> Customize </a></div> 
                                	
                                	<%
                                	}	
									%>
                                	
                                    
                                    </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Year</span>
                                    <span class="value">2014</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Manufacturer</span>
                                    <span class="value">Toyota industries</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Stock Number</span>
                                    <span class="value">7886</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Condition</span>
                                    <span class="value">Brand New</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Gas Mileage</span>
                                    <span class="value">37 highway mpg</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Fuel Type</span>
                                    <span class="value">Petrol</span>
                                </div><!-- /.item -->
                            </div><!-- /.overview-table -->
                        </div><!-- /.overview -->

                        <div class="overview">
                            <div class="overview-table">
                                <div class="item title">
                                    <h3>Toyota Auris</h3>
                                    <div class="subtitle">V8, TDi</div>
                                </div><!-- /.item -->

                                <div class="item tags">
                                    <div class="price">$7,999</div>
                                    <div class="type">Sale</div>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Stock Number</span>
                                    <span class="value">7911</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Condition</span>
                                    <span class="value">Brand New</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Manufacturer</span>
                                    <span class="value">Toyota industries</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Fuel Type</span>
                                    <span class="value">Petrol</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Engine</span>
                                    <span class="value">4000</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Transmission</span>
                                    <span class="value">Automatic</span>
                                </div><!-- /.item -->
                            </div><!-- /.overview-table -->
                        </div><!-- /.overview -->

                        <div class="overview">
                            <div class="overview-table">
                                <div class="item title">
                                    <h3>Toyota Avalon</h3>
                                    <div class="subtitle">V8, TDi</div>
                                </div><!-- /.item -->

                                <div class="item tags">
                                    <div class="price">$31,340</div>
                                    <div class="type">Sale</div>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Stock Number</span>
                                    <span class="value">7904</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Condition</span>
                                    <span class="value">Brand New</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Manufacturer</span>
                                    <span class="value">Toyota industries</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Fuel Type</span>
                                    <span class="value">Petrol</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Engine</span>
                                    <span class="value">1600</span>
                                </div><!-- /.item -->

                                <div class="item line">
                                    <span class="property">Transmission</span>
                                    <span class="value">Automatic</span>
                                </div><!-- /.item -->
                            </div><!-- /.overview-table -->
                        </div><!-- /.overview -->

                        <div id="slider-navigation">
                            <div class="prev"></div><!-- /.prev -->
                            <div class="next"></div><!-- /.next -->
                        </div><!-- /.slider-navigation -->
                    </div><!-- /.overviews -->
                </div>


                <div class="col-md-7 col-sm-7">
                    <div id="slider">
                        <div class="slide active">
                            <a href="#" ><img src="assets/img/slides/toyota.png" alt="#"></a>
                            <div class="color-overlay"></div><!-- /.color-overlay -->
                        </div><!-- /.slide -->

                        <div class="slide">
                            <a href="detail.html"><img src="assets/img/slides/toyota-1.png" alt="#"></a>
                            <div class="color-overlay"></div><!-- /.color-overlay -->
                        </div><!-- /.slide -->

                        <div class="slide">
                            <a href="detail.html"><img src="assets/img/slides/toyota-2.png" alt="#"></a>
                            <div class="color-overlay"></div><!-- /.color-overlay -->
                        </div><!-- /.slide -->
                    </div><!-- /#slider -->
                </div>
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.highligted -->

    <div class="filter-wrapper">
        <div class="container">
            <div class="row">           
                <div class="col-md-3 col-xs-12 pull-right">
                    <div class="filter-block">
                      
                    </div><!-- /.filter-block -->
                </div><!-- /.col-md-3 -->
            </div><!-- /.row -->
        </div><!-- /.highlighted -->
    </div><!-- /.slider-filter -->
</div><!-- /.highlighted-wrapper -->

<div id="content" class="frontpage">
    <div class="section gray-light">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="recent-cars" class="grid-block block">
    <div class="page-header center">
        <div class="page-header-inner">
            <div class="line">
                <hr/>
            </div><!-- /.line -->

            <div class="heading">
                <h2>Featured Cars in Shop</h2>
            </div><!-- /.heading -->

            <div class="line">
                <hr/>
            </div><!-- /.line -->
        </div><!-- /.page-header-inner -->
    </div><!-- /.page-header -->

    <div class="row">
        <div class="col-md-12">
            <div class="inner-block white">
                <div class="grid-carousel">
                                        
                                            <div class="inner">
                            <div class="grid-item">
    <div class="inner">
        <div class="picture">
            <div class="image-slider">
                
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/camry_1.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/camry_2.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/camry_3.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/camry_4.jpg" alt="#">
                    </a><!-- /.slide -->
                
                <div class="cycle-pager"></div><!-- /.cycle-pager -->
            </div><!-- /.image-slider -->
        </div><!-- /.picture -->

        <div class="like">
            <a href="detail.html"><i class="icon icon-outline-thumb-up"></i></a>
        </div><!-- /.like -->

        <h3>
            <a href="detail.html">Toyota Camry</a>
        </h3>

        <div class="subtitle">MX 234</div><!-- /.subtitle -->

        <div class="price">19,888$</div><!-- /.price -->

        <div class="meta">
            <ul class="clearfix ">
                <li>
                    <i class="icon icon-normal-dashboard"></i> 2011                </li>

                <li>
                    <i class="icon icon-normal-car-door"></i> Fuel                </li>

                <li>
                    <i class="icon icon-normal-cog-wheel"></i> 1500                </li>
            </ul>
        </div><!-- /.meta -->
    </div><!-- /.inner -->
</div><!-- /.grid-item -->                        </div><!-- /.inner -->
                                            <div class="inner">
                            <div class="grid-item">
    <div class="inner">
        <div class="picture">
            <div class="image-slider">
                
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/corolla_1.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/corolla_2.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/corolla_3.jpg" alt="#">
                    </a><!-- /.slide -->
									<a href="detail.html" class="slide">
                        <img src="assets/img/content/corolla_4.jpg" alt="#">
                    </a><!-- /.slide -->
                
                <div class="cycle-pager"></div><!-- /.cycle-pager -->
            </div><!-- /.image-slider -->
        </div><!-- /.picture -->

        <div class="like">
            <a href="detail.html"><i class="icon icon-outline-thumb-up"></i></a>
        </div><!-- /.like -->

        <h3>
            <a href="detail.html">Toyota Corolla</a>
        </h3>

        <div class="subtitle">Valvematic Active</div><!-- /.subtitle -->

        <div class="price">16,999</div><!-- /.price -->

        <div class="meta">
            <ul class="clearfix ">
                <li>
                    <i class="icon icon-normal-dashboard"></i> 2013                </li>

                <li>
                    <i class="icon icon-normal-car-door"></i> Fuel                </li>

                <li>
                    <i class="icon icon-normal-cog-wheel"></i> 1500                </li>
            </ul>
        </div><!-- /.meta -->
    </div><!-- /.inner -->
</div><!-- /.grid-item -->                        </div><!-- /.inner -->
                                            <div class="inner">
                            <div class="grid-item">
    <div class="inner">
        <div class="picture">
            <div class="image-slider">
                
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/prius_1.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/prius_2.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/prius_3.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/prius_4.jpg" alt="#">
                    </a><!-- /.slide -->
                
                <div class="cycle-pager"></div><!-- /.cycle-pager -->
            </div><!-- /.image-slider -->
        </div><!-- /.picture -->

        <div class="like">
            <a href="detail.html"><i class="icon icon-outline-thumb-up"></i></a>
        </div><!-- /.like -->

        <h3>
            <a href="detail.html">Toyota Prius</a>
        </h3>

        <div class="subtitle">Active</div><!-- /.subtitle -->

        <div class="price">10,290$</div><!-- /.price -->

        <div class="meta">
            <ul class="clearfix ">
                <li>
                    <i class="icon icon-normal-dashboard"></i> 2010                </li>

                <li>
                    <i class="icon icon-normal-car-door"></i> Hybrid                </li>

                <li>
                    <i class="icon icon-normal-cog-wheel"></i> 1500                </li>
            </ul>
        </div><!-- /.meta -->
    </div><!-- /.inner -->
</div><!-- /.grid-item -->                        </div><!-- /.inner -->
                                            <div class="inner">
                            <div class="grid-item">
    <div class="inner">
        <div class="picture">
            <div class="image-slider">
                
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/sienna_1.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/sienna_2.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/sienna_3.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/sienna_4.jpg" alt="#">
                    </a><!-- /.slide -->
                
                <div class="cycle-pager"></div><!-- /.cycle-pager -->
            </div><!-- /.image-slider -->
        </div><!-- /.picture -->

        <div class="like">
            <a href="detail.html"><i class="icon icon-outline-thumb-up"></i></a>
        </div><!-- /.like -->

        <h3>
            <a href="detail.html">Toyota Sienna</a>
        </h3>

        <div class="subtitle">MX 234</div><!-- /.subtitle -->

        <div class="price">19,888$</div><!-- /.price -->

        <div class="meta">
            <ul class="clearfix ">
                <li>
                    <i class="icon icon-normal-dashboard"></i> 2011                </li>

                <li>
                    <i class="icon icon-normal-car-door"></i> Hybrid                </li>

                <li>
                    <i class="icon icon-normal-cog-wheel"></i> 1500                </li>
            </ul>
        </div><!-- /.meta -->
    </div><!-- /.inner -->
</div><!-- /.grid-item -->                        </div><!-- /.inner -->
                                            <div class="inner">
                            <div class="grid-item">
    <div class="inner">
        <div class="picture">
            <div class="image-slider">
                
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/yaris_1.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/yaris_2.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/yaris_3.jpg" alt="#">
                    </a><!-- /.slide -->
                
                <div class="cycle-pager"></div><!-- /.cycle-pager -->
            </div><!-- /.image-slider -->
        </div><!-- /.picture -->

        <div class="like">
            <a href="detail.html"><i class="icon icon-outline-thumb-up"></i></a>
        </div><!-- /.like -->

        <h3>
            <a href="detail.html">Toyota Yaris</a>
        </h3>

        <div class="subtitle">Valvematic Active</div><!-- /.subtitle -->

        <div class="price">16,999</div><!-- /.price -->

        <div class="meta">
            <ul class="clearfix ">
                <li>
                    <i class="icon icon-normal-dashboard"></i> 2013                </li>

                <li>
                    <i class="icon icon-normal-car-door"></i> Fuel                </li>

                <li>
                    <i class="icon icon-normal-cog-wheel"></i> 1500                </li>
            </ul>
        </div><!-- /.meta -->
    </div><!-- /.inner -->
</div><!-- /.grid-item -->                        </div><!-- /.inner -->
                                            <div class="inner">
                            <div class="grid-item">
    <div class="inner">
        <div class="picture">
            <div class="image-slider">
                
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/avalon_1.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/avalon_2.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/avalon_3.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/avalon_4.jpg" alt="#">
                    </a><!-- /.slide -->
                
                <div class="cycle-pager"></div><!-- /.cycle-pager -->
            </div><!-- /.image-slider -->
        </div><!-- /.picture -->

        <div class="like">
            <a href="detail.html"><i class="icon icon-outline-thumb-up"></i></a>
        </div><!-- /.like -->

        <h3>
            <a href="detail.html">Toyota Avalon</a>
        </h3>

        <div class="subtitle">MX 234</div><!-- /.subtitle -->

        <div class="price">19,888$</div><!-- /.price -->

        <div class="meta">
            <ul class="clearfix ">
                <li>
                    <i class="icon icon-normal-dashboard"></i> 2011                </li>

                <li>
                    <i class="icon icon-normal-car-door"></i> Fuel                </li>

                <li>
                    <i class="icon icon-normal-cog-wheel"></i> 1500                </li>
            </ul>
        </div><!-- /.meta -->
    </div><!-- /.inner -->
</div><!-- /.grid-item -->                        </div><!-- /.inner -->
                                            <div class="inner">
                            <div class="grid-item">
    <div class="inner">
        <div class="picture">
            <div class="image-slider">
                
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/pirus_v_1.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/pirus_v_2.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/pirus_v_3.jpg" alt="#">
                    </a><!-- /.slide -->
                                    <a href="detail.html" class="slide">
                        <img src="assets/img/content/pirus_v_4.jpg" alt="#">
                    </a><!-- /.slide -->
                
                <div class="cycle-pager"></div><!-- /.cycle-pager -->
            </div><!-- /.image-slider -->
        </div><!-- /.picture -->

        <div class="like">
            <a href="detail.html"><i class="icon icon-outline-thumb-up"></i></a>
        </div><!-- /.like -->

        <h3>
            <a href="detail.html">Toyota Pirus V</a>
        </h3>

        <div class="subtitle">DPF Active</div><!-- /.subtitle -->

        <div class="price">20,888$</div><!-- /.price -->

        <div class="meta">
            <ul class="clearfix ">
                <li>
                    <i class="icon icon-normal-dashboard"></i> 2013                </li>

                <li>
                    <i class="icon icon-normal-car-door"></i> Fuel                </li>

                <li>
                    <i class="icon icon-normal-cog-wheel"></i> 1500                </li>
            </ul>
        </div><!-- /.meta -->
    </div><!-- /.inner -->
</div><!-- /.grid-item -->                        </div><!-- /.inner -->

                                    </div><!-- /.grid-carousel -->
            </div><!-- /.inner-block -->
        </div><!-- /.col-md-12 -->
    </div>

    <div class="row">
        <div class="col-md-12">
            <div id="grid-carousel-pager">
                <div class="prev"></div><!-- /.prev -->
                <div class="next"></div><!-- /.next -->
            </div><!-- /.grid-carousel-pager -->
        </div><!-- /.col-md-12 -->
    </div><!-- /.row -->
</div><!-- /.grid-block -->
                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.section -->



    <div class="section gray-light">
        <div class="container">



        </div><!-- /.container -->
    </div><!-- /.section -->

    <div class="section gray-light ">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="partners-block block">
        <div class="page-header center">
            <div class="page-header-inner">
				
				<div class="line">
                    <hr/>
                </div><!-- /.line -->

                <div class="heading">
                    <h2>Our Partners</h2>
                </div><!-- /.heading -->

                <div class="line">
                    <hr/>
                </div><!-- /.line -->
            </div><!-- /.page-header-inner -->
        </div><!-- /.page-header -->

	<div class="inner-block white block-shadow">
		<div class="row">
			<div class="col-sm-2 col-md-2">
				<div class="partner">
					<a target="_blank" href="http://logopond.com/gallery/detail/208624">
						<img src="assets/img/partners/logo1.png" alt="#">
					</a>
				</div><!-- /.partner -->
			</div><!-- /.col-md-2 -->

			<div class="col-sm-2 col-md-2">
				<div class="partner">
                                    <a target="_blank" href="http://logopond.com/gallery/detail/208786">
						<img src="assets/img/partners/logo2.png" alt="#">
					</a>
				</div><!-- /.partner -->
			</div><!-- /.col-md-2 -->

			<div class="col-sm-2 col-md-2">
				<div class="partner">
                                    <a target="_blank" href="http://logopond.com/gallery/detail/206279">
						<img src="assets/img/partners/logo3.png" alt="#">
					</a>
				</div><!-- /.partner -->
			</div><!-- /.col-md-2 -->

			<div class="col-sm-2 col-md-2">
				<div class="partner">
                                    <a target="_blank" href="http://logopond.com/gallery/detail/206126">
						<img src="assets/img/partners/logo4.png" alt="#">
					</a>
				</div><!-- /.partner -->
			</div><!-- /.col-md-2 -->

			<div class="col-sm-2 col-md-2">
				<div class="partner">
                                    <a target="_blank" href="http://logopond.com/gallery/detail/196232">
						<img src="assets/img/partners/logo5.png" alt="#">
					</a>
				</div><!-- /.partner -->
			</div><!-- /.col-md-2 -->

			<div class="col-sm-2 col-md-2">
				<div class="partner">
                                    <a target="_blank" href="http://logopond.com/gallery/detail/205132">
						<img src="assets/img/partners/logo6.png" alt="#">
					</a>
				</div><!-- /.partner -->
			</div><!-- /.col-md-2 -->
		</div><!-- /.row -->
	</div><!-- /.inner-block -->
</div><!-- /.partners-block -->                </div><!-- /.col-md-12 -->
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div><!-- /.section -->
</div><!-- /#content -->  <footer id="footer">
	<div class="container">

	</div><!-- /.container -->

	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-12 clearfix">
					<div class="copyright">
						<div style="text-align: center">
							&copy; All Rights are Reserved
						</div>
					</div><!-- /.pull-left -->

				</div><!-- /.col-md-12 -->
			</div><!-- /.row -->
		</div><!-- /.container -->
	</div><!-- /.footer-bottom -->
</footer><!-- /#footer -->


<script src="assets/js/jquery.js"></script>
<script src="../code.jquery.com/jquery-migrate-1.2.1.js"></script>
<script src="assets/js/jquery.ui.js"></script>
<script src="assets/js/bootstrap.js"></script>
<script src="assets/js/cycle.js"></script>
<script src="libraries/jquery.bxslider/jquery.bxslider.js"></script>
<script src="libraries/easy-tabs/lib/jquery.easytabs.min.js"></script>
<script src="libraries/chosen/chosen.jquery.js"></script>
<script src="libraries/star-rating/jquery.rating.js"></script>
<script src="libraries/colorbox/jquery.colorbox-min.js"></script>
<script src="libraries/jslider/bin/jquery.slider.min.js"></script>
<script src="libraries/ezMark/js/jquery.ezmark.js"></script>

<script type="text/javascript" src="libraries/flot/jquery.flot.js"></script>
<script type="text/javascript" src="libraries/flot/jquery.flot.canvas.js"></script>
<script type="text/javascript" src="libraries/flot/jquery.flot.resize.js"></script>
<script type="text/javascript" src="libraries/flot/jquery.flot.time.js"></script>
<script type="text/javascript" src="assets/js/jquery.leanModal.min.js"></script>

<script src="http://maps.googleapis.com/maps/api/js?sensor=true&amp;v=3.13"></script>
<script src="assets/js/carat.js"></script></body>
<script src="assets/js/car_rotate.js"></script></body>

<script>

	$(document).ready(function(e) {
		$("a[rel*=leanModal]").leanModal();
	});
	
	
	function changeColor(picNo){
		
		var pos= obj.imageHolder.style.backgroundPosition;
		
		$('#imageHolder').css("background","url(assets/img/car/yaris"+picNo+".png) "+pos+" no-repeat");
		
		switch(picNo){
			case "1": document.getElementById('carColor').value = "white";
				break;
			case "2": document.getElementById('carColor').value = "grey";
				break;
			case "3": document.getElementById('carColor').value = "dark gray";
				break;
			case "4": document.getElementById('carColor').value = "black";
				break;
			case "5": document.getElementById('carColor').value = "red";
				break;
			case "6": document.getElementById('carColor').value = "";
				break;
			case "7": document.getElementById('carColor').value = "";
				break;
			case "8": document.getElementById('carColor').value = "blue";
				break;
		}
		
	}
	
</script>


<script>
	
$(document).ready(function(){
	  $("#send").click(function(){
	    $.post("chat",
	    {
	      uname:"<%
			if(session.getAttribute("userEmail") != null){
				out.println(session.getAttribute("userEmail")+"\",");
			}%>
	      chatval: document.getElementById('chatBox').value
	    },
	    function(data,status){
	    	document.getElementById("chatDiv").innerHTML=data;
	    	document.getElementById('chatBox').value = "";
	    });
	  });
});


window.setInterval (function () { 
	$.get("chat",
    {
      uname:"<%
		if(session.getAttribute("userEmail") != null){
			out.println(session.getAttribute("userEmail")+"\"");
		}%>
    },
    function(data,status){
    	document.getElementById("chatDiv").innerHTML=data;
    });

}, 1000);
	
	
</script>


</html>