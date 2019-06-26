<%@page import="java.util.ArrayList"%>
<%@page import="modele.Appartement"%>
<%@page import="modele.Locale"%>
<%@page import="modele.Terrain"%>
<%@page import="modele.Villa"%>
<%@page import="controle.Upload"%>
<%@page import="java.io.File"%>


<% ArrayList<Appartement> appartements = (ArrayList<Appartement>)session.getAttribute("appartements"); %>
<% ArrayList<Locale> locales = (ArrayList<Locale>)session.getAttribute("locales"); %>
<% ArrayList<Terrain> terrains = (ArrayList<Terrain>)session.getAttribute("terrains"); %>
<% ArrayList<Villa> villas = (ArrayList<Villa>)session.getAttribute("villas"); %>

<div class="wrap-login100">
	<i class="fa fa-remove"></i>
		<%if(appartements!=null && !appartements.isEmpty()){%>
			<section class="container">
				<%for(int i=0 ; i<appartements.size() ; i++){%>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<article class="material-card Blue-Grey">
							<h2>
								<span>Appartement</span>
								<strong>
									<i class="fa fa-fw fa-star"></i>
									Appartement
								</strong>
							</h2>
							<div class="mc-content">
								<i class="fa fa-chevron-left left"></i>
								<i class="fa fa-chevron-right right"></i>
								<div class="img-container">
								<%
									int images = 0;
									if(new File(Upload.UPLOAD_DIRECTORY()+"\\bien\\"+appartements.get(i).getId()).exists()){
										images = new File(Upload.UPLOAD_DIRECTORY()+"\\bien\\"+appartements.get(i).getId()).listFiles().length;
									}
								 %>
								<%for(int j=0 ; j<images ; j++){%>
									<img class="img-responsive img-bien" id="img<%out.print(j);%>" src="<%out.print("images/bien/"+appartements.get(i).getId()+"/"+j+".jpg");%>">
								<%}%>
								</div>
								<div class="mc-description">
									<p>Ville: <%out.print(appartements.get(i).getVille());%></p>
									<p>Prix: <%out.print(appartements.get(i).getPrix()+" DA");%></p>
									<p>Surface: <%out.print(appartements.get(i).getSurface()+" m&#178");%></p>
									<p>Etage: <%out.print(appartements.get(i).getEtage());%></p>
									<p>Nombre de pieces: <%out.print(appartements.get(i).getPiece());%></p>
									<p>Climatisation: <%out.print(appartements.get(i).getClimatisation());%></p>
									<p>Meuble: <%out.print(appartements.get(i).getMeuble());%></p>
									<p>Balcon: <%out.print(appartements.get(i).getBalcon());%></p>
									<p>Stationnement: <%out.print(appartements.get(i).getStationnement());%></p>
									<form>
										<input id="appartement<%out.print(i);%>" value="<%out.print(appartements.get(i).getId());%>" hidden>
										<button class="louer" name="appartement<%out.print(i);%>">Louer</button>
									</form>
								</div>
							</div>
							<a class="mc-btn-action">
								<i class="fa fa-bars"></i>
							</a>
						</article>
					</div>
				<%}%>
			</section>
		<%}else if(locales!=null && !locales.isEmpty()){%>
		<section class="container">
				<%for(int i=0 ; i<locales.size() ; i++){%>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<article class="material-card Blue-Grey">
							<h2>
								<span>Locale</span>
								<strong>
									<i class="fa fa-fw fa-star"></i>
									Locale
								</strong>
							</h2>
							<div class="mc-content">
								<i class="fa fa-chevron-left left"></i>
								<i class="fa fa-chevron-right right"></i>
								<div class="img-container">
								<%
									int images = 0;
									if(new File(Upload.UPLOAD_DIRECTORY()+"\\bien\\"+locales.get(i).getId()).exists()){
										images = new File(Upload.UPLOAD_DIRECTORY()+"\\bien\\"+locales.get(i).getId()).listFiles().length;
									}
								 %>
								<%for(int j=0 ; j<images ; j++){%>
									<img class="img-responsive img-bien" id="img<%out.print(j);%>" src="<%out.print("images/bien/"+locales.get(i).getId()+"/"+j+".jpg");%>">
								<%}%>
								</div>
								<div class="mc-description">
									<p>Ville: <%out.print(locales.get(i).getVille());%></p>
									<p>Prix: <%out.print(locales.get(i).getPrix()+" DA");%></p>
									<p>Surface: <%out.print(locales.get(i).getSurface()+" m&#178");%></p>
									<p>Finition interieur: <%out.print(locales.get(i).getInterieur());%></p>
									<p>Finition exterieur: <%out.print(locales.get(i).getExterieur());%></p>
									<p>Gas: <%out.print(locales.get(i).getGas());%></p>
									<p>Electricité: <%out.print(locales.get(i).getElectricite());%></p>
									<p>Stationnement: <%out.print(locales.get(i).getStationnement());%></p>
									<p>Alarm: <%out.print(locales.get(i).getAlarm());%></p>
								<form>
									<input id="locale<%out.print(i);%>" value="<%out.print(locales.get(i).getId());%>" hidden>
									<button class="louer" name="locale<%out.print(i);%>">Louer</button>
								</form>
							</div>
						</div>
						<a class="mc-btn-action">
							<i class="fa fa-bars"></i>
						</a>
					</article>
				</div>
			<%}%>
		</section>
		<%}else if(terrains!=null && !terrains.isEmpty()){%>
			<section class="container">
				<%for(int i=0 ; i<terrains.size() ; i++){%>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<article class="material-card Blue-Grey">
							<h2>
								<span>Terrain</span>
								<strong>
									<i class="fa fa-fw fa-star"></i>
									Terrain
								</strong>
							</h2>
							<div class="mc-content">
								<i class="fa fa-chevron-left left"></i>
								<i class="fa fa-chevron-right right"></i>
								<div class="img-container">
								<%
									int images = 0;
									if(new File(Upload.UPLOAD_DIRECTORY()+"\\bien\\"+terrains.get(i).getId()).exists()){
										images = new File(Upload.UPLOAD_DIRECTORY()+"\\bien\\"+terrains.get(i).getId()).listFiles().length;
									}
								 %>
								<%for(int j=0 ; j<images ; j++){%>
									<img class="img-responsive img-bien" id="img<%out.print(j);%>" src="<%out.print("images/bien/"+terrains.get(i).getId()+"/"+j+".jpg");%>">
								<%}%>
								</div>
								<div class="mc-description">
								<p>Ville: <%out.print(terrains.get(i).getVille());%></p>
								<p>Prix: <%out.print(terrains.get(i).getPrix()+" DA");%></p>
								<p>Surface: <%out.print(terrains.get(i).getSurface()+" m&#178");%></p>
								<p>Agricole: <%out.print(terrains.get(i).getAgricole());%></p>
								<form>
									<input id="terrain<%out.print(i);%>" value="<%out.print(terrains.get(i).getId());%>" hidden>
									<button class="louer" name="terrain<%out.print(i);%>">Louer</button>
								</form>
							</div>
						</div>
						<a class="mc-btn-action">
							<i class="fa fa-bars"></i>
						</a>
					</article>
				</div>
			<%}%>
		</section>
		<%}else if(villas!=null && !villas.isEmpty()){%>
			<section class="container">
				<%for(int i=0 ; i<villas.size() ; i++){%>
					<div class="col-md-4 col-sm-6 col-xs-12">
						<article class="material-card Blue-Grey">
							<h2>
								<span>Villa</span>
								<strong>
									<i class="fa fa-fw fa-star"></i>
									Villa
								</strong>
							</h2>
							<div class="mc-content">
								<i class="fa fa-chevron-left left"></i>
								<i class="fa fa-chevron-right right"></i>
								<div class="img-container">
								<%
									int images = 0;
									if(new File(Upload.UPLOAD_DIRECTORY()+"\\bien\\"+villas.get(i).getId()).exists()){
										images = new File(Upload.UPLOAD_DIRECTORY()+"\\bien\\"+villas.get(i).getId()).listFiles().length;
									}
								 %>
								<%for(int j=0 ; j<images ; j++){%>
									<img class="img-responsive img-bien" id="img<%out.print(j);%>" src="<%out.print("images/bien/"+villas.get(i).getId()+"/"+j+".jpg");%>">
								<%}%>
								</div>
								<div class="mc-description">
									<p>Ville: <%out.print(villas.get(i).getVille());%></p>
									<p>Prix: <%out.print(villas.get(i).getPrix()+" DA");%></p>
									<p>Surface: <%out.print(villas.get(i).getSurface()+" m&#178");%></p>
									<p>Etage: <%out.print(villas.get(i).getEtage());%></p>
									<p>Nombre de pieces: <%out.print(villas.get(i).getPiece());%></p>
									<p>Picine: <%out.print(villas.get(i).getPicine());%></p>
									<p>Garage: <%out.print(villas.get(i).getGarage());%></p>
									<p>Jardin: <%out.print(villas.get(i).getJardin());%></p>
									<p>Climatisation: <%out.print(villas.get(i).getClimatisation());%></p>
									<p>Meuble: <%out.print(villas.get(i).getMeuble());%></p>
									<p>Alarm: <%out.print(villas.get(i).getAlarm());%></p>
									<p>Cheminé: <%out.print(villas.get(i).getChemine());%></p>
									<p>Interphone: <%out.print(villas.get(i).getInterphone());%></p>
									<form>
										<input id="villa<%out.print(i);%>" value="<%out.print(villas.get(i).getId());%>" hidden>
										<button class="louer" name="villa<%out.print(i);%>">Louer</button>
									</form>
								</div>
							</div>
							<a class="mc-btn-action">
								<i class="fa fa-bars"></i>
							</a>
						</article>
					</div>
				<%}%>
			</section>
		<%}else{%>
			<h2>Aucune resultat trouvée</h2>
		<%}%>
</div>

<script src="card.js"></script>
<script src="material-cards.js"></script>

<script type="text/javascript">
	$('.fa-remove').click(function (){
		$('.limiter').hide();
	});
</script>

<script type="text/javascript">
	$('.louer').click(function (e) {
		e.preventDefault();
		$('.fa-close').click();
		$('#location').val($('#'+this.getAttribute("name"))[0].value).addClass('has-val');
	});
	
	
	
	
	
	
	
    var Date1 = new Date(2018,05,31);
	var Date2 = new Date(2018,06,10);
	new Date((Date2-Date1)/(1000*24*60*60)).getTime()
    
	$('#debut').val();
	
	$('#debut').focusout(function (e) {
		
	});
	
	$('#fin').focusout(function (e) {
		
	});
    
	
	
	
	
	
</script>