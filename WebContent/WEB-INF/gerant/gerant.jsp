<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="modele.Gerant"%>
<%Gerant G = (Gerant)session.getAttribute("gerant");%>

<!DOCTYPE>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>MonBIEN || Espace gerant</title>
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
        <link rel="stylesheet" type="text/css" href="client.css">
        <link rel="stylesheet" type="text/css" href="table.css">
    </head>

    <body>
    	<header id="home">
            <div class="bg-img">
                <div class="overlay"></div>
            </div>
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
                        <li class="has-dropdown"><a href="#acceuil"><% out.print(G.getNom()+" "+G.getPrenom()); %></a>
                            <ul class="dropdown">
                                <li id="profile"><a>Mon profile</a></li>
                                <li id="gestionAgent"><a>Gestion des agents</a></li>
                                <li><a href="Gerant?redirect=deconnecter">Se déconnecter</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
	
		<div id="acceuil" class="section md-padding"></div>
		
		<div class="gestionAgent section md-padding" style="display: none;">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2 class="title">Liste des agents</h2>
					</div>
					<button class="main-btn" id="ajouterAgent">Ajouter agent</button>
					<div class="agents">
						<div class="liste"></div>
					</div>
				</div>
			</div>
		</div>
                
        <div class="profile limiter" style="display: none;">
            <div class="container-login100"></div>
        </div>
        
        <div class="limiter ajouterAgent" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-remove"></i>
                    <form class="login100-form validate-form register" method="POST" action="Gerant">
                        <span class="login100-form-title p-b-10"><img src="img/MonBIEN.png" style="height: 60px;"></span>
                        <span class="login100-form-title p-b-20">MonBIEN</span>
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
                                <button class="login100-form-btn btn-ajouterAgent" name="redirect" value="ajouterAgent">Ajouter agent</button>
                            </div>
                        </div>
                    </form>
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
			$('#gestionAgent').click(function (e) {
				$('.section').hide().removeAttr('id','acceuil');
			    $('.gestionAgent').show().attr('id','acceuil');
				$.ajax({
					type: 'POST',
			    	url: 'Gerant',
			    	data: 'redirect=agents',
		        	success: function (data) {
		        		$('.agents .liste').remove();
		        		$('.agents').append("<div class=\"liste\"></div>");
		        		$('.agents .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.agents .liste').remove();
		        		$('.agents').append("<div class=\"liste\"><h2>Pas d'agents</h2></div>");
		        	},
		    	});
			});
			
			$('#ajouterAgent').click(function (e) {
				$('.ajouterAgent').show();
			});
			
			$('.btn-ajouterAgent').click(function (e) {
				e.preventDefault();
				$('.limiter').hide();
				$.ajax({
					type: $('.register').attr('method'),
	            	url: $('.register').attr('action'),
	            	data: $('.register').serialize()+'&redirect=ajouterAgent',	            	
		        	success: function (data) {
		        		$('.agents .liste').remove();
		        		$('.agents').append("<div class=\"liste\"></div>");
		        		$('.agents .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.agents .liste').remove();
		        		$('.agents').append("<div class=\"liste\"><h2>Pas d'agents</h2></div>");
		        	},
		    	});
			});
		</script>
		
		<script type="text/javascript">
			$('.register #userR').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
			    	data: 'redirect=userR&utilisateur='+$('.register #userR')[0].value,
			    	success: function (data) {
			    		$('.register .userR')[0].innerHTML=data;
			    	},
			    	error: function (data){
			    		$('.register .userR')[0].innerHTML="";
			    	},
				});
			});
			$('.register #email').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
			    	data: 'redirect=email&email='+$('.register #email')[0].value,
			    	success: function (data) {
			    		$('.register .email')[0].innerHTML=data;
			    	},
			    	error: function (data){
			    		$('.register .email')[0].innerHTML="";
			    	},
				});
			});
			$('.register #telephone').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
			    	data: 'redirect=telephone&telephone='+$('.register #telephone')[0].value,
			    	success: function (data) {
			    		$('.register .telephone')[0].innerHTML=data;
			    	},
			    	error: function (data){
			    		$('.register .telephone')[0].innerHTML="";
			    	},
				});
			});
			$('.register #identite').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
			    	data: 'redirect=identite&identite='+$('.register #identite')[0].value,
			    	success: function (data) {
			    		$('.register .identite')[0].innerHTML=data;
			    	},
			    	error: function (data){
			    		$('.register .identite')[0].innerHTML="";
			    	},
				});
			});
		</script>

		<script type="text/javascript">
			$('#profile').click(function (e) {
				e.preventDefault();
				$('.profile').show();
				$.ajax({
					type: $('.form-profile').attr('method'),
					url: $('.form-profile').attr('action'),
					data: $('.form-profile').serialize()+'&redirect=profile',
					success: function (data) {
		        		$('.profile .container-login100').remove();
		        		$('.profile').append("<div class=\"container-login100\"></div>");
		        		$('.profile .container-login100').append(data);
		        	},
		        	error: function (data){
		        		$('.profile .container-login100').remove();
		        		$('.profile').append("<div class=\"container-login100\"></div>");
		        	},
		    	});
			});
		</script>
	</body>
</html>