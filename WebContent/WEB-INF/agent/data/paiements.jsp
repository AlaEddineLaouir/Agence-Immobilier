<%@page import="java.util.ArrayList"%>
<%@page import="modele.Paiement"%>
<%ArrayList<Paiement> paiements = (ArrayList<Paiement>)session.getAttribute("paiements");%>
<%if(paiements.isEmpty()){%>
<div class="wrap-login100">
	<i class="fa fa-remove"></i>
	<button class="main-btn" id="btn-paiement">Ajouter paiement</button>
	<h2>Pas de paiements</h2>
</div>
<%}else{%>
<div class="wrap-login100">
	<i class="fa fa-remove"></i>
	<button class="main-btn" id="btn-paiement">Ajouter paiement</button>
	<div style="height: 92%; overflow-y: scroll;">
	<table class="table-paiement">
		<thead>
		    <tr>
		        <th scope="col">ID</th>
		        <th scope="col">Date de paiement</th>
		        <th scope="col">Montant payé</th>
		    </tr>
		</thead>
		
		<%for(int i=0 ; i<paiements.size() ; i++){%>
		<tbody class="<%out.print("paiement"+i);%>">
		    <tr>
		        <td data-label="ID"><input class="id" type="text" name="id" value="<%out.print(paiements.get(i).getId());%>" readonly></td>
		        <td data-label="Date de paiement"><input class="date" type="text" name="date" value="<%out.print(paiements.get(i).getDate());%>" readonly></td>
		        <td data-label="Montent payé"><input class="montant" type="text" name="montant" value="<%out.print(paiements.get(i).getMontant());%>" readonly></td>
		    	<td data-label="Action">
		        	<button form="<% out.print("paiement"+i); %>" class="facture">facture</button>
		        </td>
		    </tr>
	 	</tbody> 
		 <%}%>
	</table>
	</div>
</div>
<%}%>
<script type="text/javascript">
	$('.fa-remove').click(function (){
		$('.limiter').hide();
	});
	
	$('#btn-paiement').click(function(e){
    	e.preventDefault();
    	$('.ajouterPaiement').show();
    	$('#btn-ajouterPaiement').attr('form',$(this).attr('form'));
    });
	
	$('#btn-ajouterPaiement').click(function (e) {
		e.preventDefault();
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		var date = new Date(Date.now());
		$('.ajouterPaiement').hide();
		$('.paiement').hide();
		$.ajax({
			type: $('.form-ajouterPaiement').attr('method'),
        	url: $('.form-ajouterPaiement').attr('action'),
        	data: $('.form-ajouterPaiement').serialize()+'&redirect=ajouterPaiement&location='+id+'&date='+date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate(),
        	success: function (data) {
        		$('.paiements .liste').remove();
        		$('.paiements').append("<div class=\"liste\"></div>");
        		$('.paiements .liste').append(data);
        		$('.paiement-location').click();
        	},
        	error: function (data){
        		$('.paiements .liste').remove();
        		$('.paiements').append("<div class=\"liste\"><h2>Pas de paiments</h2></div>");
        	},
    	});
	});
	
	$('.table-paiement .facture').click(function(){
		$('#facture').show();
		var id=$('.'+this.getAttribute("form")+' .id')[0].value;
		$.ajax({
			type: 'POST',
	    	url: 'Agent',
	    	data: 'redirect=facture&id='+id,
	    	success: function (data) {
        		$('#facture .imprimable').remove();
        		$('#facture').append("<div class=\"imprimable\"></div>");
        		$('#facture .imprimable').append(data);
        	},
        	error: function (data){
        		$('#facture .imprimable').remove();
        		$('#facture').append("<div class=\"imprimable\"></div>");
        	},
    	});
	});
</script>