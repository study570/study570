<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<title>訂餐趣 - 首頁</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
          <link rel="apple-touch-icon" href="apple-touch-icon.png">

        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/fontAwesome.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/hero-slider.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/owl-carousel.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/templatemo-style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/templatemo_507_victory/css/styles.css">

        <link href="https://fonts.googleapis.com/css?family=Spectral:200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
        <script src="${pageContext.request.contextPath}/templatemo_507_victory/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

		<script>
        
        window.addEventListener('load', 
        		  function() { 
        	
        	
        	let queryString = null;
    		let query = null;
    		
    			queryString = document.getElementById("queryString");
    			query = document.getElementById("query");
    			
    			var xhr = new XMLHttpRequest();
    			xhr.open("GET", "<c:url value='/articleList'/>", true);
    		
    			xhr.send();
            	
    			xhr.onreadystatechange = function() {
    				if (xhr.readyState == 4 && xhr.status == 200) {
    					let reviews = JSON.parse(xhr.responseText);
    					var contentMainPick01 = "";
    					contentMainPick01 += "<div class='blog-post'>"
    						let i = 4;
    					var contentMainPick01 = "";
    					contentMainPick01 += "<div class='blog-post'>"
    					 + "							<img class='media-object' src='"+ reviews[i].pictureString + "' alt='Image'>"
    					 + "							<div class='date'>"+ reviews[i].postdate + "</div>"
    					 + "							<div class='right-content'>"
    					 + "									<h4><a href='"+reviews[i].url+"' target = '_blank'>"+ reviews[i].reviewtitle + "</a></h4>"
    					 + "									<span>Branding / Admin</span>"
    					 + "									<p>"+ reviews[i].highlight + "</p>"
    					 + "										<div class='text-button'>"
    					 + "											<a href='<c:url value='/blog '/>'>看更多</a>"
    					 + "										</div>"
    					 + "								</div>"
    					 + "						</div>";
    					 
    					var divsMainPick01 = document.getElementById("somedivS_MainPick01");
    					divsMainPick01.innerHTML = contentMainPick01;
    					
    					<!-- EditorsPick No2 -->
    					let j = 9;
    					var contentMainPick02 = "";
    					contentMainPick02 += "<div class='blog-post'>"
    						 + "							<img class='media-object' src='"+ reviews[j].pictureString + "' alt='Image'>"
    						 + "							<div class='date'>"+ reviews[j].postdate + "</div>"
    						 + "								<div class='right-content'>"
    						 + "									<h4><a href='"+reviews[j].url+"' target = '_blank'>"+ reviews[j].reviewtitle + "</a></h4>"
    						 + "									<span>Branding / Admin</span>"
    						 + "									<p>"+ reviews[j].highlight + "</p>"
    						 + "										<div class='text-button'>"
    						 + "											<a href='<c:url value='/blog '/>'>看更多</a>"
    						 + "										</div>"
    						 + "								</div>"
    						 + "						</div>";
    					var divsMainPick02 = document.getElementById("somedivS_MainPick02");
    					divsMainPick02.innerHTML = contentMainPick02;
    					
    					<!-- EditorsPick No3 -->
    					let k = 11;
    					var contentMainPick03 = "";
    					contentMainPick03 += "<div class='blog-post'>"
    						 + "							<img class='media-object' src='"+ reviews[k].pictureString + "' alt='Image'>"
    						 + "							<div class='date'>"+ reviews[k].postdate + "</div>"
    						 + "								<div class='right-content'>"
    						 + "									<h4><a href='"+reviews[k].url+"' target = '_blank'>"+ reviews[k].reviewtitle + "</a></h4>"
    						 + "									<span>Branding / Admin</span>"
    						 + "									<p>"+ reviews[k].highlight + "</p>"
    						 + "										<div class='text-button'>"
    						 + "											<a href='<c:url value='/blog '/>'>看更多</a>"
    						 + "										</div>"
    						 + "								</div>"
    						 + "						</div>";
    					var divsMainPick03 = document.getElementById("somedivS_MainPick03");
    					divsMainPick03.innerHTML = contentMainPick03;
    					
    					<!-- EditorsPick No4 -->
    					let m = 2;
    					var contentMainPick04 = "";
    					contentMainPick04 += "<div class='blog-post'>"
    						 + "							<img class='media-object' src='"+ reviews[m].pictureString + "' alt='Image'>"
    						 + "							<div class='date'>"+ reviews[m].postdate + "</div>"
    						 + "								<div class='right-content'>"
    						 + "									<h4><a href='"+reviews[m].url+"' target = '_blank'>"+ reviews[m].reviewtitle + "</a></h4>"
    						 + "									<span>Branding / Admin</span>"
    						 + "									<p>"+ reviews[m].highlight + "</p>"
    						 + "										<div class='text-button'>"
    						 + "											<a href='<c:url value='/blog '/>'>看更多</a>"

    						 + "										</div>"
    						 + "								</div>"
    						 + "						</div>";
    					var divsMainPick03 = document.getElementById("somedivS_MainPick03");
    					divsMainPick03.innerHTML = contentMainPick03;
    					
    					<!-- EditorsPick No4 -->
    					var contentMainPick04 = "";
    					contentMainPick04 += "<div class='blog-post'>"
    						 + "							<img class='media-object' src='"+ reviews[2].pictureString + "' alt='Image'>"
    						 + "							<div class='date'>"+ reviews[2].postdate + "</div>"
    						 + "								<div class='right-content'>"
    						 + "									<h4>"+ reviews[2].reviewtitle + "</h4>"
    						 + "									<span>Branding / Admin</span>"
    						 + "									<p>"+ reviews[2].highlight + "</p>"
    						 + "										<div class='text-button'>"
    						 + "											<a href='" + reviews[2].url +"''>Continue Reading</a>"
    						 + "										</div>"
    						 + "								</div>"
    						 + "						</div>";
    					var divsMainPick04 = document.getElementById("somedivS_MainPick04");
    					divsMainPick04.innerHTML = contentMainPick04;
    				}
    			}
        
        
        }, false);
		</script>
</head>
<body>

<c:choose>
<c:when test="${not empty CurrentUser}">

<c:set var="currentaccount" scope="session" value="${CurrentUser.account}"/>
<c:set var="currentname" scope="session" value="${CurrentUser.customerName}"/>
<c:set var="loginorout" scope="session" value="登出"/>
<c:set var="orderinfo" scope="session" value="userOrder"/>
</c:when>

<c:otherwise>
<c:set var="currentaccount" scope="session" value="訪客帳號"/>
<c:set var="currentname" scope="session" value="訪客"/>
<c:set var="loginorout" scope="session" value="會員登入"/>
<c:set var="orderinfo" scope="session" value="member"/>
</c:otherwise>
</c:choose>

<div class="header">
        <div class="container">
<!--         	<div align="right"><a href="#"><h3>會員登入</h3></a></div> -->
<br><br>
<div id="myAccount" style="visibility:hidden" align="right" >
                        <a href="<c:url value="/member/gotoCustomerHomePage"/>">
                            <h1>👥我的帳號</h1>
                        </a>
                    </div>
        	<div align="right" id="logoutHref" style="visibility:hidden"><a  href="<c:url value="/member/logout"/>" ><h1>👥登出</h1></a></div>
            <div align="right" id="loginHref" ><a href="<c:url value="/member"/>">
            <img
			src="${pageContext.request.contextPath}/templatemo_507_victory/img/login.png"
			alt="">
							</a></div>
        	<br><div class="heading" align="center"><img src="${pageContext.request.contextPath}/templatemo_507_victory/img/LOGO4.png"></div>
        	<br><br>
            <h3>你好，${currentname}，歡迎來到訂餐趣！✨</h3>
            <font color='red'>${successMessage}</font>
            <nav class="navbar navbar-inverse" role="navigation">
                <div class="navbar-header">
                    <button type="button" id="nav-toggle" class="navbar-toggle" data-toggle="collapse" data-target="#main-nav">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <!--/.navbar-header-->
                <div id="main-nav" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
						<li class="nav-item"><a href="home"><h1>🏠首頁</h1></a></li>
<!-- 						<li><a href="member"><h3>👥會員</h3></a></li> -->
						<li class="nav-item"><a href="${orderinfo}"><h1>☎️訂單</h1></a></li>
						<li class="nav-item"><a href="blog"><h1>📚食記</h1></a></li>
						<li class="nav-item"><a href="res"><h1>🍽️餐廳</h1></a></li>
						<li class="nav-item"><a href="nutrition"><h1>🍄營養</h1></a></li>
						<li class="nav-item"><a href="couponIndex"><h1>🈹優惠</h1></a></li>
                    </ul>
                </div>
                <!--/.navbar-collapse-->
            </nav>
            <!--/.navbar-->
        </div>
        <!--/.container-->
    </div>
    <!--/.header-->


    <section>
<div class="heading" align="center"><img src="${pageContext.request.contextPath}/templatemo_507_victory/img/banner-bg1.jpg"></div>
    </section>

    <section class="cook-delecious">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-md-offset-1">
                    <div class="first-image">
<%--                         <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/cook_01.jpg" alt=""> --%>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="cook-content">
                        <h1>🍗🍕🍷</h1>
                        <div class="contact-content">
                            <H3><B>熱門預定</B></H3>
                        </div>
                        <div class="primary-white-button">
                            <a href="#" class="scroll-link" data-id="book-table"><B>Hot</B></a>
                        </div>
                    </div>  
                </div>
                <div class="col-md-3">
                    <div class="second-image">
<%--                         <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/cook_02.jpg" alt=""> --%>
                    </div>
                </div>
            </div>
        </div>
    </section>



    <section class="services">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <a href="order">
                        <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/hot1.png" alt="Breakfast">
                        <h4>意舍酒店(排名1️⃣)</h4>
                        </a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <a href="order">
                        <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/hot2.png" alt="Lunch">
                        <h4>missKOREA(排名2️⃣)</h4>
                        </a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <a href="order">
                        <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/hot3.png" alt="Dinner">
                        <h4>台南大飯店(排名3️⃣)</h4>
                        </a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="service-item">
                        <a href="order">
                        <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/hot4.png" alt="Desserts">
                        <h4>agnès b. CAFÉ(排名4️⃣)</h4>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <section class="breakfast-menu">
                <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading">
                        <div align="center"><img src="${pageContext.request.contextPath}/templatemo_507_victory/img/banner_res.png" alt=""><br><br><br>
	                    </div>
                    </div>
                </div>
            </div>
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



    <section class="our-blog">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="heading">
                        <div align="center"><img src="${pageContext.request.contextPath}/templatemo_507_victory/img/banner_blog.png" alt=""><br><br><br>
	                    </div>
                    </div>
                </div>
            </div>
            <div class="row">
<!--                 <div class="col-md-6"> -->
<!--                     <div class="blog-post"> -->
<%--                         <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/blog_post_01.jpg" alt=""> --%>
<!--                         <div class="date">26 Oct 2020</div> -->
<!--                         <div class="right-content"> -->
<!--                             <h4>Stumptown Tofu Schlitz</h4> -->
<!--                             <span>Branding / Admin</span> -->
<!--                             <p>Skateboard iceland twee tofu shaman crucifix vice before they sold out corn hole occupy drinking vinegar chambra meggings kale chips hexagon...</p> -->
<!--                             <div class="text-button"> -->
<!--                                 <a href="#">Continue Reading</a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
				<div class='col-md-6' id='somedivS_MainPick01'></div>
<!--                 <div class="col-md-6"> -->
<!--                     <div class="blog-post"> -->
<%--                         <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/blog_post_02.jpg" alt=""> --%>
<!--                         <div class="date">21 Oct 2020</div> -->
<!--                         <div class="right-content"> -->
<!--                             <h4>Succulents Hashtag Folk</h4> -->
<!--                             <span>Branding / Admin</span> -->
<!--                             <p>Skateboard iceland twee tofu shaman crucifix vice before they sold out corn hole occupy drinking vinegar chambra meggings kale chips hexagon...</p> -->
<!--                             <div class="text-button"> -->
<!--                                 <a href="#">Continue Reading</a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
				<div class='col-md-6' id='somedivS_MainPick02'></div>
<!--                 <div class="col-md-6"> -->
<!--                     <div class="blog-post"> -->
<%--                         <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/blog_post_03.jpg" alt=""> --%>
<!--                         <div class="date">11 Oct 2020</div> -->
<!--                         <div class="right-content"> -->
<!--                             <h4>Knaus Sriracha Pinterest</h4> -->
<!--                             <span>Dessert / Chef</span> -->
<!--                             <p>Skateboard iceland twee tofu shaman crucifix vice before they sold out corn hole occupy drinking vinegar chambra meggings kale chips hexagon...</p> -->
<!--                             <div class="text-button"> -->
<!--                                 <a href="#">Continue Reading</a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
				<div class='col-md-6' id='somedivS_MainPick03'></div>
<!--                 <div class="col-md-6"> -->
<!--                     <div class="blog-post"> -->
<%--                         <img src="${pageContext.request.contextPath}/templatemo_507_victory/img/blog_post_04.jpg" alt=""> --%>
<!--                         <div class="date">03 Oct 2020</div> -->
<!--                         <div class="right-content"> -->
<!--                             <h4>Crucifix Selvage Coat</h4> -->
<!--                             <span>Plate / Chef</span> -->
<!--                             <p>Skateboard iceland twee tofu shaman crucifix vice before they sold out corn hole occupy drinking vinegar chambra meggings kale chips hexagon...</p> -->
<!--                             <div class="text-button"> -->
<!--                                 <a href="#">Continue Reading</a> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
				<div class='col-md-6' id='somedivS_MainPick04'></div>
            </div>
        </div>
    </section>

<section class="featured-food">
        <div class="container">
            <div class="row">
                <div class="heading">
                    <div align="center"><img src="${pageContext.request.contextPath}/templatemo_507_victory/img/banner_dish.png" alt=""></div><br><br>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="food-item">
                        <h2>均衡飲食</h2>
                        <a href="/FinalProjectGroup2/nutrition"><img width='320' height='240' src='${pageContext.request.contextPath}/images/balance.jpg' ></a>
                        
                        <div class="text-content">
                            <h4>成人所需營養參考</h4>
                            <p>拒絕三高 遠離糖尿病 從飲食管理開始</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="food-item">
                        <h2>身強體壯</h2>
                        <a href="/FinalProjectGroup2/nutrition"><img width='320' height='240' src='${pageContext.request.contextPath}/images/fit.jpg' ></a>
                        
                        <div class="text-content">
                            <h4>健身不只靠運動</h4>
                            <p>飲食管理讓追求理想身材事半功倍</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="food-item">
                        <h2>身輕窈窕</h2>
                        <a href="/FinalProjectGroup2/nutrition"><img width='320' height='240' src='${pageContext.request.contextPath}/images/diet.jpg' ></a>
                        
                        <div class="text-content">
                            <h4>不需吃得少 只需吃得巧</h4>
                            <p>瘦身不必餓肚子 甩肉也能很輕鬆</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    
	<section class="our-blog">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="heading">
                        <div align="center"><img src="${pageContext.request.contextPath}/templatemo_507_victory/img/couponbanner.png" alt=""></div><br><br>
                    </div>
                </div>
            </div>
            <div id="carouselExampleCaptions" class="carousel slide"
			data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="3" aria-label="Slide 4"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="4" aria-label="Slide 5"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="5" aria-label="Slide 6"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="6" aria-label="Slide 7"></button>
				<button type="button" data-bs-target="#carouselExampleCaptions"
					data-bs-slide-to="7" aria-label="Slide 8"></button>
				
			</div>
         <div class="carousel-inner">
				<div class="carousel-item active" align="center">
				<a href="https://www.cathaybk.com.tw/cathaybk">
					<img
						src="${pageContext.request.contextPath}/templatemo_507_victory/img/ad1.png"
						class="d-block w-10" alt="...">
						</a>
					<div class="carousel-caption d-none d-md-block">
						<h1>國泰優惠APP會員獨享</h1>
						<p>預付訂位即享5% EZCASH回饋</p>
					</div>
				</div>
				<div class="carousel-item" align="center">
				<a href="https://www.visa.com.tw/">
					<img
						src="${pageContext.request.contextPath}/templatemo_507_victory/img/ad2.png"
						class="d-block w-10" alt="...">
						</a>
					<div class="carousel-caption d-none d-md-block">
						<h1>Visa無限卡精選米其林餐廳</h1>
						<p>預付訂位享 20% EZCASH回饋</p>
					</div>
				</div>
				<div class="carousel-item" align="center">
				<a href="https://www.visa.com.tw/">
					<img
						src="${pageContext.request.contextPath}/templatemo_507_victory/img/ad3.png"
						class="d-block w-10" alt="...">
						</a>
					<div class="carousel-caption d-none d-md-block">
						<h1>Visa 御璽卡精選五星下午茶</h1>
						<p>預付訂位享 15% EZCASH回饋</p>
					</div>
				</div>
				<div class="carousel-item" align="center">
				<a href="https://www.esunbank.com.tw/bank/personal">
					<img
						src="${pageContext.request.contextPath}/templatemo_507_victory/img/ad4.png"
						class="d-block w-10" alt="...">
						</a>
					<div class="carousel-caption d-none d-md-block">
						<h1>玉山Only卡 專屬優惠精采加倍</h1>
						<p>預付金額10%EZCASH回饋</p>
					</div>
				</div>
				<div class="carousel-item" align="center">
				<a href="https://www.post.gov.tw/post/internet/Visa/index.jsp?ID=1002">
					<img
						src="${pageContext.request.contextPath}/templatemo_507_victory/img/ad5.png"
						class="d-block w-10" alt="...">
						</a>
					<div class="carousel-caption d-none d-md-block">
						<h1>郵政Visa金融卡友專屬優惠</h1>
						<p>預付訂位享 10%現折</p>
					</div>
				</div>
				<div class="carousel-item" align="center">
				<a href="https://www.hncb.com.tw/">
					<img
						src="${pageContext.request.contextPath}/templatemo_507_victory/img/ad6.png"
						class="d-block w-10" alt="...">
						</a>
					<div class="carousel-caption d-none d-md-block">
						<h1>華南銀行美饌卡友優惠</h1>
						<p>華南銀行美饌卡友 獨享10%現折優惠</p>
					</div>
				</div>
				<div class="carousel-item" align="center">
				<a href="https://www.skbank.com.tw/">
					<img
						src="${pageContext.request.contextPath}/templatemo_507_victory/img/ad7.png"
						class="d-block w-10" alt="...">
						</a>
					<div class="carousel-caption d-none d-md-block">
						<h1>新光銀行指定卡友優惠</h1>
						<p>預付享用餐後回饋20%EZCASH，單筆回饋上限200 EZCASH.</p>
					</div>
				</div>
				<div class="carousel-item" align="center">
				<a href="https://www.firstbank.com.tw/sites/fcb/personalhome">
					<img
						src="${pageContext.request.contextPath}/templatemo_507_victory/img/ad8.png"
						class="d-block w-10" alt="...">
						</a>
					<div class="carousel-caption d-none d-md-block">
						<h1>一銀世界卡好食讚</h1>
						<p>預付訂位享 10%現折 + 5% EZCASH 回饋</p>
					</div>
				</div>
				
			</div>
              <button class="carousel-control-prev" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>
               
             
        </div>
    </section>

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
   <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
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
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script>
		var currentUser = "${CurrentUser}";
		var customerName = "${CurrentUser.customerName}";

		window.onload = function(){

			if("${loginSuccess}" == "登入成功!"){
			// 	alert("${name}" + "," + "歡迎回來!");
			Swal.fire("${name}" + "," + "歡迎回來!");
		}


		// 有登入:隱藏登入標籤 & 沒登入:隱藏登出標籤，秀登入標籤
		var logoutHref = document.getElementById("logoutHref");
		var loginHref = document.getElementById("loginHref");
		var myAccount = document.getElementById("myAccount");

		if (!customerName) {
			logoutHref.hidden = true;
			myAccount.hidden = true;
			loginHref.style.visibility = "visible";
		}
		if (customerName) {
			logoutHref.style.visibility = "visible";
			myAccount.style.visibility = "visible";
			loginHref.hidden = true;
		}
}
</script>
</body>
</html>