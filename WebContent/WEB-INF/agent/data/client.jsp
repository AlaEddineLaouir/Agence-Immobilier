<%@page import="modele.Client"%>
<% Client C = (Client)session.getAttribute("client"); %>

<div class="wrap-login100">
	<i class="fa fa-times-circle"></i>
	<img id="img-client" src="images/client/<%out.print(C.getUtilisateur());%>/profile.jpg">
	<form id="form-profile" class="login100-form validate-form" method="POST" action="Client">
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre nom">
	        <input class="input100 has-val" type="text" name="nom" value="<% out.print(C.getNom()); %>" readonly>
	        <span class="focus-input100" data-placeholder="Nom"></span>
	    </div>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre prenom">
	        <input class="input100 has-val" type="text" name="prenom" value="<% out.print(C.getPrenom()); %>" readonly>
	        <span class="focus-input100" data-placeholder="Prenom"></span>
	    </div>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre date de naissance">
	        <input class="input100 has-val" type="text" name="naissance" value="<% out.print(C.getNaissance()); %>" readonly>
	        <span class="focus-input100" data-placeholder="Date de naissance"></span>
	    </div>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre adresse">
	        <input class="input100 has-val" type="text" id="adresse" name="adresse"  value="<% out.print(C.getAdresse()); %>" readonly>
	        <span class="focus-input100" data-placeholder="adresse"></span>
	    </div>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre email forme 'a@b.c'">
	        <input class="input100 has-val" type="email" id="email" name="email" value="<% out.print(C.getEmail()); %>" readonly>
	        <span class="focus-input100" data-placeholder="email"></span>
	    </div>
	    <p class="email erreur"></p>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre numero de telephone">
	        <input class="input100 has-val" type="text" id="telephone" name="telephone" value="<% out.print(C.getTelephone()); %>" readonly>
	        <span class="focus-input100" data-placeholder="Téléphone"></span>
	    </div>
	    <p class="telephone erreur"></p>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre numéro d'identité">
	        <input class="input100 has-val" type="text" name="identite" value="<% out.print(C.getIdentite()); %>" readonly>
	        <span class="focus-input100" data-placeholder="Numéro d'identité"></span>
	    </div>
        <div class="wrap-input100 validate-input" data-validate = "Entrer le nom d'utilisateur">
            <input class="input100 has-val" type="text" id="utilisateur" name="utilisateur" value="<% out.print(C.getUtilisateur()); %>" readonly>
            <span class="focus-input100" data-placeholder="Nom d'utilisateur"></span>
        </div>
        <div class="wrap-input100 validate-input" data-validate="Entrer le mot de passe">
            <span class="btn-show-pass"><i class="zmdi zmdi-eye"></i></span>
            <input class="input100 has-val" type="password" id="passe" name="passe" value="<% out.print(C.getPasse()); %>" readonly>
            <span class="focus-input100" data-placeholder="Mot de passe"></span>
        </div>
    </form>
</div>

<script src="js/login.js"></script>

<script type="text/javascript">
	$('.fa-times-circle').click(function (){
		$('.clientProfile').hide();
	});
</script>
