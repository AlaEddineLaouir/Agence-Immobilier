<%@page import="java.util.ArrayList"%>
<%@page import="modele.Location"%>
<%ArrayList<Location> locations = (ArrayList<Location>)session.getAttribute("locations");%>
<%if(locations.isEmpty()){%>
<h2>Pas de locations</h2>
<%}else{%>


<table class="table-location">
	<thead>
	    <tr>
	        <th scope="col">ID</th>
	        <th scope="col">Modalité de paiement</th>
	        <th scope="col">Debut</th>
	        <th scope="col">Fin</th>
	        <th scope="col">Cout</th>
	        <th scope="col">Locataire</th>
	        <th scope="col">Bien</th>
	    </tr>
	</thead>
	
	<%for(int i=0 ; i<locations.size() ; i++){%>
	<tbody class="<%out.print("location"+i);%>">
	    <tr>
	        <td data-label="ID"><input class="id" type="text" name="id" value="<%out.print(locations.get(i).getId());%>" readonly></td>
	        <td data-label="Modalité de paiment"><input class="paiement" type="text" name="paiement" value="<%out.print(locations.get(i).getPaiement());%>" readonly></td>
	        <td data-label="Début"><input class="debut" type="text" name="debut" value="<%out.print(locations.get(i).getDebut());%>" readonly></td>
	        <td data-label="Fin"><input class="fin" type="text" name="fin" value="<%out.print(locations.get(i).getFin());%>" readonly></td>
	        <td data-label="Cout"><input class="cout" type="text" name="cout" value="<%out.print(locations.get(i).getCout());%>" readonly></td>
	        <td data-label="Locataire"><input class="locataire" type="text" name="locataire" value="<%out.print(locations.get(i).getLocataire());%>" readonly></td>
	        <td data-label="Bien"><input class="bien" type="text" name="bien" value="<%out.print(locations.get(i).getBien());%>" readonly></td>
	        <td data-label="Action">
	        	<button form="<% out.print("location"+i); %>" class="contrat">contrat</button>
	        	<button form="<% out.print("location"+i); %>" class="paiement-location">paiements</button>
	        	<button form="<% out.print("location"+i); %>" class="annuler">annuler</button>
	        </td>
	    </tr>
 	</tbody> 
	 <%}%>
</table>
<%}%>
<script type="text/javascript">
	var contrat = $('.table-location .contrat');
	var paiement = $('.table-location .paiement-location');
	var annuler = $('.table-location .annuler');
		
	annuler.click(function(){
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=annulerLocation&id='+id,
	    	success: function (data) {
        		$('.locations .liste').remove();
        		$('.locations').append("<div class=\"liste\"></div>");
        		$('.locations .liste').append(data);
        	},
        	error: function (data){
        		$('.locations .liste').remove();
        		$('.locations').append("<div class=\"liste\"><h2>Pas de rendez-vous</h2></div>");
        	},
    	});
	});
	
	paiement.click(function(){
		$('.paiement').show();
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		var form=$(this).attr('form');
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=paiements&id='+id,
	    	success: function (data) {
        		$('.paiement .container-login100').remove();
        		$('.paiement').append("<div class=\"container-login100\"></div>");
        		$('.paiement .container-login100').append(data);
        		$('.paiement #btn-paiement').attr('form', form);
        	},
        	error: function (data){
        		$('.paiement .container-login100').remove();
        		$('.paiement').append("<div class=\"container-login100\"></div>");
        	},
    	});
	});
	
	contrat.click(function(){
		$('#contrat').show();
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=contrat&id='+id,
	    	success: function (data) {
        		$('#contrat .imprimable').remove();
        		$('#contrat').append("<div class=\"imprimable\"></div>");
        		$('#contrat .imprimable').append(data);
        	},
        	error: function (data){
        		$('#contrat .imprimable').remove();
        		$('#contrat').append("<div class=\"imprimable\"></div>");
        	},
    	});
	});
</script>