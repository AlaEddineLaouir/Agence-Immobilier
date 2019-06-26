<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="controle.Upload"%>
<%@page import="modele.Client"%>
<%Client C = (Client)session.getAttribute("client");%>

<!DOCTYPE>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>MonBIEN || Espace client</title>
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
        
		<link rel="stylesheet" href="jquery-ui.min.css">
		<link rel="stylesheet" href="range.css">
        
        <link rel="stylesheet" href="material-cards.css">
    	<link rel="stylesheet" href="card.css">  
        <link rel="stylesheet" href="resultat.css">
        
    </head>

    <body>
    	
    	<!-- BARRE MENU -->
        <header class="home" id="home">
            <div class="bg-img">
                <div class="overlay"></div>
            </div>
            <!-- navigation bar -->
            <nav id="nav" class="navbar nav-transparent">
                <div class="container">
                    <div class="navbar-header">
                        <div class="navbar-brand">
                            <a href="">
                                <img class="logo" src="img/logo.png" alt="logo">
                                <img class="logo-alt" src="img/logo-alt.png" alt="logo">
                            </a>
                        </div>
                        <div class="nav-collapse">
						<span></span>
                        </div>
                    </div>
                    
                    <ul class="main-nav nav navbar-nav navbar-right">
                    	<li id="a-RDV" class="active"><a>Mes Rendez-vous</a></li>
                       	<li id="a-locataire"><a>Espace locataire</a></li>
                       	<li id="a-proprietaire"><a>Espace propriétaire</a></li>
                    	
                        <li class="has-dropdown">
                        	<a href="#acceuil"><% out.print(C.getNom()+" "+C.getPrenom()); %>
                        		<img id="img-profile" src="<%out.print("images/client/"+C.getUtilisateur()+"/profile.jpg");%>">
                        	</a>
                            <ul class="dropdown">
                                <li id="a-profile"><a>Mon profile</a></li>
                                <li id="a-deconnecter"><a>Se déconnecter</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
		
		<!-- PROFILE -->
        <div class="limiter profile" style="display: none;">
			<div class="container-login100"></div>
		</div>
		
		<!-- RECHERCHE -->
		<div class="limiter recherche" style="display: none;">
            <div class="container-login100"></div>
        </div>
        
		<!-- RENDEZ-VOUS -->
        <div id="acceuil" class="section RDV">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2 class="title">Mes rendez-vous</h2>
					</div>
					<div class="RDVs">
						<div class="liste"></div>
					</div>
				</div>
			</div>
		</div>
		
        <!-- ESPACE LOCATAIRE -->
        <div class="section locataire" style="display: none;">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2 class="title">Espace Locataire</h2>
					</div>
					<button class="main-btn" id="rechercherBien">Rechercher bien</button>
					<div class="locations">
						<div class="liste"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="limiter paiement" style="display: none;">
			<div class="container-login100"></div>
		</div>
        
        <!-- ESPACE PROPRIETAIRE -->
        <div class="section proprietaire" style="display: none;">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2 class="title">Espace propriétaire</h2>
					</div>
					<button class="main-btn" id="ajouterBien">Ajouter bien</button>
					<div class="proprietes">
						<div class="liste"></div>
					</div>
				</div>
			</div>
		</div>
        
        

	      <!-- AJOUTER BIEN -->  
	    <div class="limiter ajouterBien" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-remove"></i>
                    
                    <form class="login100-form validate-form form-ajouterBien" method="POST" action="Client">
                        <span class="login100-form-title p-b-20">Rendez-vous</span>
                       
                        <div class="wrap-input100 validate-input" data-validate = "Entrer la date">
                            <input class="input100" type="text" name="dateRDV">
                            <span class="focus-input100" data-placeholder="Date"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer l'heure">
                            <select class="input100 has-val" name="heureRDV">
                              <option value="08:00-10:00">8h - 10h</option>
                              <option value="10:00-12:00">10h - 12h</option>
                              <option value="13:00-15:00">13h - 15h</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Heure"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer la moyenne de contact">
                            <select class="input100 has-val" name="contact">
                              <option value="telephone">telephone</option>
                              <option value="email">email</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Moyenne de contact"></span>
                        </div>
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" id="btn-ajouterBien">Ajouter bien</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <!-- RECHERCHER BIEN -->
        <div class="limiter rechercherBien" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-remove"></i>
                    <form class="login100-form validate-form form-recherche" method="POST" action="Client">
                        <span class="login100-form-title p-b-20">Recherche</span>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer le type de bien">
                            <select class="input100 has-val" id="type" name="type">
                              <option value="appartement">Appartement</option>
                              <option value="locale">Locale</option>
                              <option value="terrain">Lot de terrain</option>
                              <option value="villa">Villa</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="type"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer la ville">
                            <select class="input100 has-val" name="ville">
								<option value="!=''">n'import</option>
								<option value="='adrar'">adrar</option>
								<option value="='chlef'">chlef</option>
								<option value="='laghouat'">laghouat</option>
								<option value="='oum el bouaghi'">oum el bouaghi</option>
								<option value="='batna'">batna</option>
								<option value="='bejaia'">bejaia</option>
								<option value="='biskra'">biskra</option>
								<option value="='bechar'">bechar</option>
								<option value="='blida'">blida</option>
								<option value="='bouira'">bouira</option>
								<option value="='tamanrasset'">tamanrasset</option>
								<option value="='tebessa'">tebessa</option>
								<option value="='tlemcen'">tlemcen</option>
								<option value="='tiaret'">tiaret</option>
								<option value="='tizi ouzou'">tizi ouzou</option>
								<option value="='alger'">alger</option>
								<option value="='djelfa'">djelfa</option>
								<option value="='jijel'">jijel</option>
								<option value="='setif'">setif</option>
								<option value="='saida'">saida</option>
								<option value="='skikda'">skikda</option>
								<option value="='sidi bel abbes'">sidi bel abbes</option>
								<option value="='annaba'">annaba</option>
								<option value="='guelma'">guelma</option>
								<option value="='constantine'">constantine</option>
								<option value="='medea'">medea</option>
								<option value="='mostaganem'">mostaganem</option>
								<option value="='msila'">msila</option>
								<option value="='mascar'">mascar</option>
								<option value="='ouargla'">ouargla</option>
								<option value="='oran'">oran</option>
								<option value="='el bayadh'">el bayadh</option>
								<option value="='illizi'">illizi</option>
								<option value="='bordj bou arreridj'">bordj bou arreridj</option>
								<option value="='boumerdes'">boumerdes</option>
								<option value="='el tarf'">el tarf</option>
								<option value="='tindouf'">tindouf</option>
								<option value="='tissemsilt'">tissemsilt</option>
								<option value="='el oued'">el oued</option>
								<option value="='khenchela'">khenchela</option>
								<option value="='souk ahras'">souk ahras</option>
								<option value="='tipaza'">tipaza</option>
								<option value="='mila'">mila</option>
								<option value="='ain defla'">ain defla</option>
								<option value="='naama'">naama</option>
								<option value="='ain temouchent'">ain temouchent</option>
								<option value="='ghardaia'">ghardaia</option>
								<option value="='relizane'">relizane</option>
                            </select> 
                            <span class="focus-input100" data-placeholder="Ville"></span>
                        </div>
                                                
                        <span style="position: relative; left:5px; top: -18px; color: #999999;">Prix</span>
                        <div class="range" style="position: relative; top: -15px; margin-bottom: 15px;">
                            <input type="text" class="min min-prix" name="minPrix" style="top: -8px; left: -5px;" readonly>
                            <div class="slider-range prix"></div>
                            <input type="text" class="max max-prix" name="maxPrix" style="top: -10px; left: 5px;" readonly>
                        </div>
                        
                        <span style="position: relative; left:5px; top: -18px; color: #999999;">Surface</span>
                        <div class="range" style="position: relative; top: -15px; margin-bottom: 15px;">
                            <input type="text" class="min min-surface" name="minSurface" style="top: -8px; left: -5px;" readonly>
                            <div class="slider-range surface"></div>
                            <input type="text" class="max max-surface" name="maxSurface" style="top: -10px; left: 5px;" readonly>
                        </div>
                        
                        <div class="wrap-input100 validate-input type appartement villa" data-validate = "Entrer l'etage">
                            <select class="input100 has-val" name="etage">
                              <option value=">=0">n'import</option>
                              <option value="=1">1er etage</option>
                              <option value="=2">2eme etage</option>
                              <option value="=3">3eme etage</option>
                              <option value="=4">4eme etage</option>
                              <option value="=5">5eme etage</option>
                              <option value="=6">6eme etage</option>
                              <option value="=7">7eme etage</option>
                              <option value="=8">8eme etage</option>
                              <option value="=9">9eme etage</option>
                              <option value="=10">10eme etage</option>
                            </select> 
                            <span class="focus-input100" data-placeholder="Etage"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type appartement villa" data-validate = "Entrer le nombre de pieces">
                            <select class="input100 has-val" name="piece">
                              <option value=">=0">n'import</option>
                              <option value="=1">1 piece</option>
                              <option value="=2">2 pieces</option>
                              <option value="=3">3 pieces</option>
                              <option value=">3">4 pieces ou plus</option>
                            </select> 
                            <span class="focus-input100" data-placeholder="Nombre de piece"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Picine?">
                            <select class="input100 has-val" name="picine">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Picine"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale" style="display: none;" data-validate = "Finition interieur?">
                            <select class="input100 has-val" name="interieur">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Finition interieur"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale" style="display: none;" data-validate = "Finition exterieur?">
                            <select class="input100 has-val" name="exterieur">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Finition exterieur"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale" style="display: none;" data-validate = "Gas?">
                            <select class="input100 has-val" name="gas">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Gas"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale" style="display: none;" data-validate = "Electricité?">
                            <select class="input100 has-val" name="electricite">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Electricité"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Garage?">
                            <select class="input100 has-val" name="garage">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Garage"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Jardin?">
                            <select class="input100 has-val" name="jardin">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Jardin"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type appartement villa" data-validate = "Climatisation?">
                            <select class="input100 has-val" name="climatisation">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Climatisation"></span>
                        </div>

                        <div class="wrap-input100 validate-input type appartement villa" data-validate = "Meuble?">
                            <select class="input100 has-val" name="meuble">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Meuble"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type appartement" data-validate = "Balcon?">
                            <select class="input100 has-val" name="balcon">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Balcon"></span>
                        </div>

                        <div class="wrap-input100 validate-input type appartement locale" data-validate = "Stationnement?">
                            <select class="input100 has-val" name="stationnement">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Stationnement"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale villa" style="display: none;" data-validate = "Alarm?">
                            <select class="input100 has-val" name="alarm">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Alarm"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Cheminé?">
                            <select class="input100 has-val" name="chemine">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Cheminé"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Interphone?">
                            <select class="input100 has-val" name="interphone">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Interphone"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type terrain" style="display: none;" data-validate = "Agricole?">
                            <select class="input100 has-val" name="agricole">
                              <option value="!=''">n'import</option>
                              <option value="='non'">non</option>
                              <option value="='oui'">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Agricole"></span>
                        </div>
                        
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" id="btn-recherche">Rechercher bien</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <!-- LOUER BIEN -->
        <div class="limiter louerBien close" style="z-index: 1000; display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-close"></i>
                    
                    <form class="login100-form validate-form form-louerBien" method="POST" action="Client">
                        <span class="login100-form-title p-b-20">Rendez-vous</span>
                       	<input id="bien" name="bien" hidden>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer la date">
                            <input class="input100" type="text" name="dateRDV">
                            <span class="focus-input100" data-placeholder="Date"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer l'heure">
                            <select class="input100 has-val" name="heureRDV">
                              <option value="08:00-10:00">8h - 10h</option>
                              <option value="10:00-12:00">10h - 12h</option>
                              <option value="13:00-15:00">13h - 15h</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Heure"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer la moyenne de contact">
                            <select class="input100 has-val" name="contact">
                              <option value="telephone">telephone</option>
                              <option value="email">email</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Moyenne de contact"></span>
                        </div>
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" id="btn-louerBien">Louer</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <!-- VISITER BIEN -->
        <div class="limiter visiterBien close" style="z-index: 1000; display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-close"></i>
                    
                    <form class="login100-form validate-form form-louerBien" method="POST" action="Client">
                        <span class="login100-form-title p-b-20">Rendez-vous</span>
                       	<input id="bien" name="bien" hidden>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer la date">
                            <input class="input100" type="text" name="dateRDV">
                            <span class="focus-input100" data-placeholder="Date"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer l'heure">
                            <select class="input100 has-val" name="heureRDV">
                              <option value="08:00-10:00">8h - 10h</option>
                              <option value="10:00-12:00">10h - 12h</option>
                              <option value="13:00-15:00">13h - 15h</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Heure"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer la moyenne de contact">
                            <select class="input100 has-val" name="contact">
                              <option value="telephone">telephone</option>
                              <option value="email">email</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Moyenne de contact"></span>
                        </div>
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" id="btn-visiterBien">Visiter</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <!-- BACK TO TOP -->
        <div id="back-to-top"></div>
        
        
        
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

		
		<script src="jquery-ui.min.js"></script>
		<script type="text/javascript" src="range.js"></script>
        <script src="card.js"></script>
        <script src="material-cards.js"></script>
        
        <!-- PROFILE -->
        <script type="text/javascript">
	        $('#a-profile').click(function(e){
	        	e.preventDefault();
	            $('.profile').show();
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=profile',
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
        
        <!-- DECONNECTER -->
        <script type="text/javascript">
        	$('#a-deconnecter').click(function(e){
        		e.preventDefault();
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=deconnecter',
			    	success: function (data) {
			    		window.location="";
		        	},
		    	});
	        });
        </script>
        
        <!-- RENDEZ-VOUS -->
        <script type="text/javascript">
	        $('#a-RDV').click(function(e){
	        	e.preventDefault();
	        	$('.main-nav li').removeClass('active');
				$('#a-RDV').addClass('active');
	            $('.section').hide().removeAttr('id','acceuil');
	            $('.RDV').show().attr('id','acceuil');
	            $.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=RDVs',
		        	success: function (data) {
		        		$('.RDVs .liste').remove();
		        		$('.RDVs').append("<div class=\"liste\"></div>");
		        		$('.RDVs .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.RDVs .liste').remove();
		        		$('.RDVs').append("<div class=\"liste\"><h2>Pas de rendez-vous</h2></div>");
		        	},
		    	});
        	});
	        
	        $('#a-RDV').click();
        </script>
        
        <!-- ESPACE LOCATAIRE -->
        <script type="text/javascript">
        	$('#a-locataire').click(function(e){
	        	e.preventDefault();
	        	$('.main-nav li').removeClass('active');
				$('#a-locataire').addClass('active');
	            $('.section').hide().removeAttr('id','acceuil');
	            $('.locataire').show().attr('id','acceuil');
	            $.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=locations',
		        	success: function (data) {
		        		$('.locations .liste').remove();
		        		$('.locations').append("<div class=\"liste\"></div>");
		        		$('.locations .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.locations .liste').remove();
		        		$('.locations').append("<div class=\"liste\"><h2>Pas de locations</h2></div>");
		        	},
		    	});
	        });
        </script>
        
        <!-- ESPACE PROPRIETAIRE -->
        <script type="text/javascript">
	        $('#a-proprietaire').click(function(e){
	        	e.preventDefault();
	        	$('.main-nav li').removeClass('active');
				$('#a-proprietaire').addClass('active');
	            $('.section').hide().removeAttr('id','acceuil');
	            $('.proprietaire').show().attr('id','acceuil');
	            $.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=proprietes',
		        	success: function (data) {
		        		$('.proprietes .liste').remove();
		        		$('.proprietes').append("<div class=\"liste\"></div>");
		        		$('.proprietes .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.proprietes .liste').remove();
		        		$('.proprietes').append("<div class=\"liste\"><h2>Pas de biens</h2></div>");
		        	},
		    	});
	        });
        </script>
        
        <!-- AJOUTER BIEN -->
        <script type="text/javascript">
	        $('#ajouterBien').click(function(e){
	        	e.preventDefault();
	            $('.ajouterBien').show();
	        });
	        
	        $('#type').change(function (e) {
	        	e.preventDefault();
				$('.type').hide();
				$('.'+this.value).show();
			});
	        
	        $('#btn-ajouterBien').click(function (e) {
				e.preventDefault();
				$('.ajouterBien').hide();
				$.ajax({
					type: $('.form-ajouterBien').attr('method'),
	            	url: $('.form-ajouterBien').attr('action'),
	            	data: $('.form-ajouterBien').serialize()+'&redirect=ajouterBien',	 	            	
		    	});
			});
        </script>
        
        <!-- RECHERCHER BIEN -->
        <script type="text/javascript">
	        $('#rechercherBien').click(function (e) {
				e.preventDefault();
				$('.rechercherBien').show();
			});
	        
	        $('#btn-recherche').click(function (e) {
				e.preventDefault();
				$('.recherche').show();
				$('.rechercherBien').hide();
				$.ajax({
					type: $('.form-recherche').attr('method'),
	            	url: $('.form-recherche').attr('action'),
	            	data: $('.form-recherche').serialize()+'&redirect=rechercherBien',	            	
	            	success: function (data) {
		        		$('.recherche .container-login100').remove();
		        		$('.recherche').append("<div class=\"container-login100\"></div>");
		        		$('.recherche .container-login100').append(data);
		        	},
		        	error: function (data){
		        		$('.recherche .container-login100').remove();
		        		$('.recherche').append("<div class=\"container-login100\"></div>");
		        	},
		    	});
			});
		</script>
        
        <!-- LOUER BIEN -->
        <script type="text/javascript">
        	$('#btn-louerBien').click(function (e) {
				e.preventDefault();
				$('.louerBien').hide();
				$.ajax({
					type: $('.form-louerBien').attr('method'),
	            	url: $('.form-louerBien').attr('action'),
	            	data: $('.form-louerBien').serialize()+'&redirect=louerBien',	            	
		        	success: function (data) {
		        		$('#btn-recherche').click();
		        	},
		    	});
				
			});
		</script>
		
		<!-- VISITER BIEN -->
        <script type="text/javascript">
        	$('#btn-visiterBien').click(function (e) {
				e.preventDefault();
				$('.visiterBien').hide();
				$.ajax({
					type: $('.form-louerBien').attr('method'),
	            	url: $('.form-louerBien').attr('action'),
	            	data: $('.form-louerBien').serialize()+'&redirect=visiterBien',	            	
		        	success: function (data) {
		        		$('#btn-recherche').click();
		        	},
		    	});
				
			});
		</script>
	</body>
</html>