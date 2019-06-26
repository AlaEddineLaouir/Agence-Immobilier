<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>MonBIEN || Connexion</title>
        <link rel="icon" type="image/ico" href="img/MonBIEN.ico"/>
        <link rel="stylesheet" type="text/css" href="style.css">

        <link rel="stylesheet" type="text/css" href="css/main.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round">
        <link rel="stylesheet"  type="text/css" href="css/bootstrap.min.css" />
        <link rel="stylesheet"  type="text/css" href="css/owl.carousel.css" />
        <link rel="stylesheet"  type="text/css" href="css/owl.theme.default.css" />
        <link rel="stylesheet"  type="text/css" href="css/magnific-popup.css" />
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
        <link rel="stylesheet" type="text/css" href="css/util.css">
    </head>

    <body>
        <!-- Login form -->
        <div class="limiter login-form">
            <div class="container-login100">
                <div class="wrap-login100">
                    <form class="login100-form validate-form login" method="POST" action="Gerant">
                         <span class="login100-form-title p-b-10"><img src="img/MonBIEN.png" style="height: 60px;"></span>
                        <span class="login100-form-title p-b-20">MonBIEN</span>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer le nom d'utilisateur">
                            <input class="input100" type="text" id="utilisateur" name="utilisateur">
                            <span class="focus-input100" data-placeholder="Nom d'utilisateur"></span>
                        </div>
                        <p class="utilisateur erreur"></p>
                        <div class="wrap-input100 validate-input" data-validate="Entrer le mot de passe">
                            <span class="btn-show-pass"><i class="zmdi zmdi-eye"></i></span>
                            <input class="input100" type="password" name="passe">
                            <span class="focus-input100" data-placeholder="Mot de passe"></span>
                        </div>
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" name="redirect" value="login">Se connecter</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
		<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="vendor/select2/select2.min.js"></script>
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <script src="js/login.js"></script>
        
        <script type="text/javascript">
			var utilisateur = $('.login #utilisateur');
			utilisateur.focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Gerant',
			    	data: 'redirect=utilisateur&utilisateur='+utilisateur[0].value,
		        	success: function (data) {
		        		$('.login .utilisateur')[0].innerHTML=data;
		        	},
		        	error: function (data){
		        		$('.login .utilisateur')[0].innerHTML="";
		        	},
		    	});
			});
		</script>
    </body>
</html>