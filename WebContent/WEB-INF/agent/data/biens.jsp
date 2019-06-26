<%@page import="java.util.ArrayList"%>
<%@page import="modele.Appartement"%>
<%@page import="modele.Locale"%>
<%@page import="modele.Terrain"%>
<%@page import="modele.Villa"%>
<%ArrayList<Appartement> appartements = (ArrayList<Appartement>)session.getAttribute("appartements");%>
<%ArrayList<Locale> locales = (ArrayList<Locale>)session.getAttribute("locales");%>
<%ArrayList<Terrain> terrains = (ArrayList<Terrain>)session.getAttribute("terrains");%>
<%ArrayList<Villa> villas = (ArrayList<Villa>)session.getAttribute("villas");%>

<%if(appartements.isEmpty() && locales.isEmpty() && terrains.isEmpty() && villas.isEmpty()){%>
<h2>Pas de biens</h2>
<%}else{
	if(!appartements.isEmpty()){%>
		<h3>Liste des appartements</h3>
		<div class="over-x">
		<table class="table-bien table-appartement">
			<thead>
			    <tr>
			        <th scope="col">ID</th>
			        <th scope="col">Ville</th>
			        <th scope="col">Adresse</th>
			        <th scope="col">Prix</th>
			        <th scope="col">Surface</th>
			        <th scope="col">Propriétaire</th>
			        <th scope="col">Etat</th>
			        <th scope="col">Etage</th>
			        <th scope="col">Pieces</th>
			        <th scope="col">Climatisation</th>
			        <th scope="col">Meuble</th>
			        <th scope="col">Balcon</th>
			        <th scope="col">Stationnement</th>
			    </tr>
			</thead>
			
			<%for(int i=0 ; i<appartements.size() ; i++){%>
			<tbody class="<%out.print("appartement"+i);%>">
			    <tr>
			        <td data-label="ID"><input class="id" type="text" name="id" value="<%out.print(appartements.get(i).getId());%>" readonly></td>
			        <td data-label="Ville"><input class="ville" type="text" name="ville" value="<%out.print(appartements.get(i).getVille());%>" readonly></td>
			        <td data-label="Adresse"><input class="adresse" type="text" name="adresse" value="<%out.print(appartements.get(i).getAdresse());%>" readonly></td>
			        <td data-label="Prix"><input class="prix" type="number" min="0" name="prix" value="<%out.print(appartements.get(i).getPrix());%>" readonly></td>
			        <td data-label="Surface"><input class="surface" type="number" min="0" name="surface" value="<%out.print(appartements.get(i).getSurface());%>" readonly></td>
			        <td data-label="Propriétaire"><input class="proprietaire" type="text" name="proprietaire" value="<%out.print(appartements.get(i).getProprietaire());%>" readonly></td>
			        <td data-label="Etat"><input class="cacher" type="text" name="cacher" value="<%if(appartements.get(i).isCacher()) out.print("caché");else out.print("publié");%>" readonly></td>
			        <td data-label="Etage"><input class=".etage" type="number" min="0" name="etage" value="<%out.print(appartements.get(i).getEtage());%>" readonly></td>
			        <td data-label="Pieces"><input class="piece" type="number" min="0" name="piece" value="<%out.print(appartements.get(i).getPiece());%>" readonly></td>
			        <td data-label="Climatisation">
			        	<select class="climatisation" class="input100 has-val" name="climatisation" disabled>
			        	<% if(appartements.get(i).getClimatisation().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Meuble">
			        	<select class="meuble" class="input100 has-val" name="meuble" disabled>
	                    <% if(appartements.get(i).getMeuble().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
					<td data-label="Balcon">
			        	<select class="balcon" class="input100 has-val" name="balcon" disabled>
	                    <% if(appartements.get(i).getBalcon().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Stationnement">
			        	<select class="stationnement" class="input100 has-val" name="stationnement" disabled>
	                    <% if(appartements.get(i).getStationnement().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Action">
			        	<button form="<% out.print("appartement"+i); %>" class="modifier">modifier</button>
			        	<button form="<% out.print("appartement"+i); %>" class="editer" style="display: none;">modifier</button>
			        	<button form="<% out.print("appartement"+i); %>" class="annuler" style="display: none;">annuler</button>
			        	<button form="<% out.print("appartement"+i); %>" class="etat"><%if(!appartements.get(i).isCacher()) out.print("caché");else out.print("publié");%></button>
			        </td>
			    </tr>
		 	</tbody> 
			 <%}%>
		</table></div>
	<%}%>
	
	<%if(!locales.isEmpty()){%>
		<h3>Liste des locales</h3>
		<div class="over-x">
		<table class="table-bien table-locale">
			<thead>
			    <tr>
			        <th scope="col">ID</th>
			        <th scope="col">Ville</th>
			        <th scope="col">Adresse</th>
			        <th scope="col">Prix</th>
			        <th scope="col">Surface</th>
			        <th scope="col">Propriétaire</th>
			        <th scope="col">Etat</th>
			        <th scope="col">Interieur</th>
					<th scope="col">Exterieur</th>
					<th scope="col">Gas</th>
					<th scope="col">Electricité</th>
					<th scope="col">Stationnement</th>
					<th scope="col">Alarm</th>
			    </tr>
			</thead>
			
			<%for(int i=0 ; i<locales.size() ; i++){%>
			<tbody class="<%out.print("locale"+i);%>">
			    <tr>
			        <td data-label="ID"><input class="id" type="text" name="id" value="<%out.print(locales.get(i).getId());%>" readonly></td>
			        <td data-label="Ville"><input class="ville" type="text" name="ville" value="<%out.print(locales.get(i).getVille());%>" readonly></td>
			        <td data-label="Adresse"><input class="adresse" type="text" name="adresse" value="<%out.print(locales.get(i).getAdresse());%>" readonly></td>
			        <td data-label="Prix"><input class="prix" type="number" min="0" name="prix" value="<%out.print(locales.get(i).getPrix());%>" readonly></td>
			        <td data-label="Surface"><input class="surface" type="number" min="0" name="surface" value="<%out.print(locales.get(i).getSurface());%>" readonly></td>
			        <td data-label="Propriétaire"><input class="proprietaire" type="text" name="proprietaire" value="<%out.print(locales.get(i).getProprietaire());%>" readonly></td>
			        <td data-label="Etat"><input class="cacher" type="text" name="cacher" value="<%if(locales.get(i).isCacher()) out.print("caché");else out.print("publié");%>" readonly></td>
			        <td data-label="Finis d'interieur">
			        	<select class="interieur" class="input100 has-val" name="interieur" disabled>
	                    <% if(locales.get(i).getInterieur().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Finis d'exterieur">
			        	<select class="exterieur" class="input100 has-val" name="exterieur" disabled>
	                    <% if(locales.get(i).getExterieur().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Gas">
			        	<select class="gas" class="input100 has-val" name="gas" disabled>
	                    <% if(locales.get(i).getGas().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Electricité">
			        	<select class="electricite" class="input100 has-val" name="electricite" disabled>
	                    <% if(locales.get(i).getElectricite().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Stationnement">
			        	<select class="stationnement" class="input100 has-val" name="stationnement" disabled>
	                    <% if(locales.get(i).getStationnement().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Alarm">
			        	<select class="alarm" class="input100 has-val" name="alarm" disabled>
	                    <% if(locales.get(i).getAlarm().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Action">
			        	<button form="<% out.print("locale"+i); %>" class="modifier">modifier</button>
			        	<button form="<% out.print("locale"+i); %>" class="editer" style="display: none;">modifier</button>
			        	<button form="<% out.print("locale"+i); %>" class="annuler" style="display: none;">annuler</button>
			        	<button form="<% out.print("locale"+i); %>" class="etat"><%if(!locales.get(i).isCacher()) out.print("caché");else out.print("publié");%></button>
			        </td>
			    </tr>
		 	</tbody> 
			 <%}%>
		</table></div>
	<%}%>
	
	<%if(!terrains.isEmpty()){%>
		<h3>Liste des lots terrains</h3>
		<div class="over-x">
		<table class="table-bien table-terrain">
			<thead>
			    <tr>
			        <th scope="col">ID</th>
			        <th scope="col">Ville</th>
			        <th scope="col">Adresse</th>
			        <th scope="col">Prix</th>
			        <th scope="col">Surface</th>
			        <th scope="col">Propriétaire</th>
			        <th scope="col">Etat</th>
			        <th scope="col">Agricole</th>
			    </tr>
			</thead>
			
			<%for(int i=0 ; i<terrains.size() ; i++){%>
			<tbody class="<%out.print("terrain"+i);%>">
			    <tr>
			        <td data-label="ID"><input class="id" type="text" name="id" value="<%out.print(terrains.get(i).getId());%>" readonly></td>
			        <td data-label="Ville"><input class="ville" type="text" name="ville" value="<%out.print(terrains.get(i).getVille());%>" readonly></td>
			        <td data-label="Adresse"><input class="adresse" type="text" name="adresse" value="<%out.print(terrains.get(i).getAdresse());%>" readonly></td>
			        <td data-label="Prix"><input class="prix" type="number" min="0" name="prix" value="<%out.print(terrains.get(i).getPrix());%>" readonly></td>
			        <td data-label="Surface"><input class="surface" type="number" min="0" name="surface" value="<%out.print(terrains.get(i).getSurface());%>" readonly></td>
			        <td data-label="Propriétaire"><input class="proprietaire" type="text" name="proprietaire" value="<%out.print(terrains.get(i).getProprietaire());%>" readonly></td>
			        <td data-label="Etat"><input class="cacher" type="text" name="cacher" value="<%if(terrains.get(i).isCacher()) out.print("caché");else out.print("publié");%>" readonly></td>
			        <td data-label="Agricole">
			        	<select class="agricole" class="input100 has-val" name="agricole" disabled>
	                    <% if(terrains.get(i).getAgricole().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Action">
			        	<button form="<% out.print("terrain"+i); %>" class="modifier">modifier</button>
			        	<button form="<% out.print("terrain"+i); %>" class="editer" style="display: none;">modifier</button>
			        	<button form="<% out.print("terrain"+i); %>" class="annuler" style="display: none;">annuler</button>
			        	<button form="<% out.print("terrain"+i); %>" class="etat"><%if(!terrains.get(i).isCacher()) out.print("caché");else out.print("publié");%></button>
			        </td>
			    </tr>
		 	</tbody> 
			 <%}%>
		</table></div>
	<%}%>

	<%if(!villas.isEmpty()){%>
		<h3>Liste des villas</h3>
		<div class="over-x">
		<table class="table-bien table-villa">
			<thead>
			    <tr>
			        <th scope="col">ID</th>
			        <th scope="col">Ville</th>
			        <th scope="col">Adresse</th>
			        <th scope="col">Prix</th>
			        <th scope="col">Surface</th>
			        <th scope="col">Propriétaire</th>
			        <th scope="col">Etat</th>
		        	<th scope="col">Etage</th>
					<th scope="col">Piece</th>
					<th scope="col">Picine</th>
					<th scope="col">Garage</th>
					<th scope="col">Jardin</th>
					<th scope="col">Climatisation</th>
					<th scope="col">Meuble</th>
					<th scope="col">Alarm</th>
					<th scope="col">Chemine</th>
					<th scope="col">Interphone</th>
			    </tr>
			</thead>
			
			<%for(int i=0 ; i<villas.size() ; i++){%>
			<tbody class="<%out.print("villa"+i);%>">
			    <tr>
			        <td data-label="ID"><input class="id" type="text" name="id" value="<%out.print(villas.get(i).getId());%>" readonly></td>
			        <td data-label="Ville"><input class="ville" type="text" name="ville" value="<%out.print(villas.get(i).getVille());%>" readonly></td>
			        <td data-label="Adresse"><input class="adresse" type="text" name="adresse" value="<%out.print(villas.get(i).getAdresse());%>" readonly></td>
			        <td data-label="Prix"><input class="prix" type="number" min="0" name="prix" value="<%out.print(villas.get(i).getPrix());%>" readonly></td>
			        <td data-label="Surface"><input class="surface" type="number" min="0" name="surface" value="<%out.print(villas.get(i).getSurface());%>" readonly></td>
			        <td data-label="Propriétaire"><input class="proprietaire" type="text" name="proprietaire" value="<%out.print(villas.get(i).getProprietaire());%>" readonly></td>
			        <td data-label="Etat"><input class="cacher" type="text" name="cacher" value="<%if(villas.get(i).isCacher()) out.print("caché");else out.print("publié");%>" readonly></td>
			        <td data-label="Etage"><input class="etage" type="number" min="0" name="etage" value="<%out.print(villas.get(i).getEtage());%>" readonly></td>
			        <td data-label="Piece"><input class="piece" type="number" min="0" name="piece" value="<%out.print(villas.get(i).getPiece());%>" readonly></td>
			        <td data-label="Picine">
			        	<select class="picine" class="input100 has-val" name="picine" disabled>
	                    <% if(villas.get(i).getPicine().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Jardin">
			        	<select class="jardin" class="input100 has-val" name="jardin" disabled>
	                    <% if(villas.get(i).getJardin().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Garage">
			        	<select class="garage" class="input100 has-val" name="garage" disabled>
	                    <% if(villas.get(i).getGarage().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Climatisation">
			        	<select class="climatisation" class="input100 has-val" name="climatisation" disabled>
	                    <% if(villas.get(i).getClimatisation().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Meuble">
			        	<select class="meuble" class="input100 has-val" name="meuble" disabled>
	                    <% if(villas.get(i).getMeuble().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Alarm">
			        	<select class="alarm" class="input100 has-val" name="alarm" disabled>
	                    <% if(villas.get(i).getAlarm().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Cheminé">
			        	<select class="chemine" class="input100 has-val" name="chemine" disabled>
	                    <% if(villas.get(i).getChemine().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Interphone">
			        	<select class="interphone" class="input100 has-val" name="interphone" disabled>
	                    <% if(villas.get(i).getInterphone().equals("non")){ %>
	                        <option value="non">non</option>
	                        <option value="oui">oui</option>
	                    <%}else{ %>
	                        <option value="oui">oui</option>
	                        <option value="non">non</option>
	                    <%} %>
                        </select>
			        </td>
			        <td data-label="Action">
			        	<button form="<% out.print("villa"+i); %>" class="modifier">modifier</button>
			        	<button form="<% out.print("villa"+i); %>" class="editer" style="display: none;">modifier</button>
			        	<button form="<% out.print("villa"+i); %>" class="annuler" style="display: none;">annuler</button>
			        	<button form="<% out.print("villa"+i); %>" class="etat"><%if(!villas.get(i).isCacher()) out.print("caché");else out.print("publié");%></button>
			        </td>
			    </tr>
		 	</tbody> 
			 <%}%>
		</table></div>
	<%}%>
<%}%>
<script type="text/javascript">
	var etat = $('.table-bien .etat');
	etat.click(function(){
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		var cacher=$('.'+this.getAttribute("form")+' .cacher')[0].value;
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=etatBien&id='+id+'&cacher='+cacher,
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
	
	var annuler = $('.table-bien .annuler');
	annuler.click(function(e){
		e.preventDefault();
		$('#a-bien').click();
	});
	
	var modifier = $('.table-bien .modifier');
	modifier.click(function(){
		$('.table-bien .editer').hide();
		$('.table-bien .modifier').show();
		$('.table-bien .annuler').hide();
		$('.table-bien .etat').show();
		$('.table-bien input').attr("readonly","readonly");
		
		$('.'+this.getAttribute("form")+' .prix').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .surface').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .etage').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .piece').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .picine').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .garage').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .jardin').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .chemine').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .interphone').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .balcon').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .meuble').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .alarm').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .agricole').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .interieur').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .exterieur').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .gas').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .electricite').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .stationnement').removeAttr("disabled");
		$('.'+this.getAttribute("form")+' .climatisation').removeAttr("disabled");
		
		$('.'+this.getAttribute("form")+' .etat').hide();
		$('.'+this.getAttribute("form")+' .annuler').show();
		$('.'+this.getAttribute("form")+' .modifier').hide();
		$('.'+this.getAttribute("form")+' .editer').show();
	});
	
	var editerAppartement = $('.table-appartement .editer');
	editerAppartement.click(function(){
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		var prix=$('.'+this.getAttribute("form")+' .prix')[0].value;
		var surface=$('.'+this.getAttribute("form")+' .surface')[0].value;
		var piece=$('.'+this.getAttribute("form")+' .piece')[0].value;
		var climatisation=$('.'+this.getAttribute("form")+' .climatisation')[0].value;
		var meuble=$('.'+this.getAttribute("form")+' .meuble')[0].value;
		var balcon=$('.'+this.getAttribute("form")+' .balcon')[0].value;
		var stationnement=$('.'+this.getAttribute("form")+' .stationnement')[0].value;

		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=modifierAppartement&id='+id+'&prix='+prix+'&surface='+surface+'&piece='+piece+'&climatisation='+climatisation+'&meuble='+meuble+'&balcon='+balcon+'&stationnement='+stationnement,
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

	var editerLocale = $('.table-locale .editer');
	editerLocale.click(function(){
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		var prix=$('.'+this.getAttribute("form")+' .prix')[0].value;
		var surface=$('.'+this.getAttribute("form")+' .surface')[0].value;
		var interieur=$('.'+this.getAttribute("form")+' .interieur')[0].value;
		var exterieur=$('.'+this.getAttribute("form")+' .exterieur')[0].value;
		var gas=$('.'+this.getAttribute("form")+' .gas')[0].value;
		var electricite=$('.'+this.getAttribute("form")+' .electricite')[0].value;
		var stationnement=$('.'+this.getAttribute("form")+' .stationnement')[0].value;
		var alarm=$('.'+this.getAttribute("form")+' .alarm')[0].value;
		
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=modifierLocale&id='+id+'&prix='+prix+'&surface='+surface+'&interieur='+interieur+'&exterieur='+exterieur+'&gas='+gas+'&electricite='+electricite+'&stationnement='+stationnement+'&alarm='+alarm,
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

	var editerTerrain = $('.table-terrain .editer');
	editerTerrain.click(function(){
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		
		var prix=$('.'+this.getAttribute("form")+' .prix')[0].value;
		var surface=$('.'+this.getAttribute("form")+' .surface')[0].value;
		var agricole=$('.'+this.getAttribute("form")+' .agricole')[0].value;

		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=modifierTerrain&id='+id+'&prix='+prix+'&surface='+surface+'&agricole='+agricole,
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
	
	var editerVilla = $('.table-villa .editer');
	editerVilla.click(function(){
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		var prix=$('.'+this.getAttribute("form")+' .prix')[0].value;
		var surface=$('.'+this.getAttribute("form")+' .surface')[0].value;
		var etage=$('.'+this.getAttribute("form")+' .etage')[0].value;
		var piece=$('.'+this.getAttribute("form")+' .piece')[0].value;
		var picine=$('.'+this.getAttribute("form")+' .picine')[0].value;
		var garage=$('.'+this.getAttribute("form")+' .garage')[0].value;
		var jardin=$('.'+this.getAttribute("form")+' .jardin')[0].value;
		var climatisation=$('.'+this.getAttribute("form")+' .climatisation')[0].value;
		var meuble=$('.'+this.getAttribute("form")+' .meuble')[0].value;
		var alarm=$('.'+this.getAttribute("form")+' .alarm')[0].value;
		var chemine=$('.'+this.getAttribute("form")+' .chemine')[0].value;
		var interphone=$('.'+this.getAttribute("form")+' .interphone')[0].value;

		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=modifierVilla&id='+id+'&prix='+prix+'&surface='+surface+'&etage='+etage+'&piece='+piece+'&picine='+picine+'&garage='+garage+'&jardin='+jardin+'&climatisation='+climatisation+'&meuble='+meuble+'&alarm='+alarm+'&chemine='+chemine+'&interphone='+interphone,
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
</script>