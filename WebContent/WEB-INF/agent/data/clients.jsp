<%@page import="java.util.ArrayList"%>
<%@page import="modele.Client"%>
<%ArrayList<Client> clients = (ArrayList<Client>)session.getAttribute("clients");%>
<%if(clients.isEmpty()){%>
<h2>Pas de clients</h2>
<%}else{%>
<table class="table-client">
	<thead>
	    <tr>
	        <th scope="col">Nom d'utilisateur</th>
	        <th scope="col">Mot de passe</th>
	        <th scope="col">Nom</th>
	        <th scope="col">Prenom</th>
	        <th scope="col">Date de naissance</th>
	        <th scope="col">Numéro de téléphone</th>
	        <th scope="col">Email</th>
	        <th scope="col">Adresse</th>
	        <th scope="col">Numéro d'identité</th>
	        <th scope="col">Etat</th>
	    </tr>
	</thead>
	
	<%for(int i=0 ; i<clients.size() ; i++){%>
	<tbody class="<%out.print("form"+i);%>">
	    <tr>
	        <td data-label="Nom d'utilisateur"><input class="utilisateur" type="text" name="utilisateur" value="<%out.print(clients.get(i).getUtilisateur());%>" readonly></td>
	        <td data-label="Mot de passe"><input form="<% out.print("form"+i); %>" class="passe" type="text" name="passe" value="<%out.print(clients.get(i).getPasse());%>" readonly></td>
	        <td data-label="Nom"><input class="nom" type="text" name="nom" value="<%out.print(clients.get(i).getNom());%>" readonly></td>
	        <td data-label="Prénom"><input class="prenom" type="text" name="prenom" value="<%out.print(clients.get(i).getPrenom());%>" readonly></td>
	        <td data-label="Date de naissanse"><input class="naissance" type="text" name="naissance" value="<%out.print(clients.get(i).getNaissance());%>" readonly></td>
	        <td data-label="Numéro de téléphone"><input form="<% out.print("form"+i); %>" class="telephone" type="number" min="0" name="telephone" value="<%out.print(clients.get(i).getTelephone());%>" readonly></td>
	        <td data-label="Email"><input form="<% out.print("form"+i); %>" class="email" type="text" name="email" value="<%out.print(clients.get(i).getEmail());%>" readonly></td>
	        <td data-label="Adresse"><input form="<% out.print("form"+i); %>" class="adresse" type="text" name="adresse" value="<%out.print(clients.get(i).getAdresse());%>" readonly></td>
	        <td data-label="Numéro d'identité"><input class="identite" type="text" name="identite" value="<%out.print(clients.get(i).getIdentite());%>" readonly></td>
	        <td data-label="Etat"><input type="text" class="banner" value="<%if(clients.get(i).isBanner()) out.print("bloqué");else out.print("débloqué");%>" readonly></td>
	        <td data-label="Action">
	        	<button form="<% out.print("form"+i); %>" class="modifier">modifier</button>
	        	<button form="<% out.print("form"+i); %>" class="editer" style="display: none;">modifier</button>
	        	<button form="<% out.print("form"+i); %>" class="annuler" style="display: none;">annuler</button>
	        	<button form="<% out.print("form"+i); %>" class="etat"><%if(!clients.get(i).isBanner()) out.print("bloqué");else out.print("débloqué");%></button>
	        </td>
	    </tr>
 	</tbody> 
	 <%}%>
</table>
	<div class="snackbar-container">
		<div class="snackbar">Veuillez saisir des informations valides</div>
	</div>
<%}%>
<script type="text/javascript">
	var etat = $('.etat');
	var modifier = $('.modifier');
	var editer = $('.editer');
	var annuler = $('.annuler');
		
	etat.click(function(){
		var utilisateur=$('.'+this.getAttribute("form")+' .utilisateur')[0].value;
		var banner=$('.'+this.getAttribute("form")+' .banner')[0].value;
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=etat&utilisateur='+utilisateur+'&banner='+banner,
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
		
	modifier.click(function(){
		$('.table-client input').css('background-color','#FFFFFF00');
		$('.table-client .editer').hide();
		$('.table-client .modifier').show();
		$('.table-client .annuler').hide();
		$('.table-client .etat').show();
		$('.table-client input').attr("readonly","readonly");
		
		$('.'+this.getAttribute("form")+' .passe').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .adresse').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .telephone').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .email').removeAttr("readonly");
		
		$('.'+this.getAttribute("form")+' .etat').hide();
		$('.'+this.getAttribute("form")+' .annuler').show();
		$('.'+this.getAttribute("form")+' .modifier').hide();
		$('.'+this.getAttribute("form")+' .editer').show();
	});
		
	annuler.click(function(){
		$('#a-client').click();
	});
		
	editer.click(function(){
		var utilisateur=$('.'+this.getAttribute("form")+' .utilisateur');
		var passe=$('.'+this.getAttribute("form")+' .passe');
		var adresse=$('.'+this.getAttribute("form")+' .adresse');
		var telephone=$('.'+this.getAttribute("form")+' .telephone');
		var email=$('.'+this.getAttribute("form")+' .email');
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=modifierClient&utilisateur='+utilisateur[0].value+'&passe='+passe[0].value+'&adresse='+adresse[0].value+'&telephone='+telephone[0].value+'&email='+email[0].value,
	    	success: function (data) {
	    		if(email[0].style.backgroundColor=='rgb(235, 137, 78)' || telephone[0].style.backgroundColor=='rgb(235, 137, 78)' || adresse[0].style.backgroundColor=='rgb(235, 137, 78)' || passe[0].style.backgroundColor=='rgb(235, 137, 78)'){
    			    $('.client .snackbar').addClass('show');
    			    setTimeout(function(){$('.client .snackbar').removeClass('show');}, 3000);
        		}
        		else{
        			$('.clients .liste').remove();
            		$('.clients').append("<div class=\"liste\"></div>");
            		$('.clients .liste').append(data);
        		}
        	},
        	error: function (data){
        		wondow.location="";
        	},
    	});
	});
	
	$('.telephone').focusout(function(){
		var utilisateur=$('.'+this.getAttribute("form")+' .utilisateur')[0].value;
		var telephone=$('.'+this.getAttribute("form")+' .telephone');
		$.ajax({
			type: 'POST',
	    	url: 'Client',
	    	data: 'redirect=telephone&utilisateur='+utilisateur+'&telephone='+telephone[0].value,
	    	success: function (data) {
	    		if(data=='' && telephone.val()!="" && telephone.val().match(/^#?([0-9]{9}|[0-9]{10})$/)!=null){
	    			telephone.css('background-color','89eb4e');
	    		}
	    		else{
	    			telephone.css('background-color','eb894e');
	    		}
        	},
    	});
	});
	
	$('.passe').focusout(function(){
		var passe=$('.'+this.getAttribute("form")+' .passe');
	    if(passe.val()!="" && passe.val().match(/^#?([a-zA-Z0-9_ \-\.]{4,25})$/)!=null){
	    	passe.css('background-color','89eb4e');
   		}
   		else{
   			passe.css('background-color','eb894e');
   		}
	});
	
	$('.adresse').focusout(function(){
		var adresse=$('.'+this.getAttribute("form")+' .adresse');
	    if(adresse.val()!="" && adresse.val().match(/^#?([a-zA-Z0-9_ \-\.]{10,50})$/)!=null){
	    	adresse.css('background-color','89eb4e');
   		}
   		else{
   			adresse.css('background-color','eb894e');
   		}
	});
	
	$('.email').focusout(function(){
		var utilisateur=$('.'+this.getAttribute("form")+' .utilisateur')[0].value;
		var email=$('.'+this.getAttribute("form")+' .email');
		$.ajax({
			type: 'POST',
	    	url: 'Client',
	    	data: 'redirect=email&utilisateur='+utilisateur+'&&email='+email[0].value,
	    	success: function (data) {
	    		if(data=='' && email.val()!="" && email.val().match(/^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\.)+))([a-zA-Z]{1,5}|[0-9]{1,3})(\]?)$/)!=null){
	    			email.css('background-color','89eb4e');
	    		}
	    		else{
	    			email.css('background-color','eb894e');
	    		}
        	},
    	});
	});
</script>