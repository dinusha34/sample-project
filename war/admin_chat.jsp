<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>


<!-- Mirrored from html.carat.pragmaticmates.com/pricing.html by HTTrack Website Copier/3.x [XR&CO'2013], Sat, 08 Mar 2014 16:52:14 GMT -->
<head>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="author" content="Pragmatic Mate s.r.o. - http://pragmaticmates.com">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

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
	
	</style>


    <link rel="shortcut icon" href="#">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/chosen/chosen.min.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/pictopro-outline/pictopro-outline.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/pictopro-normal/pictopro-normal.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/colorbox/colorbox.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="libraries/jslider/bin/jquery.slider.min.css" media="screen, projection">
    <link rel="stylesheet" type="text/css" href="assets/css/carat.css" media="screen, projection">

    <link href="http://fonts.googleapis.com/css?family=Source+Sans+Pro:100,400,700,400italic,700italic" rel="stylesheet" type="text/css"  media="screen, projection">

	
    <title>Admin Chat</title>
</head>
<body>

<%
	if(session.getAttribute("userEmail") == null || !(session.getAttribute("userEmail").equals("admin@gmail.com"))){
		getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
	}	
		
%>

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

<header id="header">
	<div class="header-inner">
		<div class="container">
			<div class="row">
				<div class="col-md-12 clearfix">
					<div class="brand">
						<div class="logo">
							<a href="index.html">
								<img src="assets/img/logo.png" alt="Ejnar">
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
						<li><a href="orders.jsp" >Orders</a></li>				
						<li><a href="logout" >Logout</a></li>
						</ul><!-- /.nav -->
					</nav>
				</div><!-- /.col-md-12 -->
			</div><!-- /.row -->
		</div><!-- /.container -->
	</div><!-- /.header-inner -->
</header><!-- /#header -->

<div id="content" class="pricing-page">


    <div class="section gray-light">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div id="main">

                        <div class="pricing">
                            <div class="row" id="chatField">



                            </div>
                        </div>
                    </div>
                    <!-- /#main -->
                </div>
                <!-- /.col-md-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container -->
    </div>
    <!-- /.section -->
    
    <a href='#chat_popup' class='btn btn-primary' id="xxx" rel='leanModal'>Chat</a>

<div id="chat_popup" style="display: none; position: fixed; z-index: 11000; left: 50%; margin-left: -330px; top: 200px; ">
	<div class="detail_content" style="background-color:#999;width:600px;padding:50px;height: 400px;">
		<div class="detail_content" id="chatDiv" style="background-color:#ccc;width:500px;padding:10px;height: 250px; overflow: auto;">
		</div>
		<textarea rows="5" cols="96" id="chatBox"></textarea>
		<input type="hidden" id="userID">
	</div>
	<input class="btn btn-primary btn-block" type="button" id="send" value="Send">
</div>


</div>

<footer id="footer">
	<div class="container">

	</div><!-- /.container -->

	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-12 clearfix">
					<div class="copyright">
						<div style="text-align: center">
							Powered by Ejnar IT Solutions
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
<script src="assets/js/carat.js"></script>

<script>

	$(document).ready(function(e) {
		$("a[rel*=leanModal]").leanModal();
	});

	function setUserID(ID){
		document.getElementById("userID").value = ID;
		return true;
	}
	
</script>

<script type="text/javascript">
	window.setInterval (function () { 
		$.get("chatadmin",
	    function(data,status){
	    	document.getElementById("chatField").innerHTML=data;
	    });
	
	}, 1000);
	
	
	window.setInterval (function () { 
		$.get("chatdata",
	    {
	      uname:"<%
			if(session.getAttribute("userEmail") != null){
				out.println(session.getAttribute("userEmail")+"\",");
			}%> 
	      reciever: document.getElementById('userID').value,
	    },
	    function(data,status){
	    	document.getElementById("chatDiv").innerHTML=data;
	    	console.log("WTF");
	    });

	}, 1000);


	$(document).ready(function(){
		
		  $("#send").click(function(){
		    $.post("chatdata",
		    {
		      uname:"<%
				if(session.getAttribute("userEmail") != null){
					out.println(session.getAttribute("userEmail")+"\",");
				}%> 
		      chatval: document.getElementById('chatBox').value,
		      reciever: document.getElementById('userID').value,
		    },
		    function(data,status){
		    	document.getElementById("chatDiv").innerHTML=data;
		    	document.getElementById('chatBox').value = "";
		    });
		  });
	});

</script>

</body>

<!-- Mirrored from html.carat.pragmaticmates.com/pricing.html by HTTrack Website Copier/3.x [XR&CO'2013], Sat, 08 Mar 2014 16:52:14 GMT -->
</html>