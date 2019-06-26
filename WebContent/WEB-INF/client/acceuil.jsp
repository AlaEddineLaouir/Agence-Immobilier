<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% if(session.getAttribute("client")!=null){request.getRequestDispatcher("/WEB-INF/client/client.jsp").forward(request, response);}%>
<!DOCTYPE>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>MonBIEN || Acceuil</title>
        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="icon" type="image/ico" href="img/MonBIEN.ico"/>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round">
        <link rel="stylesheet"  type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet"  type="text/css" href="css/owl.carousel.css" />
        <link rel="stylesheet"  type="text/css" href="css/owl.theme.default.css" />
        <link rel="stylesheet"  type="text/css" href="css/magnific-popup.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
        <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="css/util.css">
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>

    <body>
        <header id="home">
            <div class="bg-img" style="background-image: url('./img/1.jpg');">
                <div class="overlay"></div>
            </div>
            <!-- navigation bar -->
            <nav id="nav" class="navbar nav-transparent">
                <div class="container">
                    <div class="navbar-header">
                        <div class="navbar-brand">
                            <a href="index.html">
                                <img class="logo" src="img/logo.png" alt="logo">
                                <img class="logo-alt" src="img/logo-alt.png" alt="logo">
                            </a>
                        </div>
                        <div class="nav-collapse">
						<span></span>
                        </div>
                    </div>
                    <ul class="main-nav nav navbar-nav navbar-right">
                        <li><a href="#home">Acceuil</a></li>
                        <li><a href="#about">About</a></li>
                        <li><a href="#portfolio">Portfolio</a></li>
                        <li><a href="#service">Services</a></li>
                        <li><a href="#pricing">Prices</a></li>
                        <li><a href="#team">Team</a></li>
                        <li class="has-dropdown"><a href="#blog">Blog</a>
                            <ul class="dropdown">
                                <li><a href="blog-single.html">blog post</a></li>
                            </ul>
                        </li>
                        <li><a href="#contact">Contact</a></li>
                    </ul>
                </div>
            </nav>
            <!-- /navigation bar -->
            <!-- home wrapper -->
            <div class="home-wrapper">
                <div class="container">
                    <div class="row">
                        <div class="col-md-10 col-md-offset-1">
                            <div class="home-content">
                                <h1 class="white-text">Bienvenue a MonBIEN</h1>
                                <p class="white-text">
                                    MonBIEN est une agence de location des biens online, qui offre des différents services avec des bonnes prix
                                </p>
                                <button class="white-btn connecter">Se connecter</button>
                                <button class="main-btn inscrire">S'inscrire</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /home wrapper -->
        </header>
        <!-- /Header -->

	<!-- About -->
	<div id="about" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">Welcome to Website</h2>
				</div>
				<!-- /Section header -->

				<!-- about -->
				<div class="col-md-4">
					<div class="about">
						<i class="fa fa-cogs"></i>
						<h3>Fully Customizible</h3>
						<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero sit amet.</p>
						<a href="#">Read more</a>
					</div>
				</div>
				<!-- /about -->

				<!-- about -->
				<div class="col-md-4">
					<div class="about">
						<i class="fa fa-magic"></i>
						<h3>Awesome Features</h3>
						<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero sit amet.</p>
						<a href="#">Read more</a>
					</div>
				</div>
				<!-- /about -->

				<!-- about -->
				<div class="col-md-4">
					<div class="about">
						<i class="fa fa-mobile"></i>
						<h3>Fully Responsive</h3>
						<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero sit amet.</p>
						<a href="#">Read more</a>
					</div>
				</div>
				<!-- /about -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /About -->


	<!-- Portfolio -->
	<div id="portfolio" class="section md-padding bg-grey">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">Featured Works</h2>
				</div>
				<!-- /Section header -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/work1.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#"><i class="fa fa-external-link"></i></a>
							<a class="lightbox" href="./img/work1.jpg"><i class="fa fa-search"></i></a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/work2.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#"><i class="fa fa-external-link"></i></a>
							<a class="lightbox" href="./img/work2.jpg"><i class="fa fa-search"></i></a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/work3.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#"><i class="fa fa-external-link"></i></a>
							<a class="lightbox" href="./img/work3.jpg"><i class="fa fa-search"></i></a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/work4.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#"><i class="fa fa-external-link"></i></a>
							<a class="lightbox" href="./img/work4.jpg"><i class="fa fa-search"></i></a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/work5.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#"><i class="fa fa-external-link"></i></a>
							<a class="lightbox" href="./img/work5.jpg"><i class="fa fa-search"></i></a>
						</div>
					</div>
				</div>
				<!-- /Work -->

				<!-- Work -->
				<div class="col-md-4 col-xs-6 work">
					<img class="img-responsive" src="./img/work6.jpg" alt="">
					<div class="overlay"></div>
					<div class="work-content">
						<span>Category</span>
						<h3>Lorem ipsum dolor</h3>
						<div class="work-link">
							<a href="#"><i class="fa fa-external-link"></i></a>
							<a class="lightbox" href="./img/work6.jpg"><i class="fa fa-search"></i></a>
						</div>
					</div>
				</div>
				<!-- /Work -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Portfolio -->

	<!-- Service -->
	<div id="service" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">What we offer</h2>
				</div>
				<!-- /Section header -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-diamond"></i>
						<h3>App Development</h3>
						<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero.</p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-rocket"></i>
						<h3>Graphic Design</h3>
						<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero.</p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-cogs"></i>
						<h3>Creative Idea</h3>
						<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero.</p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-diamond"></i>
						<h3>Marketing</h3>
						<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero.</p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-pencil"></i>
						<h3>Awesome Support</h3>
						<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero.</p>
					</div>
				</div>
				<!-- /service -->

				<!-- service -->
				<div class="col-md-4 col-sm-6">
					<div class="service">
						<i class="fa fa-flask"></i>
						<h3>Brand Design</h3>
						<p>Maecenas tempus tellus eget condimentum rhoncus sem quam semper libero.</p>
					</div>
				</div>
				<!-- /service -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Service -->


	<!-- Why Choose Us -->
	<div id="features" class="section md-padding bg-grey">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- why choose us content -->
				<div class="col-md-6">
					<div class="section-header">
						<h2 class="title">Why Choose Us</h2>
					</div>
					<p>Molestie at elementum eu facilisis sed odio. Scelerisque in dictum non consectetur a erat. Aliquam id diam maecenas ultricies mi eget mauris. Ultrices sagittis orci a scelerisque purus.</p>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Quis varius quam quisque id diam vel quam elementum.</p>
					</div>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Mauris augue neque gravida in fermentum.</p>
					</div>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Orci phasellus egestas tellus rutrum.</p>
					</div>
					<div class="feature">
						<i class="fa fa-check"></i>
						<p>Nec feugiat nisl pretium fusce id velit ut tortor pretium.</p>
					</div>
				</div>
				<!-- /why choose us content -->

				<!-- About slider -->
				<div class="col-md-6">
					<div id="about-slider" class="owl-carousel owl-theme">
						<img class="img-responsive" src="./img/about1.jpg" alt="">
						<img class="img-responsive" src="./img/about2.jpg" alt="">
						<img class="img-responsive" src="./img/about1.jpg" alt="">
						<img class="img-responsive" src="./img/about2.jpg" alt="">
					</div>
				</div>
				<!-- /About slider -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Why Choose Us -->


	<!-- Numbers -->
	<div id="numbers" class="section sm-padding">

		<!-- Background Image -->
		<div class="bg-img" style="background-image: url('./img/background2.jpg');">
			<div class="overlay"></div>
		</div>
		<!-- /Background Image -->

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- number -->
				<div class="col-sm-3 col-xs-6">
					<div class="number">
						<i class="fa fa-users"></i>
						<h3 class="white-text"><span class="counter">451</span></h3>
						<span class="white-text">Happy clients</span>
					</div>
				</div>
				<!-- /number -->

				<!-- number -->
				<div class="col-sm-3 col-xs-6">
					<div class="number">
						<i class="fa fa-trophy"></i>
						<h3 class="white-text"><span class="counter">12</span></h3>
						<span class="white-text">Awards won</span>
					</div>
				</div>
				<!-- /number -->

				<!-- number -->
				<div class="col-sm-3 col-xs-6">
					<div class="number">
						<i class="fa fa-coffee"></i>
						<h3 class="white-text"><span class="counter">154</span>K</h3>
						<span class="white-text">Cups of Coffee</span>
					</div>
				</div>
				<!-- /number -->

				<!-- number -->
				<div class="col-sm-3 col-xs-6">
					<div class="number">
						<i class="fa fa-file"></i>
						<h3 class="white-text"><span class="counter">45</span></h3>
						<span class="white-text">Projects completed</span>
					</div>
				</div>
				<!-- /number -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Numbers -->

	<!-- Pricing -->
	<div id="pricing" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">Pricing Table</h2>
				</div>
				<!-- /Section header -->

				<!-- pricing -->
				<div class="col-sm-4">
					<div class="pricing">
						<div class="price-head">
							<span class="price-title">Basic plan</span>
							<div class="price">
								<h3>$9<span class="duration">/ month</span></h3>
							</div>
						</div>
						<ul class="price-content">
							<li>
								<p>1GB Disk Space</p>
							</li>
							<li>
								<p>100 Email Account</p>
							</li>
							<li>
								<p>24/24 Support</p>
							</li>
						</ul>
						<div class="price-btn">
							<button class="outline-btn">Purchase now</button>
						</div>
					</div>
				</div>
				<!-- /pricing -->

				<!-- pricing -->
				<div class="col-sm-4">
					<div class="pricing">
						<div class="price-head">
							<span class="price-title">Silver plan</span>
							<div class="price">
								<h3>$19<span class="duration">/ month</span></h3>
							</div>
						</div>
						<ul class="price-content">
							<li>
								<p>1GB Disk Space</p>
							</li>
							<li>
								<p>100 Email Account</p>
							</li>
							<li>
								<p>24/24 Support</p>
							</li>
						</ul>
						<div class="price-btn">
							<button class="outline-btn">Purchase now</button>
						</div>
					</div>
				</div>
				<!-- /pricing -->

				<!-- pricing -->
				<div class="col-sm-4">
					<div class="pricing">
						<div class="price-head">
							<span class="price-title">Gold plan</span>
							<div class="price">
								<h3>$39<span class="duration">/ month</span></h3>
							</div>
						</div>
						<ul class="price-content">
							<li>
								<p>1GB Disk Space</p>
							</li>
							<li>
								<p>100 Email Account</p>
							</li>
							<li>
								<p>24/24 Support</p>
							</li>
						</ul>
						<div class="price-btn">
							<button class="outline-btn">Purchase now</button>
						</div>
					</div>
				</div>
				<!-- /pricing -->

			</div>
			<!-- Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Pricing -->


	<!-- Testimonial -->
	<div id="testimonial" class="section md-padding">

		<!-- Background Image -->
		<div class="bg-img" style="background-image: url('./img/background3.jpg');">
			<div class="overlay"></div>
		</div>
		<!-- /Background Image -->

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Testimonial slider -->
				<div class="col-md-10 col-md-offset-1">
					<div id="testimonial-slider" class="owl-carousel owl-theme">

						<!-- testimonial -->
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="./img/team1.jpg" alt="">
								<h3 class="white-text">HIRECHE Yasser</h3>
								<span>Web Designer</span>
							</div>
							<p class="white-text">Molestie at elementum eu facilisis sed odio. Scelerisque in dictum non consectetur a erat. Aliquam id diam maecenas ultricies mi eget mauris.</p>
						</div>
						<!-- /testimonial -->

						<!-- testimonial -->
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="./img/team2.jpg" alt="">
								<h3 class="white-text">LAOUIR Ala Eddine</h3>
								<span>Web Designer</span>
							</div>
							<p class="white-text">Molestie at elementum eu facilisis sed odio. Scelerisque in dictum non consectetur a erat. Aliquam id diam maecenas ultricies mi eget mauris.</p>
						</div>
						<!-- /testimonial -->
                        
                        <!-- testimonial -->
						<div class="testimonial">
							<div class="testimonial-meta">
								<img src="./img/team3.jpg" alt="">
								<h3 class="white-text">Djerroud Mohamed Saleh</h3>
								<span>Web Designer</span>
							</div>
							<p class="white-text">Molestie at elementum eu facilisis sed odio. Scelerisque in dictum non consectetur a erat. Aliquam id diam maecenas ultricies mi eget mauris.</p>
						</div>
						<!-- /testimonial -->

					</div>
				</div>
				<!-- /Testimonial slider -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Testimonial -->

	<!-- Team -->
	<div id="team" class="section md-padding">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">Our Team</h2>
				</div>
				<!-- /Section header -->

				<!-- team -->
				<div class="col-sm-4">
					<div class="team">
						<div class="team-img">
							<img class="img-responsive" src="./img/team1.jpg" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>John Doe</h3>
							<span>Web Designer</span>
						</div>
					</div>
				</div>
				<!-- /team -->

				<!-- team -->
				<div class="col-sm-4">
					<div class="team">
						<div class="team-img">
							<img class="img-responsive" src="./img/team2.jpg" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>John Doe</h3>
							<span>Web Designer</span>
						</div>
					</div>
				</div>
				<!-- /team -->

				<!-- team -->
				<div class="col-sm-4">
					<div class="team">
						<div class="team-img">
							<img class="img-responsive" src="./img/team3.jpg" alt="">
							<div class="overlay">
								<div class="team-social">
									<a href="#"><i class="fa fa-facebook"></i></a>
									<a href="#"><i class="fa fa-google-plus"></i></a>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</div>
							</div>
						</div>
						<div class="team-content">
							<h3>John Doe</h3>
							<span>Web Designer</span>
						</div>
					</div>
				</div>
				<!-- /team -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Team -->

	<!-- Blog -->
	<div id="blog" class="section md-padding bg-grey">

		<!-- Container -->
		<div class="container">

			<!-- Row -->
			<div class="row">

				<!-- Section header -->
				<div class="section-header text-center">
					<h2 class="title">Recents news</h2>
				</div>
				<!-- /Section header -->

				<!-- blog -->
				<div class="col-md-4">
					<div class="blog">
						<div class="blog-img">
							<img class="img-responsive" src="./img/blog1.jpg" alt="">
						</div>
						<div class="blog-content">
							<ul class="blog-meta">
								<li><i class="fa fa-user"></i>John doe</li>
								<li><i class="fa fa-clock-o"></i>18 Oct</li>
								<li><i class="fa fa-comments"></i>57</li>
							</ul>
							<h3>Molestie at elementum eu facilisis sed odio</h3>
							<p>Nec feugiat nisl pretium fusce id velit ut tortor pretium. Nisl purus in mollis nunc sed. Nunc non blandit massa enim nec.</p>
							<a href="blog-single.html">Read more</a>
						</div>
					</div>
				</div>
				<!-- /blog -->

				<!-- blog -->
				<div class="col-md-4">
					<div class="blog">
						<div class="blog-img">
							<img class="img-responsive" src="./img/blog2.jpg" alt="">
						</div>
						<div class="blog-content">
							<ul class="blog-meta">
								<li><i class="fa fa-user"></i>John doe</li>
								<li><i class="fa fa-clock-o"></i>18 Oct</li>
								<li><i class="fa fa-comments"></i>57</li>
							</ul>
							<h3>Molestie at elementum eu facilisis sed odio</h3>
							<p>Nec feugiat nisl pretium fusce id velit ut tortor pretium. Nisl purus in mollis nunc sed. Nunc non blandit massa enim nec.</p>
							<a href="blog-single.html">Read more</a>
						</div>
					</div>
				</div>
				<!-- /blog -->

				<!-- blog -->
				<div class="col-md-4">
					<div class="blog">
						<div class="blog-img">
							<img class="img-responsive"  src="./img/blog3.jpg" alt="">
						</div>
						<div class="blog-content">
							<ul class="blog-meta">
								<li><i class="fa fa-user"></i>John doe</li>
								<li><i class="fa fa-clock-o"></i>18 Oct</li>
								<li><i class="fa fa-comments"></i>57</li>
							</ul>
							<h3>Molestie at elementum eu facilisis sed odio</h3>
							<p>Nec feugiat nisl pretium fusce id velit ut tortor pretium. Nisl purus in mollis nunc sed. Nunc non blandit massa enim nec.</p>
							<a href="blog-single.html">Read more</a>
						</div>
					</div>
				</div>
				<!-- /blog -->

			</div>
			<!-- /Row -->

		</div>
		<!-- /Container -->

	</div>
	<!-- /Blog -->

	<!-- CONTACT -->
	<div id="contact" class="section md-padding">
		<div class="container">
			<div class="row">
				<div class="section-header text-center">
					<h2 class="title">Nous contacter</h2>
				</div>
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-phone"></i>
						<h3>Téléphone</h3>
						<p>+213(0)31-000-000</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-envelope"></i>
						<h3>Email</h3>
						<p>support@monbien.com</p>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="contact">
						<i class="fa fa-map-marker"></i>
						<h3>Adresse</h3>
						<p>EL-KHROUB CONSTANTINE</p>
					</div>
				</div>
				<div class="col-md-8 col-md-offset-2">
					<form class="contact-form">
						<input type="text" class="input" placeholder="Nom">
						<input type="email" class="input" placeholder="Email">
						<input type="text" class="input" placeholder="Sujet">
						<textarea class="input" placeholder="Message"></textarea>
						<button class="main-btn">Envoyer</button>
					</form>
				</div>
			</div>
		</div>
	</div>


        <!-- FOOTER -->
        <footer id="footer" class="sm-padding bg-dark">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="footer-logo">
                            <a href="index.html"><img src="img/logo-alt.png" alt="logo"></a>
                        </div>
                        <ul class="footer-follow">
                            <li><a href="https://facebook.com/MonBIEN"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="https://twitter.com/MonBIEN"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://plus.google.com/MonBIEN"><i class="fa fa-google-plus"></i></a></li>
                            <li><a href="https://instagram.com/MonBIEN"><i class="fa fa-instagram"></i></a></li>
                            <li><a href="https://linkedin.com/MonBIEN"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="https://youtube.com/MonBIEN"><i class="fa fa-youtube"></i></a></li>
                        </ul>
                        <div class="footer-copyright">
                            <p>Copyright © 2018. Tous les droits sont réservés. <a href="">@MonBIEN</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

        <!-- BACK TO TOP -->
        <div id="back-to-top"></div>
        
        <!-- SE CONNETER -->
        <div class="limiter login-form" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-remove"></i>
                    <form id="login" class="login100-form validate-form" method="POST" action="Client">
                        <span class="login100-form-title p-b-10"><img src="img/MonBIEN.png" style="height: 60px;"></span>
                        <span class="login100-form-title p-b-20">MonBIEN</span>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer le nom d'utilisateur">
                            <input class="input100" type="text" id="userL" name="utilisateur">
                            <span class="focus-input100" data-placeholder="Nom d'utilisateur"></span>
                        </div>
                        <p class="userL erreur"></p>
                        <div class="wrap-input100 validate-input" data-validate="Entrer le mot de passe">
                            <span class="btn-show-pass"><i class="zmdi zmdi-eye"></i></span>
                            <input class="input100" type="password" name="passe">
                            <span class="focus-input100" data-placeholder="Mot de passe"></span>
                        </div>
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" id="connecter" name="redirect" value="connecter">Se connecter</button>
                            </div>
                        </div>
                    </form>
                    <div class="text-center">
                        <span class="txt1">Vous n'avez pas un compte?</span>
                        <a class="txt2 register-link" href="#">S'inscrire</a>
                    </div>
                </div>
            </div>
        </div>
		
        <!-- S'INSCRIRE -->
        <div class="limiter register-form" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-remove"></i>
                    <label for="file">
						<img id="img-client" src="images/profile.jpg">
					</label>
                    <form action="Image" method="post" id="form-image" enctype="multipart/form-data">
						<input name="file" type="file" id="file">
					</form>
                    <form id="register" class="login100-form validate-form" method="POST" action="Client">
                        <p style="margin-bottom: 15px; color: #6195FF;">entrer vos informations personnelles</p>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre nom">
                            <input class="input100" type="text" name="nom">
                            <span class="focus-input100" data-placeholder="Nom"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre prenom">
                            <input class="input100" type="text" name="prenom">
                            <span class="focus-input100" data-placeholder="Prenom"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre date de naissance">
                            <input class="input100" type="text" name="naissance">
                            <span class="focus-input100" data-placeholder="Date de naissance"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre adresse">
                            <input class="input100" type="text" name="adresse">
                            <span class="focus-input100" data-placeholder="adresse"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre email forme 'a@b.c'">
                            <input class="input100" type="email" id="email" name="email">
                            <span class="focus-input100" data-placeholder="email"></span>
                        </div>
                        <p class="email erreur"></p>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre numero de telephone">
                            <input class="input100" type="text" id="telephone" name="telephone">
                            <span class="focus-input100" data-placeholder="Téléphone"></span>
                        </div>
                        <p class="telephone erreur"></p>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre numéro d'identité">
                            <input class="input100" type="text" id="identite" name="identite">
                            <span class="focus-input100" data-placeholder="Numéro d'identité"></span>
                        </div>
                        <p class="identite erreur"></p>
                        <p style="margin-bottom: 15px; color: #6195FF;">entrer vos informations du compte</p>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer le nom d'utilisateur">
                            <input class="input100" type="text" id="userR" name="utilisateur">
                            <span class="focus-input100" data-placeholder="Nom d'utilisateur"></span>
                        </div>
                        <p class="userR erreur"></p>
                        <div class="wrap-input100 validate-input" data-validate="Entrer le mot de passe">
                            <span class="btn-show-pass"><i class="zmdi zmdi-eye"></i></span>
                            <input class="input100" type="password" name="passe">
                            <span class="focus-input100" data-placeholder="Mot de passe"></span>
                        </div>
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" id="inscrire" name="redirect" value="inscrire">S'inscrire</button>
                            </div>
                        </div>
                    </form>
                    <div class="text-center">
                        <span class="txt1">Vous avez déjà un compte?</span>
                        <a class="txt2 login-link" href="#">Se connecter</a>
                    </div>
                </div>
            </div>
        </div>
        
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/owl.carousel.min.js"></script>
        <script type="text/javascript" src="js/jquery.magnific-popup.js"></script>
    	<script type="text/javascript" src="js/main.js"></script>
        
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <script src="js/login.js"></script>
        <script src="script.js"></script>
        
		<script type="text/javascript">
			$('#login #userL').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=login&utilisateur='+$('#login #userL')[0].value,
		        	success: function (data) {
		        		$('#login .userL')[0].innerHTML=data;
		        		$('#login #connecter').attr('disabled','disabled');
		        	},
		        	error: function (data){
		        		$('#login .userL')[0].innerHTML="";
		        		$('#login #connecter').removeAttr('disabled');
		        	},
		    	});
			});
			
			$('#register #userR').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=register&utilisateur='+$('#register #userR')[0].value,
		        	success: function (data) {
		        		$('#register .userR')[0].innerHTML=data;
		        		$('#register #inscrire').attr('disabled','disabled');
		        	},
		        	error: function (data){
		        		$('#register .userR')[0].innerHTML="";
		        		$('#register #inscrire').removeAttr('disabled');
		        	},
		    	});
			});
			
			$('#register #email').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=email&email='+$('#register #email')[0].value,
		        	success: function (data) {
		        		$('#register .email')[0].innerHTML=data;
		        		$('#register #inscrire').attr('disabled','disabled');
		        	},
		        	error: function (data){
		        		$('#register .email')[0].innerHTML="";
		        		$('#register #inscrire').removeAttr('disabled');
		        	},
		    	});
			});
			
			$('#register #telephone').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=telephone&telephone='+$('#register #telephone')[0].value,
			    	success: function (data) {
			    		$('#register .telephone')[0].innerHTML=data;
			    		$('#register #inscrire').attr('disabled','disabled');
		        	},
		        	error: function (data){
		        		$('#register .telephone')[0].innerHTML="";
		        		$('#register #inscrire').removeAttr('disabled');
		        	},
		    	});
			});
			
			$('#register #identite').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=identite&identite='+$('#register #identite')[0].value,
			    	success: function (data) {
		        		$('#register .identite')[0].innerHTML=data;
		        		$('#register #inscrire').attr('disabled','disabled');
		        	},
		        	error: function (data){
		        		$('#register .identite')[0].innerHTML="";
		        		$('#register #inscrire').removeAttr('disabled');
		        	},
		    	});
			});
		</script>
        
		<script type="text/javascript">
       		$('.connecter').click(function (){
       			$('.login-form').show();
       		});
       		
       		$('.inscrire').click(function (){
       			$('.register-form').show();
        	});
        
	        $("#file").change(function(){
	    		if(this.files[0]) {
	    			var image = new FileReader();            
	    			image.onload = function (e) {
	    					$('#img-client').attr('src', e.target.result);
	    			}
	    			image.readAsDataURL(this.files[0]);
	    		}
	    		else{
	    			$('#img-client').attr('src', 'images/profile.jpg');
	    		}
	    	});
        
	        $('#inscrire').click(
	       	    function (e){
	       	        e.preventDefault();
	       	        $.ajax({
	   					type: $('#register').attr('method'),
	   	            	url: $('#register').attr('action'),
	   	            	data: $('#register').serialize()+'&redirect=inscrire',	            	
	   		        	success: function (data) {
						var files = $('#form-image').get(0).file.files;
						var formData = new FormData();
	   		        	    
						for (var i = 0; i < files.length; i++) {
							formData.append(files[i].name, $('#form-image').get(0).file.files[i]);
						}	    	
						$.ajax({
							url: 'Upload?upload=profile',
							data: formData,
							cache: false,
							contentType: false,
							processData: false,
							type: 'POST',
							success: function(data){
								window.location="";
							}
						});
					},
				});
			});
		</script>
    </body>
</html>