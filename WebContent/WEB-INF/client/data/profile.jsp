<%@page import="modele.Client"%>
<% Client C = (Client)session.getAttribute("client"); %>

<div class="wrap-login100">
	<i class="fa fa-remove"></i>
	<label for="file">
		<img id="img-client" src="images/client/<%out.print(C.getUtilisateur());%>/profile.jpg">
	</label>
	<form action="Image" method="post" id="form-image" enctype="multipart/form-data">
		<input id="file" type="file" name="file" disabled="disabled">
	</form>
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
        <div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn">
                <div class="login100-form-bgbtn"></div>
                <button class="login100-form-btn modifier">Modifier</button>
            </div>
        </div>
        <div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn" style="width: 49%;">
                <div class="login100-form-bgbtn"></div>
                <button class="login100-form-btn enregistrer" style="display: none;">Enregistrer</button>
            </div>
            <div class="wrap-login100-form-btn" style="width: 49%;">
                <div class="login100-form-bgbtn"></div>
                <button class="login100-form-btn annuler" style="display: none;">Annuler</button>
            </div>
        </div>
    </form>
    <div class="snackbar-container">
    	<div class="snackbar">Veuillez saisir des informations valides</div>
    </div>
</div>

<script src="js/login.js"></script>

<script type="text/javascript">
	$('.fa-remove').click(function (){
		$('.limiter').hide();
	});

	$('.profile .modifier').click(function (e) {
		e.preventDefault();
		$('.profile #adresse').removeAttr("readonly");
		$('.profile #email').removeAttr("readonly");
		$('.profile #telephone').removeAttr("readonly");
		$('.profile #passe').removeAttr("readonly");
		
		$('.profile #adresse').attr("required","required");
		$('.profile #email').attr("required","required");
		$('.profile #telephone').attr("required","required");
		$('.profile #passe').attr("required","required");
		
		$('.profile .modifier').hide();
		$('.profile .annuler').show();
		$('.profile .enregistrer').show();
	});

	$('.profile .annuler').click(function (e) {
		e.preventDefault();
		$('#a-profile').click();
	});

	$('.profile .enregistrer').click(function(e){
		e.preventDefault();
		if($('.profile .enregistrer').attr('erreur')=='erreur'){
			$('.snackbar').addClass('show');
			setTimeout(function(){$('.snackbar').removeClass('show');}, 3000);
		}
		else{
			$.ajax({
				type: $('#form-profile').attr('method'),
		       	url: $('#form-profile').attr('action'),
		       	data: $('#form-profile').serialize()+'&redirect=profile',
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
		}
	});
	
	$('.profile #adresse').focusout(function () {
		if($('.profile #adresse').val()=="" || $('.profile #adresse').val().match(/^#?([a-zA-Z0-9_ \-\.]{10,50})$/)==null){
			$('.profile .enregistrer').attr('erreur','erreur');
		}
		else{
			$('.profile .enregistrer').removeAttr('erreur');
		}
	});
	
	$('.profile #passe').focusout(function () {
		if($('.profile #passe').val()=="" || $('.form-client #passe').val().match(/^#?([a-zA-Z0-9_ \-\.]{4,25})$/)==null){
			$('.profile .enregistrer').attr('erreur','erreur');
		}
		else{
			$('.profile .enregistrer').removeAttr('erreur');
		}
	});
	
	$('.profile #email').focusout(function () {
		$.ajax({
			type: 'POST',
	    	url: 'Client',
	    	data: 'redirect=email&email='+$('.profile #email')[0].value,
	       	success: function (data) {
	       		$('.profile .email')[0].innerHTML=data;
	       		$('.profile .enregistrer').attr('erreur','erreur');
	       		if(data=='' && $('.profile #email').val()!="" && $('.profile #email').val().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/)!=null){
	       			$('.profile .enregistrer').removeAttr('erreur');
	       		}
	       	},
	       	error: function (data){
	       		$('.profile .email')[0].innerHTML="";
	       	},
	   	});
	});
	
	$('.profile #telephone').focusout(function () {
		$.ajax({
			type: 'POST',
	    	url: 'Client',
	    	data: 'redirect=telephone&telephone='+$('.profile #telephone')[0].value,
	    	success: function (data) {
	       		$('.profile .telephone')[0].innerHTML=data;
	       		$('.profile .enregistrer').attr('erreur','erreur');
	       		if(data=='' && $('.profile #telephone').val()!="" && $('.profile #telephone').val().match(/^#?([0-9]{9}|[0-9]{10})$/)!=null){
	       			$('.profile .enregistrer').removeAttr('erreur');
	       		}
	       	},
	       	error: function (data){
	       		$('.profile .telephone')[0].innerHTML="";
	       	},
	   	});
	});
</script>