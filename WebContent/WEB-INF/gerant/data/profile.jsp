<%@page import="modele.Gerant"%>
<%Gerant G = (Gerant)session.getAttribute("gerant");%>

<div class="wrap-login100">
	<i class="fa fa-remove"></i>
	<form class="login100-form validate-form form-profile" method="POST" action="Gerant">
	    <span class="login100-form-title p-b-10"><img src="img/MonBIEN.png" style="height: 60px;"></span>
	    <span class="login100-form-title p-b-20">MonBIEN</span>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre nom">
	        <input class="input100 has-val" type="text" name="nom" value="<%out.print(G.getNom());%>" readonly>
	        <span class="focus-input100" data-placeholder="Nom"></span>
	    </div>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre prenom">
	        <input class="input100 has-val" type="text" name="prenom" value="<%out.print(G.getPrenom());%>" readonly>
	        <span class="focus-input100" data-placeholder="Prenom"></span>
	    </div>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre date de naissance">
	        <input class="input100 has-val" type="text" name="naissance" value="<%out.print(G.getNaissance());%>" readonly>
	        <span class="focus-input100" data-placeholder="Date de naissance"></span>
	    </div>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre adresse">
	        <input class="input100 has-val" type="text" id="adresse" name="adresse"  value="<%out.print(G.getAdresse());%>" readonly>
	        <span class="focus-input100" data-placeholder="adresse"></span>
	    </div>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre email forme 'a@b.c'">
	        <input class="input100 has-val" type="email" id="email" name="email" value="<%out.print(G.getEmail());%>" readonly>
	        <span class="focus-input100" data-placeholder="email"></span>
	    </div>
	    <p class="email erreur"></p>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre numero de telephone">
	        <input class="input100 has-val" type="text" id="telephone" name="telephone" value="<%out.print(G.getTelephone());%>" readonly>
	        <span class="focus-input100" data-placeholder="Téléphone"></span>
	    </div>
	    <p class="telephone erreur"></p>
	    <div class="wrap-input100 validate-input" data-validate = "Entrer votre numéro d'identité">
	        <input class="input100 has-val" type="text" name="identite" value="<%out.print(G.getIdentite());%>" readonly>
	        <span class="focus-input100" data-placeholder="Numéro d'identité"></span>
	    </div>
        <div class="wrap-input100 validate-input" data-validate = "Entrer le nom d'utilisateur">
            <input class="input100 has-val" type="text" id="utilisateur" name="utilisateur" value="<%out.print(G.getUtilisateur());%>" readonly>
            <span class="focus-input100" data-placeholder="Nom d'utilisateur"></span>
        </div>
        <div class="wrap-input100 validate-input" data-validate="Entrer le mot de passe">
            <span class="btn-show-pass"><i class="zmdi zmdi-eye"></i></span>
            <input class="input100 has-val" type="password" id="passe" name="passe" value="<%out.print(G.getPasse());%>" readonly>
            <span class="focus-input100" data-placeholder="Mot de passe"></span>
        </div>
        <div class="container-login100-form-btn m-b-15">
            <div class="wrap-login100-form-btn">
                <div class="login100-form-bgbtn"></div>
                <button class="modifier login100-form-btn">Modifier</button>
                <button class="enregistrer login100-form-btn" name="redirect" value="profile" style="display: none;">Enregistrer</button>
                <button class="annuler login100-form-btn" style="display: none;">Annuler</button>
            </div>
        </div>
    </form>
</div>

<script src="js/login.js"></script>
<script type="text/javascript">
	$('.fa-remove').click(
	    function (){
	        $('.limiter').hide();
	});

	$('.profile #email').focusout(function () {
		$.ajax({
			type: 'POST',
	    	url: 'Gerant',
	    	data: 'redirect=email&email='+email[0].value,
        	success: function (data) {
        		$('.profile .email')[0].innerHTML=data;
        	},
        	error: function (data){
        		$('.profile .email')[0].innerHTML="";
        	},
    	});
	});
	
	$('.profile #telephone').focusout(function () {
		$.ajax({
			type: 'POST',
	    	url: 'Gerant',
	    	data: 'redirect=telephone&telephone='+telephone[0].value,
	    	success: function (data) {
        		$('.profile .telephone')[0].innerHTML=data;
        	},
        	error: function (data){
        		$('.profile .telephone')[0].innerHTML="";
        	},
    	});
	});

	$('.profile .modifier').click(function (e) {
		e.preventDefault();
		$('.profile #adresse').removeAttr("readonly");
		$('.profile #email').removeAttr("readonly");
		$('.profile #telephone').removeAttr("readonly");
		$('.profile #passe').removeAttr("readonly");
		
		$('.profile .modifier').hide();
		$('.profile .annuler').show();
		$('.profile .enregistrer').show();
	});
	
	$('.profile .annuler').click(function (e) {
		e.preventDefault();
		$('.profile #adresse').attr("readonly","readonly");
		$('.profile #email').attr("readonly","readonly");
		$('.profile #telephone').attr("readonly","readonly");
		$('.profile #passe').attr("readonly","readonly");
		
		$('.profile .enregistrer').hide();
		$('.profile .annuler').hide();
		$('.profile .modifier').show();
	});
	
	$('.profile .enregistrer').click(function (e) {
		e.preventDefault();
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
		
		$('.profile .enregistrer').hide();
		$('.profile .annuler').hide();
		$('.profile .modifier').show();
	});
</script>