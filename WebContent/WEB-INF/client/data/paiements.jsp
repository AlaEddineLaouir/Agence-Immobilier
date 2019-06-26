<%@page import="java.util.ArrayList"%>
<%@page import="modele.Paiement"%>
<%ArrayList<Paiement> paiements = (ArrayList<Paiement>)session.getAttribute("paiements");%>
<%if(paiements.isEmpty()){%>
<div class="wrap-login100">
	<i class="fa fa-remove"></i>
	<h2>Pas de paiements</h2>
</div>
<%}else{%>
<div class="wrap-login100">
	<i class="fa fa-remove"></i>
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
    });

</script>