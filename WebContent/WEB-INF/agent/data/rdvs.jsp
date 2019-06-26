<%@page import="java.util.ArrayList"%>
<%@page import="modele.RDV"%>
<%ArrayList<RDV> RDVs = (ArrayList<RDV>)session.getAttribute("RDVs");%>
<%if(RDVs.isEmpty()){%>
<h2>Pas de rendez-vous</h2>
<%}else{%>
<table class="table-rdv">
	<thead>
	    <tr>
	        <th scope="col">ID</th>
	        <th scope="col">Date de RDV</th>
	        <th scope="col">Heure de RDV</th>
	        <th scope="col">Objet de RDV</th>
	        <th scope="col">Moyenne de contact</th>
	        <th scope="col">Client concerné</th>
	        <th scope="col">Bien concerné</th>
	    </tr>
	</thead>
	
	<%for(int i=0 ; i<RDVs.size() ; i++){%>
	<tbody class="<%out.print("rdv"+i);%>">
	    <tr>
	        <td data-label="ID"><input class="id" type="text" name="id" value="<%out.print(RDVs.get(i).getId());%>" readonly></td>
	        <td data-label="Date de RDV"><input style="background-color: #fff; border: none;" class="dateRDV notempty" type="date" min="2018-06-08" name="dateRDV" value="<%out.print(RDVs.get(i).getDateRDV());%>" readonly></td>
	        <td data-label="Heure de RDV"><input class="heureRDV" type="text" name="heureRDV" value="<%out.print(RDVs.get(i).getHeureRDV());%>" readonly></td>
	        <td data-label="Objet de RDV"><input class="objetRDV" type="text" name="objetRDV" value="<%out.print(RDVs.get(i).getObjetRDV());%>" readonly></td>
	        <td data-label="Moyenne de contact"><input class="contact" style="text-align: left;" type="text" name="contact" value="<%out.print(RDVs.get(i).getContact());%>" readonly></td>
	        <td data-label="Client concerné"><input class="idclient" type="text" name="client" value="<%out.print(RDVs.get(i).getClient());%>" readonly></td>
	        <td data-label="Bien concerné"><input class="idbien" type="text" name="bien" value="<%out.print(RDVs.get(i).getBien());%>" readonly></td>
	        <td data-label="Action">
	        	<button form="<% out.print("rdv"+i); %>" class="modifier">modifier</button>
	        	<button form="<% out.print("rdv"+i); %>" class="editer" style="display: none;">modifier</button>
	        	<button form="<% out.print("rdv"+i); %>" class="annuler" style="display: none;">annuler</button>
	        	<button form="<% out.print("rdv"+i); %>" class="supprimer">supprimer</button>
	        </td>
	    </tr>
 	</tbody> 
	 <%}%>
</table>
<%}%>
<script type="text/javascript">
	var supprimer = $('.table-rdv .supprimer');
	var modifier = $('.table-rdv .modifier');
	var editer = $('.table-rdv .editer');
	var annuler = $('.table-rdv .annuler');
		
	supprimer.click(function(){
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=supprimerRDV&id='+id,
        	success: function (data) {
        		$('.rdvs .liste').remove();
        		$('.rdvs').append("<div class=\"liste\"></div>");
        		$('.rdvs .liste').append(data);
        	},
        	error: function (data){
        		$('.rdvs .liste').remove();
        		$('.rdvs').append("<div class=\"liste\"><h2>Pas de rendez-vous</h2></div>");
        	},
    	});
	});
		
	modifier.click(function(){
		$('.table-rdv .editer').hide();
		$('.table-rdv .modifier').show();
		$('.table-rdv .annuler').hide();
		$('.table-rdv .supprimer').show();
		$('.table-rdv input').attr("readonly","readonly");
		
		$('.'+this.getAttribute("form")+' .dateRDV').removeAttr("readonly");
		$('.'+this.getAttribute("form")+' .heureRDV').removeAttr("readonly");
		
		$('.'+this.getAttribute("form")+' .supprimer').hide();
		$('.'+this.getAttribute("form")+' .annuler').show();
		$('.'+this.getAttribute("form")+' .modifier').hide();
		$('.'+this.getAttribute("form")+' .editer').show();
	});
		
	annuler.click(function(e){
		e.preventDefault();
		$('#a-RDV').click();
	});
		
	editer.click(function(){
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		var dateRDV=$('.'+this.getAttribute("form")+' .dateRDV')[0].value;
		var heureRDV=$('.'+this.getAttribute("form")+' .heureRDV')[0].value;
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=modifierRDV&id='+id+'&dateRDV='+dateRDV+'&heureRDV='+heureRDV,
	    	success: function (data) {
        		$('.rdvs .liste').remove();
        		$('.rdvs').append("<div class=\"liste\"></div>");
        		$('.rdvs .liste').append(data);
        	},
        	error: function (data){
        		$('.rdvs .liste').remove();
        		$('.rdvs').append("<div class=\"liste\"><h2>Pas de rendez-vous</h2></div>");
        	},
    	});
	});
</script>