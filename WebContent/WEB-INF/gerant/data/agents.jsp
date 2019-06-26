<%@page import="java.util.ArrayList"%>
<%@page import="modele.Agent"%>
<%ArrayList<Agent> agents = (ArrayList<Agent>)session.getAttribute("agents");%>

<table>
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
	
	<%for(int i=0 ; i<agents.size() ; i++){%>
	<tbody class="<%out.print("form"+i);%>">
	    <tr>
	        <td data-label="Nom d'utilisateur"><input class="utilisateur" type="text" name="utilisateur" value="<%out.print(agents.get(i).getUtilisateur());%>" readonly></td>
	        <td data-label="Mot de passe"><input class="passe" type="text" name="passe" value="<%out.print(agents.get(i).getPasse());%>" readonly></td>
	        <td data-label="Nom"><input class="nom" type="text" name="nom" value="<%out.print(agents.get(i).getNom());%>" readonly></td>
	        <td data-label="Prénom"><input class="prenom" type="text" name="prenom" value="<%out.print(agents.get(i).getPrenom());%>" readonly></td>
	        <td data-label="Date de naissanse"><input class="naissance" type="text" name="naissance" value="<%out.print(agents.get(i).getNaissance());%>" readonly></td>
	        <td data-label="Numéro de téléphone"><input class="telephone" type="text" name="telephone" value="<%out.print(agents.get(i).getTelephone());%>" readonly></td>
	        <td data-label="Email"><input class="email" type="text" name="email" value="<%out.print(agents.get(i).getEmail());%>" readonly></td>
	        <td data-label="Adresse"><input class="adresse" type="text" name="adresse" value="<%out.print(agents.get(i).getAdresse());%>" readonly></td>
	        <td data-label="Numéro d'identité"><input class="identite" type="text" name="identite" value="<%out.print(agents.get(i).getIdentite());%>" readonly></td>
	        <td data-label="Etat"><input type="text" class="banner" value="<%if(agents.get(i).isBanner()) out.print("bloqué");else out.print("débloqué");%>" readonly></td>
	        <td data-label="Action">
	        	<button form="<% out.print("form"+i); %>" class="modifier">modifier</button>
	        	<button form="<% out.print("form"+i); %>" class="editer" style="display: none;">modifier</button>
	        	<button form="<% out.print("form"+i); %>" class="annuler" style="display: none;">annuler</button>
	        	<button form="<% out.print("form"+i); %>" class="etat"><%if(!agents.get(i).isBanner()) out.print("bloqué");else out.print("débloqué");%></button>
	        </td>
	    </tr>
 	</tbody> 
	 <%}%>
</table>

<script type="text/javascript">
	$('.etat').click(function(){
		var utilisateur=$('.'+this.getAttribute("form")+' .utilisateur')[0].value;
		var banner=$('.'+this.getAttribute("form")+' .banner')[0].value;
		$.ajax({
			type: 'POST',
	    	url: 'Gerant',
	    	data: 'redirect=etat&utilisateur='+utilisateur+'&banner='+banner,
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
		
	$('.modifier').click(function(){
		$('.'+this.getAttribute("form")+' .passe').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .adresse').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .telephone').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .email').removeAttr("readonly");
		
		$('.'+this.getAttribute("form")+' .etat').hide();
		$('.'+this.getAttribute("form")+' .annuler').show();
		$('.'+this.getAttribute("form")+' .modifier').hide();
		$('.'+this.getAttribute("form")+' .editer').show();
	});
		
	$('.editer').click(function(){
		var utilisateur=$('.'+this.getAttribute("form")+' .utilisateur')[0].value;
		var passe=$('.'+this.getAttribute("form")+' .passe')[0].value;
		var adresse=$('.'+this.getAttribute("form")+' .adresse')[0].value;
		var telephone=$('.'+this.getAttribute("form")+' .telephone')[0].value;
		var email=$('.'+this.getAttribute("form")+' .email')[0].value;
		$.ajax({
			type: 'POST',
	    	url: 'Gerant',
	    	data: 'redirect=modifierAgent&utilisateur='+utilisateur+'&passe='+passe+'&adresse='+adresse+'&telephone='+telephone+'&email='+email,
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
	
	$('.annuler').click(function(){
		$('.'+this.getAttribute("form")+' .passe').attr("readonly","readonly");
		$('.'+this.getAttribute("form")+' .adresse').attr("readonly","readonly");
		$('.'+this.getAttribute("form")+' .telephone').attr("readonly","readonly");
		$('.'+this.getAttribute("form")+' .email').attr("readonly","readonly");
		
		$('.'+this.getAttribute("form")+' .editer').hide();
		$('.'+this.getAttribute("form")+' .modifier').show();
		$('.'+this.getAttribute("form")+' .annuler').hide();
		$('.'+this.getAttribute("form")+' .etat').show();
	});
</script>