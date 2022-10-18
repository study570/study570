<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ taglib prefix='fmt' uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>訂餐趣 - 餐廳列表</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/fontAwesome.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/hero-slider.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/owl-carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/templatemo-style.css">

        <link href="https://fonts.googleapis.com/css?family=Spectral:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">

        <script src="${pageContext.request.contextPath}/templatemo_507_victory/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>
        
        <script>
        let queryString = null;
		let query = null;
        
        window.onload = function() {
        	
        	let queryString = document.getElementById("queryString");
        	let query = document.getElementById("query");
        	
        	
        	var xhr = new XMLHttpRequest();
        	xhr.open("GET", "<c:url value='/restaurantList' />", true);
        	xhr.send();
        	
        	
        	<%-- 抹茶 --%>
        	query.addEventListener('click',
    				function() {
    					let userQueryString = queryString.value;
    					if (!userQueryString) {
    						alert('請輸入餐廳店名，可輸入部分名稱');
    						return;
    					}
        	//console.log(queryString);
    					
    					
    					let xhr2 = new XMLHttpRequest();
    					xhr2.open("GET", "<c:url value='/queryByRTitle' />?userQueryString="
								+ userQueryString);
    					xhr2.send();
    					
    					
    					xhr2.onreadystatechange = function() {
    		        		if (xhr2.readyState == 4 && xhr2.status == 200) {
    		        			var content = "<table id=restaurant><thead>";
    		        			var entries = JSON.parse(xhr2.responseText);
    		        			var length = entries.length;
    		        			
	
    		        			if (length == 0){
    								content += "<tr><th colspan='8'>查無資料</th><tr>";	
    							}else{
    								content += "<tr><th colspan='8'>共計"+ length +" 筆資料</th><tr>";
    							
    		        			
//    		        				alert('XXXXXXXXXXXXXXXX');
    		        			
    		        			for(var i=0; i < entries.length; i++){
    		        				let entry = entries[i];
    		        				tmp = "<c:url value='/restaurantLists/' />";
    		        				content +="<tr><td width='70'>" 
    		        			    		
    		        			    		+ "</td>" 
    		        						+ "<td><img  src='" + entry.pictureString + "'></td>"
    		        			    		+ "<td align='center'>" 
    		        			    		+"<b>"
    		        			            + entries[i].rname 
    		        			            +"</b>"
    		        			            + "</td>" 
    		        			            + "<td>" 
    		        		        	  	+ entries[i].rdes 
    		        		        	   	+ "</td>" 
    		        		        	   	+ "<td align='right'>" 
    		        		        	   	+ entries[i].rtel 
    		        		         		+ "&nbsp;</td>" 
    		        		               	+ "<td>" 
    		        		               	+ entries[i].radr 
    		        						+ "</td>" 
    		        						+ "<td>" 
    		        						+ entries[i].rsort 
    		        						+ "&nbsp;</td>"+"</tr>";
    		        						
    		        						

    		        				}		
    		        				}
    		        				content += "</tbody></table>";
    		        				var divs = document.getElementById("somedivS");
    		        				divs.innerHTML = content;
    		        			}
    		        		
    		        		}
        	});
        	
        	

        	<%-- show all --%>
        	xhr.onreadystatechange = function() {
        		if (xhr.readyState == 4 && xhr.status == 200) {
        			var content = "<table id=myTable02><thead>";
        			
        			var entries = JSON.parse(xhr.responseText);
        			for(var i=0; i < entries.length; i++){
        				

        				let entry = entries[i];
        				tmp = "<c:url value='/restaurantLists/' />";
        				content +="<tr><td width='110'>" 
        			    		
        			    		+ "</td>" 
        						+ "<td><img  src='" + entry.pictureString + "'></td>"
        			    		+ "<td align='center'>" 
        			    		+"<b>"
        			            + entries[i].rname 
        			            +"</b>"
        			            + "</td>" 
        			            + "<td>" 
        		        	  	+ entries[i].rdes 
        		        	   	+ "</td>" 
        		        	   	+ "<td align='right'>" 
        		        	   	+ entries[i].rtel 
        		         		+ "&nbsp;</td>" 
        		               	+ "<td>" 
        		               	+ entries[i].radr 
        						+ "</td>" 
        						+ "<td>" 
        						+ entries[i].rsort 
        						+ "&nbsp;</td>"
        						+  	               		"</tr>";
        						
        						
        						console.log();
        						
        				}
        				content += "</tbody></table>";
        				var divs = document.getElementById("somedivShowAll");
        				divs.innerHTML = content;
        			}
        		
        		}
        		
        }

        
        
        
        
        
        
</script>


</head>

<body>
	<div class="header">
		<div class="container">
			<br><div class="heading" align="center"><img src="${pageContext.request.contextPath}/templatemo_507_victory/img/LOGO4.png"></div>
			<nav class="navbar navbar-inverse" role="navigation">
				<div class="navbar-header">

				</div>
				<!--/.navbar-header-->
				<div id="main-nav" class="collapse navbar-collapse">
					<ul class="nav navbar-nav">
						<li><a href="home"><h3>🏠首頁</h3></a></li>
						<li><a href="member"><h3>👥會員</h3></a></li>
						<li><a href="member"><h3>☎️訂單</h3></a></li>
						<li><a href="blog"><h3>📚食記</h3></a></li>
						<li><a href="res"><h3>🍽️餐廳</h3></a></li>
						<li><a href="nutrition"><h3>🍄營養</h3></a></li>
						<li><a href="couponIndex"><h3>🈹優惠</h3></a></li>
					</ul>
				</div>
				<!--/.navbar-collapse-->
			</nav>
			<!--/.navbar-->
		</div>
		<!--/.container-->
	</div>
	<!--/.header-->
	






<div class="container">

<div class="row">

					
<div align="center">
							<!-- Right Side Bar - Get notified updates -->
							<h4 class="widget-title">搜尋餐廳</h4>

								<div class="form-group">
									<input id="queryString" type='text' class="form-control" placeholder="" /> <!--  -->
								</div>
									<button id='query'>查詢</button> <!--  -->

					<%--抹茶結果 --%>
					<div class="card-body">
              		<div class='center'  id='somedivS'></div><br>
              </div>
					
							
</div>
</div>
</div>




    <section class="breakfast-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="breakfast-menu-content">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="left-image">
                                    <img src='${pageContext.request.contextPath}/images/rimg/resJ1.jpg' >
                                </div>
                            </div>
                            <div class="col-md-7">
                                <h2>日式餐廳 本週推薦</h2>
                                <div id="owl-breakfast" class="owl-carousel owl-theme">
                                    <div class="item col-md-12" href="https://makotoya.com.tw/">
                                        <div class="food-item">
                                           <img width='182' height='105' src='${pageContext.request.contextPath}/images/rimg/jj.jpg' >
                                           
                                            <div class="text-content">
                                                <h4>誠屋拉麵</h4>
                                                <p>號稱新北最強雞白湯旭道拉麵，想吃又不想排隊的朋友，可以在開店前，提早到店門口...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img width='182' height='105' src='${pageContext.request.contextPath}/images/rimg/kk.jpg' >
                                           
                                            <div class="text-content">
                                                <h4>竺日居</h4>
                                                <p>竺日居正式開幕了，創立於1992年的菊川屹立了20多年而不搖。每日清晨由老闆親...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img width='182' height='105' src='${pageContext.request.contextPath}/images/rimg/bb.jpg' >
                                           
                                            <div class="text-content">
                                                <h4>燈來拉麵</h4>
                                                <p>燈來拉麵為食客搜羅日本各地的美酒佳餚、選用最新鮮及上乘的食材、以獨特的烹調方...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





    <section class="lunch-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="lunch-menu-content">
                        <div class="row">
                            <div class="col-md-7">
                                <h2>泰式餐廳 本週推薦</h2>
                                <div id="owl-lunch" class="owl-carousel owl-theme">
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                            <img width='182' height='105' src='${pageContext.request.contextPath}/images/rimg/aa.jpg' >
                                           
                                            <div class="text-content">
                                                <h4>香茅廚泰式餐廳</h4>
                                                <p>香茅廚泰式餐廳是一間泰式菜系的泰式餐廳，除了傳統的特色菜系列外；亦不斷的創造...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                           <img width='182' height='105' src='${pageContext.request.contextPath}/images/rimg/mm.jpg' >
                                            
                                            <div class="text-content">
                                                <h4>泰龍泰式料理</h4>
                                                <p>主廚團隊配合季節的變化，推出精選菜色以自然食材結合本地特色，提供創意與傳統兼容...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                           <img width='182' height='105' src='${pageContext.request.contextPath}/images/rimg/rr.jpg' >
                                          
                                            <div class="text-content">
                                                <h4>衷魚泰飯</h4>
                                                <p>堅持精緻且平價的消費方式， 新鮮的食材讓前來品嚐的顧客都讚不絕口...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5">
                                <div class="left-image">
                                    <img src='${pageContext.request.contextPath}/images/rimg/resT1.jpg' >
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>





    <section class="dinner-menu">
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="dinner-menu-content">
                        <div class="row">
                            <div class="col-md-5">
                                <div class="left-image">
                                     <img src='${pageContext.request.contextPath}/images/rimg/resI1.jpg' >
                                </div>
                            </div>
                            <div class="col-md-7">
                                <h2>義式餐廳 本週推薦</h2>
                                <div id="owl-dinner" class="owl-carousel owl-theme">
                                    <div class="item col-md-12">
                                        <div width='182' height='105' class="food-item">
                                            <img src='${pageContext.request.contextPath}/images/rimg/dd.jpg' >
                                           
                                            <div class="text-content">
                                                <h4>暖暖窩16號pasta</h4>
                                                <p>在義大利羅馬屹立50餘年，到展店日本東京至今30餘年的高級義大利餐廳。本店傳承了...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                           <img width='182' height='105' src='${pageContext.request.contextPath}/images/rimg/ll.jpg' >
                                           
                                            <div class="text-content">
                                                <h4>Eat enjoy意享美式廚房</h4>
                                                <p>已超過20年歷史的Eat enjoy意享美式廚房，一直竭盡心力，用最大的服務熱誠...</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="item col-md-12">
                                        <div class="food-item">
                                           <img width='182' height='105' src='${pageContext.request.contextPath}/images/rimg/pp.jpg' >
                                           
                                            <div class="text-content">
                                                <h4>Creative Pasta 創義麵</h4>
                                                <p>我們義式餐廳的店名是「Creative Pasta 創義麵」。比起物質，不如追求精神上...</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
    
    
    
    <!-- 內文 -->
    <div class="container">
				<br><br>
			<div class="row">
			
			
			
			
			
			
			
			
			
			 <div class="card-body">
              		<div class='center'  id='somedivShowAll'></div><br>
              </div>
								

			</div>
		</div>
		
		
		
		
		
		
		
		
		
<section class="sign-up">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="heading">
						<h2>登入獲得更多餐廳資訊！</h2>
					</div>
				</div>
			</div>
			<form id="contact" action="" method="get">
				<div class="row">
					<div class="col-md-4 col-md-offset-3">
						<fieldset>
							<input name="email" type="text" class="form-control" id="email"
								placeholder="輸入您的郵件地址..." required="">
						</fieldset>
					</div>
					<div class="col-md-2">
						<fieldset>
							<button type="submit" id="form-submit" class="btn">聯絡我們</button>
						</fieldset>
					</div>
				</div>
			</form>
		</div>
	</section>



	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<p>Copyright &copy; 2021 訂餐趣</p>
				</div>
				<div class="col-md-4">
					<ul class="social-icons">
						<li><a rel="nofollow" href="https://fb.com/templatemo"><i
								class="fa fa-facebook"></i></a></li>
						<li><a href="#"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#"><i class="fa fa-rss"></i></a></li>
						<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<p>Design: Team No.2</p>
				</div>
			</div>
		</div>
	</footer>


  
  
  
  
  
  
  
  
  
  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="${pageContext.request.contextPath}/templatemo_507_victory/js/vendor/jquery-1.11.2.min.js"><\/script>')</script>

    <script src="${pageContext.request.contextPath}/templatemo_507_victory/js/vendor/bootstrap.min.js"></script>

    <script src="${pageContext.request.contextPath}/templatemo_507_victory/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/templatemo_507_victory/js/main.js"></script>


<!--    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" type="text/javascript"></script>	-->
    
    
    
    
    
    
    
    
    
    
    
    <script type="text/javascript">
    $(document).ready(function() {
        // navigation click actions 
        $('.scroll-link').on('click', function(event){
            event.preventDefault();
            var sectionID = $(this).attr("data-id");
            scrollToID('#' + sectionID, 750);
        });
        // scroll to top action
        $('.scroll-top').on('click', function(event) {
            event.preventDefault();
            $('html, body').animate({scrollTop:0}, 'slow');         
        });
        // mobile nav toggle
        $('#nav-toggle').on('click', function (event) {
            event.preventDefault();
            $('#main-nav').toggleClass("open");
        });
    });
    // scroll function
    function scrollToID(id, speed){
        var offSet = 0;
        var targetOffset = $(id).offset().top - offSet;
        var mainNav = $('#main-nav');
        $('html,body').animate({scrollTop:targetOffset}, speed);
        if (mainNav.hasClass("open")) {
            mainNav.css("height", "1px").removeClass("in").addClass("collapse");
            mainNav.removeClass("open");
        }
    }
    if (typeof console === "undefined") {
        console = {
            log: function() { }
        };
    }
    </script>
</body>
</html>