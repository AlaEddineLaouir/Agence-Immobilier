<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="modele.Agent"%>
<%Agent A = (Agent)session.getAttribute("agent");%>

<!DOCTYPE>
<html lang="fr">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>MonBIEN || Espace agent</title>
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
        <link rel="stylesheet" type="text/css" href="resultat.css">
        <link rel="stylesheet" type="text/css" href="material-cards.css">
        <link rel="stylesheet" type="text/css" href="card.css">
        
    </head>

    <body>
    	<header class="home" id="home">
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
                    	<li id="a-RDV" class="active"><a>Mes Rendez-vous</a></li>
                    	<li id="a-client"><a>Gestion des clients</a></li>
                        <li id="a-bien"><a>Gestion des biens</a></li>
                        <li id="a-location"><a>Gestion des locations</a></li>
                        <li class="has-dropdown"><a href="#acceuil"><% out.print(A.getNom()+" "+A.getPrenom()); %></a>
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
        
        <!-- CLIENT PROFILE -->
		<div class="limiter clientProfile" style="display: none; z-index: 1000;">
            <div class="container-login100"></div>
        </div>
        
        <!-- RECHERCHE -->
		<div class="limiter recherche close" style="display: none;">
            <div class="container-login100"></div>
        </div>
		
		<div class="section client" style="display: none;">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2 class="title">Liste des clients</h2>
					</div>
					<button class="main-btn" id="btn-client">Ajouter client</button>
					<div class="clients">
						<div class="liste"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="section bien" style="display: none;">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2 class="title">Liste des biens</h2>
					</div>
					<button class="main-btn" id="btn-bien">Ajouter bien</button>
					<div class="biens">
						<div class="liste"></div>
					</div>
				</div>
			</div>
		</div>
		
		
		
		
		
        
        <div class="section location" style="display: none;">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2 class="title">Liste des locations</h2>
					</div>
					<button class="main-btn" id="btn-location">Ajouter location</button>
					<div class="locations">
						<div class="liste"></div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="limiter paiement" style="display: none;">
			<div class="container-login100"></div>
		</div>
		
		<div id="contrat" style="display: none;">
			<div class="imprimable"></div>
		</div>
		
		<div id="facture" style="display: none;">
			<div class="imprimable"></div>
		</div>
		
		<div id="acceuil" class="section RDV">
			<div class="container">
				<div class="row">
					<div class="section-header text-center">
						<h2 class="title">Liste des RDVs</h2>
					</div>
					<button class="main-btn" id="btn-RDV">Ajouter RDV</button>
					<div class="RDVs">
						<div class="liste"></div>
					</div>
				</div>
			</div>
		</div>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <div id="client" class="limiter" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-remove"></i>
                    <form class="login100-form validate-form form-client" method="POST" action="Agent">
                        <span class="login100-form-title p-b-10"><img src="img/MonBIEN.png" style="height: 60px;"></span>
                        <span class="login100-form-title p-b-20">MonBIEN</span>
                        <p style="margin-bottom: 15px; color: #6195FF;">entrer les informations personnelles</p>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre nom">
                            <input id="nom" class="input100" type="text" name="nom" placeholder="4-20 caracteres">
                            <span class="focus-input100" data-placeholder="Nom"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre prenom">
                            <input id="prenom" class="input100" type="text" name="prenom" placeholder="4-20 caracteres">
                            <span class="focus-input100" data-placeholder="Prenom"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre date de naissance">
                            <input id="naissance" class="input100 has-val notempty" type="date" name="naissance" min="1920-01-01" max="2000-01-01" value="1970-01-01">
                            <span class="focus-input100" data-placeholder="Date de naissance"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre adresse">
                            <input id="adresse" class="input100" type="text" name="adresse" placeholder="10-50 caracteres">
                            <span class="focus-input100" data-placeholder="adresse"></span>
                        </div>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre email forme 'a@b.c'">
                            <input class="input100" type="email" id="email" name="email" placeholder="a@b.c">
                            <span class="focus-input100" data-placeholder="email"></span>
                        </div>
                        <p class="email erreur"></p>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre numero de telephone">
                            <input class="input100" type="text" id="telephone" name="telephone" placeholder="9-10 chiffres">
                            <span class="focus-input100" data-placeholder="Téléphone"></span>
                        </div>
                        <p class="telephone erreur"></p>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer votre numéro d'identité">
                            <input class="input100" type="text" id="identite" name="identite" placeholder="4-20 caracteres">
                            <span class="focus-input100" data-placeholder="Numéro d'identité"></span>
                        </div>
                        <p class="identite erreur"></p>
                        <p style="margin-bottom: 15px; color: #6195FF;">entrer les informations du compte</p>
                        <div class="wrap-input100 validate-input" data-validate = "Entrer le nom d'utilisateur">
                            <input class="input100" type="text" id="userR" name="utilisateur" placeholder="4-25 caracteres">
                            <span class="focus-input100" data-placeholder="Nom d'utilisateur"></span>
                        </div>
                        <p class="userR erreur"></p>
                        <div class="wrap-input100 validate-input" data-validate="Entrer le mot de passe">
                            <span class="btn-show-pass"><i class="zmdi zmdi-eye"></i></span>
                            <input id="passe" class="input100" type="password" name="passe" placeholder="4-25 caracteres">
                            <span class="focus-input100" data-placeholder="Mot de passe"></span>
                        </div>
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
								<button id="btn-ajouterClient" class="login100-form-btn" name="redirect" value="ajouterClient">Ajouter client</button>
                            </div>
                        </div>
                    </form>
                    <div class="snackbar-container">
                    	<div class="snackbar">Veuillez saisir des informations valides</div>
                    </div>
                </div>
            </div>
        </div>
        
        <div id="bien" class="limiter" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-remove"></i>
					<label for="file" style="font-size: 30px; text-align: center; width: 100%;">
						Images
					</label>
                    <form action="Image" method="post" id="form-image" enctype="multipart/form-data">
						<input name="file" type="file" id="file" multiple>
					</form>
                    <form class="login100-form validate-form form-bien" method="POST" action="Agent">
                        <span class="login100-form-title p-b-20">Ajouter bien</span>
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
						        <option value="adrar">adrar</option>
					            <option value="chlef">chlef</option>
					            <option value="laghouat">laghouat</option>
					            <option value="oum el bouaghi">oum el bouaghi</option>
					            <option value="batna">batna</option>
					            <option value="bejaia">bejaia</option>
					            <option value="biskra">biskra</option>
					            <option value="bechar">bechar</option>
					            <option value="blida">blida</option>
					            <option value="bouira">bouira</option>
					            <option value="tamanrasset">tamanrasset</option>
					            <option value="tebessa">tebessa</option>
					            <option value="tlemcen">tlemcen</option>
					            <option value="tiaret">tiaret</option>
					            <option value="tizi ouzou">tizi ouzou</option>
					            <option value="alger">alger</option>
					            <option value="djelfa">djelfa</option>
					            <option value="jijel">jijel</option>
					            <option value="setif">setif</option>
					            <option value="saida">saida</option>
					            <option value="skikda">skikda</option>
					            <option value="sidi bel abbes">sidi bel abbes</option>
					            <option value="annaba">annaba</option>
					            <option value="guelma">guelma</option>
					            <option value="constantine">constantine</option>
					            <option value="medea">medea</option>
					            <option value="mostaganem">mostaganem</option>
					            <option value="msila">msila</option>
					            <option value="mascar">mascar</option>
					            <option value="ouargla">ouargla</option>
					            <option value="oran">oran</option>
					            <option value="el bayadh">el bayadh</option>
					            <option value="illizi">illizi</option>
					            <option value="bordj bou arreridj">bordj bou arreridj</option>
					            <option value="boumerdes">boumerdes</option>
					            <option value="el tarf">el tarf</option>
					            <option value="tindouf">tindouf</option>
					            <option value="tissemsilt">tissemsilt</option>
					            <option value="el oued">el oued</option>
					            <option value="khenchela">khenchela</option>
					            <option value="souk ahras">souk ahras</option>
					            <option value="tipaza">tipaza</option>
					            <option value="mila">mila</option>
					            <option value="ain defla">ain defla</option>
					            <option value="naama">naama</option>
					            <option value="ain temouchent">ain temouchent</option>
					            <option value="ghardaia">ghardaia</option>
					            <option value="relizane">relizane</option>
					       </select> 
						   <span class="focus-input100" data-placeholder="Ville"></span>
						</div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer l'adresse">
                            <input id="adresse" class="input100" type="text" name="adresse">
                            <span class="focus-input100" data-placeholder="Adresse"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer le prix">
                            <input id="prix" class="input100" type="number" name="prix">
                            <span class="focus-input100" data-placeholder="Prix"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer la surface">
                            <input id="surface" class="input100" type="number" name="surface">
                            <span class="focus-input100" data-placeholder="Surface"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Entrer le proprietaire">
                            <input id="client" class="input100" type="text" name="proprietaire">
                            <span class="focus-input100" data-placeholder="Proprietaire"></span>
                        </div>
                        <p class="proprietaire erreur"></p>
                        
                        <div class="wrap-input100 validate-input type appartement villa" data-validate = "Entrer l'etage'">
                            <input id="etage" class="input100" type="number" name="etage">
                            <span class="focus-input100" data-placeholder="Etage"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type appartement villa" data-validate = "Entrer le nombre de pieces">
                            <input id="piece" class="input100" type="number" name="piece">
                            <span class="focus-input100" data-placeholder="piece"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Picine?">
                            <select class="input100 has-val" name="picine">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Picine"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Garage?">
                            <select class="input100 has-val" name="garage">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Garage"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Jardin?">
                            <select class="input100 has-val" name="jardin">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Jardin"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type appartement villa" data-validate = "Climatisation?">
                            <select class="input100 has-val" name="climatisation">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Climatisation"></span>
                        </div>

                        <div class="wrap-input100 validate-input type appartement villa" data-validate = "Meuble?">
                            <select class="input100 has-val" name="meuble">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Meuble"></span>
                        </div>

                        <div class="wrap-input100 validate-input type appartement" data-validate = "Balcon?">
                            <select class="input100 has-val" name="balcon">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Balcon"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale" style="display: none;" data-validate = "Finition interieur?">
                            <select class="input100 has-val" name="interieur">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Finition interieur"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale" style="display: none;" data-validate = "Finition exterieur?">
                            <select class="input100 has-val" name="exterieur">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Finition exterieur"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale" style="display: none;" data-validate = "Gas?">
                            <select class="input100 has-val" name="gas">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Gas"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale" style="display: none;" data-validate = "Electricité?">
                            <select class="input100 has-val" name="electricite">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Electricite"></span>
                        </div>

                        <div class="wrap-input100 validate-input type appartement locale" data-validate = "Stationnement?">
                            <select class="input100 has-val" name="stationnement">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Stationnement"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type locale villa" style="display: none;" data-validate = "Alarm?">
                            <select class="input100 has-val" name="alarm">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Alarm"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type terrain" style="display: none;" data-validate = "Agricole?">
                            <select class="input100 has-val" name="agricole">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Agricole"></span>
                        </div>
                                                
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Cheminé?">
                            <select class="input100 has-val" name="chemine">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Cheminé"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input type villa" style="display: none;" data-validate = "Interphone?">
                            <select class="input100 has-val" name="interphone">
                              <option value="non">non</option>
                              <option value="oui">oui</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="interphone"></span>
                        </div>
                        
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button id="btn-ajouterBien" class="login100-form-btn" name="redirect" value="ajouterBien">Ajouter bien</button>
                            </div>
                        </div>
                    </form>
                    <div class="snackbar-container">
                    	<div class="snackbar">Veuillez saisir des informations valides</div>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- AJOUTER LOCATION -->  
	    <div class="limiter ajouterLocation" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-remove"></i>
                    
                    <form class="login100-form validate-form form-ajouterLocation" method="POST" action="Agent">
                        <span class="login100-form-title p-b-20">Location</span>
                       
                       <i cible="locataire" class="fa fa-info-circle" style="position: relative; top: 30px; left: 260px; z-index: 999; display: none;"></i>
                       <div class="wrap-input100 validate-input" data-validate = "Locataire">
                            <input class="input100" id="locataire" type="text" name="locataire">
                            <span class="focus-input100" data-placeholder="Locataire"></span>
                        </div>
                        <p class="locataire erreur"></p>
                        
                        <i cible="proprietaire"  class="fa fa-info-circle" style="position: relative; top: 30px; left: 260px; z-index: 999; display: none;"></i>
                        <div class="wrap-input100 validate-input" data-validate = "Proprietaire">
                            <input class="input100" id="proprietaire" type="text" name="proprietaire">
                            <span class="focus-input100" data-placeholder="Proprietaire"></span>
                        </div>
                        <p class="proprietaire erreur"></p>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Bien">
                            <input class="input100" id="location" type="text" name="bien" autocomplete="off" readonly>
                            <span class="focus-input100" data-placeholder="Bien"></span>
                        </div>
                       
                       <div class="wrap-input100 validate-input" data-validate = "Modalité de paiement">
                            <select class="input100 has-val" name="paiement">
                              <option value="chaque mois">chaque mois</option>
                              <option value="chaque annee">chaque année</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Paiement"></span>
                        </div>
                       
                        <div class="wrap-input100 validate-input" data-validate = "Date de début de location">
                            <input class="input100" id="debut" type="text" name="debut">
                            <span class="focus-input100" data-placeholder="Début"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Date de fin de location">
                            <input class="input100" id="fin" type="text" name="fin">
                            <span class="focus-input100" data-placeholder="Fin"></span>
                        </div>
                        
                        <div class="wrap-input100 validate-input" data-validate = "Cout de location">
                            <input class="input100" id="cout" type="text" name="cout">
                            <span class="focus-input100" data-placeholder="Cout"></span>
                        </div>
                        
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" id="btn-ajouterLocation">Ajouter location</button>
                            </div>
                        </div>
                    </form>
                    <div class="snackbar-container">
                    	<div class="snackbar">Veuillez saisir des informations valides</div>
                    </div>
                </div>
            </div>
        </div>
        
        
        
        
        
        <!-- AJOUTER PAIEMENT -->  
	    <div class="limiter ajouterPaiement close" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-close"></i>
                    
                    <form class="login100-form validate-form form-ajouterPaiement" method="POST" action="Agent">
                        <span class="login100-form-title p-b-20">Paiement</span>
                       
                       <div class="wrap-input100 validate-input" data-validate = "Montant">
                            <input class="input100" id="montant" type="text" name="montant">
                            <span class="focus-input100" data-placeholder="montant"></span>
                        </div>
                        
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" id="btn-ajouterPaiement">Ajouter paiement</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <!-- TYPE -->  
	    <div class="limiter type close" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100" style="height: fit-content; width: fit-content;">
                    <i class="fa fa-close"></i>
                    
                    <form class="login100-form validate-form" id="form-type" method="POST" action="Agent">
                        <span class="login100-form-title p-b-20">Type de bien</span>
                       

                       <div class="wrap-input100 validate-input">
                            <select class="input100 has-val" name="type">
                              <option value=""></option>
                              <option value="appartement">Appartement</option>
                              <option value="locale">Locale</option>
                              <option value="terrain">Lot de terrain</option>
                              <option value="villa">Villa</option>
                            </select>                            
                            <span class="focus-input100" data-placeholder="Type"></span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        
        
        
        
        <!-- RDV -->  
	    <div class="limiter occuperAgent" style="display: none;">
            <div class="container-login100">
                <div class="wrap-login100">
                    <i class="fa fa-remove"></i>
                    
                    <form class="login100-form validate-form form-occuperAgent" method="POST" action="Agent">
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
                        
                        <div class="container-login100-form-btn m-b-15">
                            <div class="wrap-login100-form-btn">
                                <div class="login100-form-bgbtn"></div>
                                <button class="login100-form-btn" id="btn-occuperAgent">Occuper agent</button>
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
        
        <script src="material-cards.js"></script>
        <script src="card.js"></script>

    
        
        <!-- DECONNECTER -->
        <script type="text/javascript">
        	$('#a-deconnecter').click(function(e){
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
			    	data: 'redirect=deconnecter',
			    	success: function (data) {
			    		window.location="";
		        	},
		    	});
	        });
        </script>
        
        <!-- PROFILE -->
        <script type="text/javascript">
	        $('#a-profile').click(function(e){
	            $('.profile').show();
	            e.preventDefault();
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
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
        
        <!-- CLIENT -->
        <script type="text/javascript">
			$('#a-client').click(function (e) {
				e.preventDefault();
				$('.main-nav li').removeClass('active');
				$('#a-client').addClass('active');
				$('.section').hide().removeAttr('id','acceuil');
				$('.client').show().attr('id','acceuil');
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
			    	data: 'redirect=clients',
		        	success: function (data) {
		        		$('.clients .liste').remove();
		        		$('.clients').append("<div class=\"liste\"></div>");
		        		$('.clients .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.clients .liste').remove();
		        		$('.clients').append("<div class=\"liste\"><h2>Pas de clients</h2></div>");
		        	},
		    	});
			});
			
			$('#btn-client').click(function (e) {
				$('#client').show();
			});
			
			$('.form-client #userR').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=register&utilisateur='+$('.form-client #userR')[0].value,
		        	success: function (data) {
		        		$('.form-client .userR')[0].innerHTML=data;
		        		$('#btn-ajouterClient').attr('erreur','erreur');
			       		if(data=='' && $('.form-client #userR').val()!=""){
			       			$('#btn-ajouterClient').removeAttr('erreur');
			       		}
		        	},
		        	error: function (data){
		        		$('.form-client .userR')[0].innerHTML="";
		        	},
		    	});
			});
			
			$('.form-client #email').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=email&email='+$('.form-client #email')[0].value,
		        	success: function (data) {
		        		$('.form-client .email')[0].innerHTML=data;
		        		$('#btn-ajouterClient').attr('erreur','erreur');
			       		if(data=='' && $('.form-client #email').val()!=""){
			       			$('#btn-ajouterClient').removeAttr('erreur');
			       		}
		        	},
		        	error: function (data){
		        		$('.form-client .email')[0].innerHTML="";
		        	},
		    	});
			});
			
			$('.form-client #telephone').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=telephone&telephone='+$('.form-client #telephone')[0].value,
			    	success: function (data) {
			    		$('.form-client .telephone')[0].innerHTML=data;
			    		$('#btn-ajouterClient').attr('erreur','erreur');
			       		if(data=='' && $('.form-client #telephone').val()!=""){
			       			$('#btn-ajouterClient').removeAttr('erreur');
			       		}
		        	},
		        	error: function (data){
		        		$('.form-client .telephone')[0].innerHTML="";
		        	},
		    	});
			});
			
			$('.form-client #identite').focusout(function (e) {
				$.ajax({
					type: 'POST',
			    	url: 'Client',
			    	data: 'redirect=identite&identite='+$('.form-client #identite')[0].value,
			    	success: function (data) {
		        		$('.form-client .identite')[0].innerHTML=data;
		        		$('#btn-ajouterClient').attr('erreur','erreur');
			       		if(data=='' && $('.form-client #identite').val()!=""){
			       			$('#btn-ajouterClient').removeAttr('erreur');
			       		}
		        	},
		        	error: function (data){
		        		$('.form-client .identite')[0].innerHTML="";
		        	},
		    	});
			});
			
			$('#btn-ajouterClient').click(function (e) {
				e.preventDefault();
				if($('#btn-ajouterClient').attr('erreur')=='erreur' || $('.form-client #nom').val()=='' || $('.form-client #nom').val().match(/^#?([a-zA-Z_ \-\.]{4,20})$/)==null || $('.form-client #prenom').val()=='' || $('.form-client #prenom').val().match(/^#?([a-zA-Z_ \-\.]{4,20})$/)==null || $('.form-client #naissance').val()=='' || $('.form-client #adresse').val()=='' || $('.form-client #adresse').val().match(/^#?([a-zA-Z0-9_ \-\.]{10,50})$/)==null || $('.form-client #email').val()=='' || $('.form-client #email').val().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/)==null || $('.form-client #telephone').val()=='' || $('.form-client #telephone').val().match(/^#?([0-9]{9}|[0-9]{10})$/)==null || $('.form-client #identite').val()=='' || $('.form-client #identite').val().match(/^#?([a-zA-Z0-9_\-\.]{5,20})$/)==null || $('.form-client #userR').val()=='' || $('.form-client #userR').val().match(/^#?([a-zA-Z0-9_\-\.]{4,25})$/)==null || $('.form-client #passe').val()=='' || $('.form-client #passe').val().match(/^#?([a-zA-Z0-9_ \-\.]{4,25})$/)==null){
					$('.snackbar').addClass('show');
					setTimeout(function(){$('#client .snackbar').removeClass('show');}, 3000);
				}
				else{
					$('#client').hide();
					$.ajax({
						type: $('.form-client').attr('method'),
		            	url: $('.form-client').attr('action'),
		            	data: $('.form-client').serialize()+'&redirect=ajouterClient',	            	
			        	success: function (data) {
			        		$('.clients .liste').remove();
			        		$('.clients').append("<div class=\"liste\"></div>");
			        		$('.clients .liste').append(data);
			        	},
			        	error: function (data){
			        		$('.clients .liste').remove();
			        		$('.clients').append("<div class=\"liste\"><h2>Pas de clients</h2></div>");
			        	},
			    	});
				}
			});
		</script>
			
		<!-- BIEN -->
        <script type="text/javascript">
			$('#a-bien').click(function (e) {
				e.preventDefault();
				$('.main-nav li').removeClass('active');
				$('#a-bien').addClass('active');
				$('.section').hide().removeAttr('id','acceuil');
				$('.bien').show().attr('id','acceuil');
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
			    	data: 'redirect=biens',
		        	success: function (data) {
		        		$('.biens .liste').remove();
		        		$('.biens').append("<div class=\"liste\"></div>");
		        		$('.biens .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.biens .liste').remove();
		        		$('.biens').append("<div class=\"liste\"><h2>Pas de biens</h2></div>");
		        	},
		    	});
			});
			
			$('#bien #client').focusout(function (e) {
				$.ajax({
	    			type: 'POST',
	    	    	url: 'Agent',
	    	    	data: 'redirect=client&utilisateur='+$('#bien #client')[0].value,
	    	    	success: function (data) {
	    	    		$('#bien .proprietaire')[0].innerHTML=data;
	    	    		$('#btn-ajouterBien').attr('erreur','erreur');
	    	    		
	            	},
	            	error: function (data){
	            		$('#bien .proprietaire')[0].innerHTML="";
	            		if($('#bien #client').val()!=""){
			       			$('#btn-ajouterBien').removeAttr('erreur');
			       		}
	            	},
	        	});
			});
			
			$('#btn-bien').click(function (e) {
				$('#bien').show();
			});
			
			$('#type').change(function (e) {
				$('.type').hide();
				$('.'+this.value).show();
			});
			
			$('#btn-ajouterBien').click(function (e) {
				e.preventDefault();
				
				if($('#btn-ajouterBien').attr('erreur')=='erreur' || $('#bien #file').val()=="" || $('#bien #client').val()=="" || $('#bien #adresse').val()=="" || $('#bien #prix').val()=="" || $('#bien #surface').val()==""){
					$('.snackbar').addClass('show');
					setTimeout(function(){$('#bien .snackbar').removeClass('show');}, 3000);
				}
				else{
					$('#bien').hide();
					$.ajax({
						type: $('.form-bien').attr('method'),
		            	url: $('.form-bien').attr('action'),
		            	data: $('.form-bien').serialize()+'&redirect=ajouterBien',	            	
			        	success: function (data) {
			        		$('.biens .liste').remove();
			        		$('.biens').append("<div class=\"liste\"></div>");
			        		$('.biens .liste').append(data);
			        		
			        		var files = $('#form-image').get(0).file.files;
	   		        	    var formData = new FormData();
	   		        	    
	   		        	    for (var i = 0; i < files.length; i++) {
	   		        	    	formData.append(files[i].name, $('#form-image').get(0).file.files[i]);
	   		                }	    	
	   		            	$.ajax({
	   		            		url: 'Upload?upload=bien',
	   		            		data: formData,
	   		            	    cache: false,
	   		            	    contentType: false,
	   		            	    processData: false,
	   		            	    type: 'POST',
	   		                });
			        	},
			        	error: function (data){
			        		$('.biens .liste').remove();
			        		$('.biens').append("<div class=\"liste\"><h2>Pas de biens</h2></div>");
			        	},
			    	});
				}
			});
		</script>
		
		
		
		<!-- LOCATION -->
        <script type="text/javascript">
	        $('.ajouterLocation #proprietaire').focusout(function(){
	        	$.ajax({
	    			type: 'POST',
	    	    	url: 'Agent',
	    	    	data: 'redirect=client&utilisateur='+$('.form-ajouterLocation #proprietaire')[0].value,
	    	    	success: function (data) {
	    	    		$('.form-ajouterLocation .proprietaire')[0].innerHTML=data;
	    	    		$('#btn-ajouterLocation').attr('disabled','disabled');
	    	    		$('#location').val('');
	    	    		$($('.fa-info-circle')[1]).hide();
	            	},
	            	error: function (data){
	            		$('.form-ajouterLocation .proprietaire')[0].innerHTML="";
	            		$('#btn-ajouterLocation').removeAttr('disabled');
	            		if($('.ajouterLocation #proprietaire').val()!='')
	            			$($('.fa-info-circle')[1]).show();
	            	},
	        	});
			});
	        
	        $('.ajouterLocation #locataire').focusout(function(){
	        	$.ajax({
	    			type: 'POST',
	    	    	url: 'Agent',
	    	    	data: 'redirect=client&utilisateur='+$('.form-ajouterLocation #locataire')[0].value,
	    	    	success: function (data) {
	    	    		$('.form-ajouterLocation .locataire')[0].innerHTML=data;
	    	    		$('#btn-ajouterLocation').attr('disabled','disabled');
	    	    		$('#location').val('');
	    	    		$($('.fa-info-circle')[0]).hide();
	            	},
	            	error: function (data){
	            		$('.form-ajouterLocation .locataire')[0].innerHTML="";
	            		$('#btn-ajouterLocation').removeAttr('disabled');
	            		if($('.ajouterLocation #locataire').val()!='')
	            			$($('.fa-info-circle')[0]).show();
	            	},
	        	});
			});
	        
	        $('.fa-info-circle').click(function(){
	        	var client=$('#'+this.getAttribute("cible"));
	        	$.ajax({
	    			type: 'POST',
	    	    	url: 'Agent',
	    	    	data: 'redirect=clientProfile&utilisateur='+client[0].value,
	    	    	success: function (data) {
		        		$('.clientProfile .container-login100').remove();
		        		$('.clientProfile').append("<div class=\"container-login100\"></div>");
		        		$('.clientProfile .container-login100').append(data);
		        		$('.clientProfile').show();
		        	},
		        	error: function (data){
		        		$('.clientProfile .container-login100').remove();
		        		$('.clientProfile').append("<div class=\"container-login100\"></div>");
		        	},
	        	});
	        });
	        
	        $('#location').focusin(function(){
	        	if($('#btn-ajouterLocation').attr('disabled')!='disabled' && $('#proprietaire').val()!=''){
	        		$('.type').show();
	        	}
        	});
        	
        	$('#form-type select').change(function(){
	        	if($(this).val()!=''){
	        		$('.recherche').show();
	        		$.ajax({
		    			type: 'POST',
		    	    	url: 'Agent',
		    	    	data: 'redirect=rechercherBien&type='+$(this).val()+'&proprietaire='+$('.form-ajouterLocation #proprietaire')[0].value,
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
	        		$('#form-type select').val('');
	        	}
        	});
        	
			$('#a-location').click(function (e) {
				e.preventDefault();
				$('.main-nav li').removeClass('active');
				$('#a-location').addClass('active');
				$('.section').hide().removeAttr('id','acceuil');
				$('.location').show().attr('id','acceuil');
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
			    	data: 'redirect=locations',
		        	success: function (data) {
		        		$('.locations .liste').remove();
		        		$('.locations').append("<div class=\"liste\"></div>");
		        		$('.locations .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.locations .liste').remove();
		        		$('.location').append("<div class=\"liste\"><h2>Pas de locations</h2></div>");
		        	},
		    	});
			});
			
			
			
			$('#btn-location').click(function(e){
	        	e.preventDefault();
	            $('.ajouterLocation').show();
	        });
			
			$('#btn-ajouterLocation').click(function (e) {
				e.preventDefault();
				if($('#btn-ajouterLocation').attr('erreur')=='erreur' || $('.ajouterLocation #locataire').val()=='' || $('.ajouterLocation #Proprietaire').val()=='' || $('.ajouterLocation #location').val()=='' || $('.ajouterLocation #debut').val()=='' || $('.ajouterLocation #fin').val()=='' || $('.ajouterLocation #cout').val()==''){
					$('.snackbar').addClass('show');
					setTimeout(function(){$('.ajouterLocation .snackbar').removeClass('show');}, 3000);
				}
				else{
					$('.ajouterLocation').hide();
					$.ajax({
						type: $('.form-ajouterLocation').attr('method'),
		            	url: $('.form-ajouterLocation').attr('action'),
		            	data: $('.form-ajouterLocation').serialize()+'&redirect=ajouterLocation',
		            	success: function (data) {
			        		$('.locations .liste').remove();
			        		$('.locations').append("<div class=\"liste\"></div>");
			        		$('.locations .liste').append(data);
			        	},
			        	error: function (data){
			        		$('.locations .liste').remove();
			        		$('.location').append("<div class=\"liste\"><h2>Pas de locations</h2></div>");
			        	},
			    	});
				}
			});
			
		</script>
		
		
		
		
		
		
		
		<!-- RDV -->
        <script type="text/javascript">
			$('#a-RDV').click(function (e) {
				e.preventDefault();
				$('.main-nav li').removeClass('active');
				$('#a-RDV').addClass('active');
				$('.section').hide().removeAttr('id','acceuil');
				$('.RDV').show().attr('id','acceuil');
				$.ajax({
					type: 'POST',
			    	url: 'Agent',
			    	data: 'redirect=RDVs',
		        	success: function (data) {
		        		$('.RDVs .liste').remove();
		        		$('.RDVs').append("<div class=\"liste\"></div>");
		        		$('.RDVs .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.RDVs .liste').remove();
		        		$('.RDVs').append("<div class=\"liste\"><h2>Pas de rendez-vous aujourd'hui</h2></div>");
		        	},
		    	});
			});
			
			$('#a-RDV').click();
			
			$('#btn-RDV').click(function(e){
	        	e.preventDefault();
	            $('.occuperAgent').show();
	        });
			
			$('#btn-occuperAgent').click(function (e) {
				e.preventDefault();
				$('.occuperAgent').hide();
				$.ajax({
					type: $('.form-occuperAgent').attr('method'),
	            	url: $('.form-occuperAgent').attr('action'),
	            	data: $('.form-occuperAgent').serialize()+'&redirect=occuperAgent',
	            	success: function (data) {
		        		$('.RDVs .liste').remove();
		        		$('.RDVs').append("<div class=\"liste\"></div>");
		        		$('.RDVs .liste').append(data);
		        	},
		        	error: function (data){
		        		$('.RDVs .liste').remove();
		        		$('.RDVs').append("<div class=\"liste\"><h2>Pas de rendez-vous aujourd'hui</h2></div>");
		        	},
		    	});
			});
		</script>
		

		
		
		
		
		
		
		
		
		
		
	</body>
</html>