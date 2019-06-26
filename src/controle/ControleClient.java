package controle;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.Appartement;
import modele.Bien;
import modele.Client;
import modele.Locale;
import modele.Location;
import modele.RDV;
import modele.Terrain;
import modele.Villa;
import modele._Agent;
import modele._Client;

@WebServlet("/Client")
public class ControleClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;
	private Client C;
	private Location L;
	private RDV rdv;
	private Bien b;
	private Appartement a;
	private Locale l;
	private Terrain t;
	private Villa v;
	
    public ControleClient() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/client/acceuil.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("redirect")==null) {
			doGet(request, response);
		}
		switch(request.getParameter("redirect")) {
		case "connecter":
			connecter(request, response);
			break;
		case "inscrire":
			inscrire(request, response);
			break;
		case "login":
			login(request, response);
			break;
		case "register":
			register(request, response);
			break;
		case "telephone":
			telephone(request, response);
			break;
		case "email":
			email(request, response);
			break;
		case "identite":
			identite(request, response);
			break;
		case "ajouterBien":
			ajouterBien(request, response);
			break;
		case "louerBien":
			louerBien(request, response);
			break;
		case "visiterBien":
			visiterBien(request, response);
			break;
		
			
			
			
			
			
			
			
			
			
			
			
		
		
		
		case "rechercherBien":
			rechercherBien(request, response);
			break;
		case "profile":
			profile(request, response);
			break;
		case "deconnecter":
			deconnecter(request, response);
			break;
		case "locations":
			locations(request, response);
			break;
		case "paiements":
			paiements(request, response);
			break;
		case "RDVs":
			RDVs(request, response);
			break;
		case "proprietes":
			proprietes(request, response);
			break;
		case "modifierRDV":
			modifierRDV(request, response);
			break;
		case "supprimerRDV":
			supprimerRDV(request, response);
			break;
		case "etatBien":
			etatBien(request, response);
			break;
		case "modifierAppartement":
			modifierAppartement(request, response);
			break;
		case "modifierLocale":
			modifierLocale(request, response);
			break;
		case "modifierTerrain":
			modifierTerrain(request, response);
			break;
		case "modifierVilla":
			modifierVilla(request, response);
			break;
		default:
			request.getRequestDispatcher("/WEB-INF/client/acceuil.jsp").forward(request, response);
			break;
		}
	}

	protected void connecter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		if(session.getAttribute("client")==null) {
			C = new Client();
			C.setUtilisateur(request.getParameter("utilisateur"));
			C.setPasse(request.getParameter("passe"));
			C = new _Client().client(C);			
			if(C.getUtilisateur()!=null && C.getPasse()!=null && C.getUtilisateur().toLowerCase().equals(request.getParameter("utilisateur").toLowerCase()) && C.getPasse().equals(request.getParameter("passe"))) {
				session.setAttribute("client", C);
				request.getRequestDispatcher("/WEB-INF/client/client.jsp").forward(request, response);
			}
			else {
				// client n'existe pas
			}
		}
//		request.getRequestDispatcher("/WEB-INF/client/client.jsp").forward(request, response);
	}
	
	protected void inscrire(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		C = new Client();
		C.setUtilisateur(request.getParameter("utilisateur"));
		C.setPasse(request.getParameter("passe"));
		C.setNom(request.getParameter("nom"));
		C.setPrenom(request.getParameter("prenom"));
		C.setNaissance(request.getParameter("naissance"));
		C.setAdresse(request.getParameter("adresse"));
		C.setTelephone(request.getParameter("telephone"));
		C.setEmail(request.getParameter("email"));
		C.setIdentite(request.getParameter("identite"));
		C.setBanner(false);
		if(new _Client().ajouterClient(C)) {
			session = request.getSession();
			session.setAttribute("client", C);
			//new Upload().client(request, response, C);
			request.getRequestDispatcher("/WEB-INF/client/client.jsp").forward(request, response);
		}
		else {
			request.getRequestDispatcher("/WEB-INF/client/acceuil.jsp").forward(request, response);
		}
	}
	
	protected void deconnecter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		session.invalidate();
		request.getRequestDispatcher("/WEB-INF/client/acceuil.jsp").forward(request, response);
	}
	
	protected void profile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = (Client)session.getAttribute("client");
		if(request.getParameter("passe")!=null) {
			C.setPasse(request.getParameter("passe"));
			C.setAdresse(request.getParameter("adresse"));
			C.setEmail(request.getParameter("email"));
			C.setTelephone(request.getParameter("telephone"));
			new _Client().profile(C);
		}
		session.setAttribute("client", new _Client().client(C));			
		request.getRequestDispatcher("/WEB-INF/client/data/profile.jsp").forward(request, response);
	}
	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = new Client();
		if(request.getParameter("utilisateur")=="") {
			response.setStatus(400);
		}
		else if(!new _Client().utilisateur(C,request.getParameter("utilisateur"))) {
			response.getWriter().print("<p>Nom d'utilisateur n'existe pas</p>");
		}
		else {
			response.setStatus(400);
		}
	}
	
	protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = new Client();
		if(request.getParameter("utilisateur")=="") {
			response.setStatus(400);
		}
		else if(new _Client().utilisateur(C, request.getParameter("utilisateur"))) {
			response.getWriter().print("<p>Nom d'utilisateur existe deja</p>");
		}
		else {
			response.setStatus(400);
		}
	}
		
	protected void email(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = (Client)session.getAttribute("client");
		if(C==null) {
			C = new Client();
			if(request.getParameter("utilisateur")!=null) {
				C.setUtilisateur(request.getParameter("utilisateur"));
			}
		}
		if(new _Client().email(C, request.getParameter("email"))) {
			response.getWriter().print("<p>Email existe deja</p>");
		}
	}
	
	protected void telephone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = (Client)session.getAttribute("client");
		if(C==null) {
			C = new Client();
			if(request.getParameter("utilisateur")!=null) {
				C.setUtilisateur(request.getParameter("utilisateur"));
			}
		}
		if(new _Client().telephone(C, request.getParameter("telephone"))) {
			response.getWriter().print("<p>Numero de telephone existe deja</p>");
		}
	}
	
	protected void identite(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = (Client)session.getAttribute("client");
		if(C==null) {
			C = new Client();
		}
		if(new _Client().identite(C, request.getParameter("identite"))) {
			response.getWriter().print("<p>Numero d'identite existe deja</p>");
		}
	}
	
	protected void ajouterBien(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		rdv = new RDV();
		rdv.setDateRDV(request.getParameter("dateRDV"));
		rdv.setHeureRDV(request.getParameter("heureRDV"));
		rdv.setObjetRDV("ajouter bien");
		if(request.getParameter("contact").equals("telephone")) {
			rdv.setContact(((Client)session.getAttribute("client")).getTelephone());
		}
		else {
			rdv.setContact(((Client)session.getAttribute("client")).getEmail());
		}
		rdv.setClient(((Client)session.getAttribute("client")).getUtilisateur());
		rdv.setAgent("mehdi96"); //ATRIBUTION MANUELLE POUR LE MOMENT
		new _Client().ajouterBien(rdv);
	}
	
	protected void louerBien(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		rdv = new RDV();
		rdv.setDateRDV(request.getParameter("dateRDV"));
		rdv.setHeureRDV(request.getParameter("heureRDV"));
		rdv.setObjetRDV("louer bien");
		if(request.getParameter("contact").equals("telephone")) {
			rdv.setContact(((Client)session.getAttribute("client")).getTelephone());
		}
		else {
			rdv.setContact(((Client)session.getAttribute("client")).getEmail());
		}
		rdv.setBien(Integer.parseInt(request.getParameter("bien")));
		rdv.setClient(((Client)session.getAttribute("client")).getUtilisateur());
		rdv.setAgent("mehdi96"); //ATRIBUTION MANUELLE POUR LE MOMENT
		new _Client().louerBien(rdv);
	}
	
	protected void visiterBien(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		rdv = new RDV();
		rdv.setDateRDV(request.getParameter("dateRDV"));
		rdv.setHeureRDV(request.getParameter("heureRDV"));
		rdv.setObjetRDV("visiter bien");
		if(request.getParameter("contact").equals("telephone")) {
			rdv.setContact(((Client)session.getAttribute("client")).getTelephone());
		}
		else {
			rdv.setContact(((Client)session.getAttribute("client")).getEmail());
		}
		rdv.setBien(Integer.parseInt(request.getParameter("bien")));
		rdv.setClient(((Client)session.getAttribute("client")).getUtilisateur());
		rdv.setAgent("mehdi96"); //ATRIBUTION MANUELLE POUR LE MOMENT
		new _Client().visiterBien(rdv);
	}
	
	protected void rechercherBien(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = (Client)session.getAttribute("client");
		session.setAttribute("appartements",null);
		session.setAttribute("locales",null);
		session.setAttribute("terrains",null);
		session.setAttribute("villas",null);
		switch(request.getParameter("type")) {
		case "appartement":
			session.setAttribute("appartements",new _Client().appartements(C, request.getParameter("ville"), request.getParameter("minPrix").substring(0,request.getParameter("minPrix").length()-3), request.getParameter("maxPrix").substring(0,request.getParameter("maxPrix").length()-3), request.getParameter("minSurface").substring(0,request.getParameter("minSurface").length()-3), request.getParameter("maxSurface").substring(0,request.getParameter("maxSurface").length()-3), request.getParameter("etage"), request.getParameter("piece"), request.getParameter("climatisation"), request.getParameter("meuble"), request.getParameter("balcon"), request.getParameter("stationnement")));
			request.getRequestDispatcher("/WEB-INF/client/data/recherche.jsp").forward(request, response);
			break;
		case "locale":
			session.setAttribute("locales",new _Client().locales(C, request.getParameter("ville"), request.getParameter("minPrix").substring(0,request.getParameter("minPrix").length()-3), request.getParameter("maxPrix").substring(0,request.getParameter("maxPrix").length()-3), request.getParameter("minSurface").substring(0,request.getParameter("minSurface").length()-3), request.getParameter("maxSurface").substring(0,request.getParameter("maxSurface").length()-3), request.getParameter("interieur"), request.getParameter("exterieur"), request.getParameter("gas"), request.getParameter("electricite"), request.getParameter("stationnement"), request.getParameter("alarm")));
			request.getRequestDispatcher("/WEB-INF/client/data/recherche.jsp").forward(request, response);
			break;
		case "terrain":
			session.setAttribute("terrains",new _Client().terrains(C, request.getParameter("ville"), request.getParameter("minPrix").substring(0,request.getParameter("minPrix").length()-3), request.getParameter("maxPrix").substring(0,request.getParameter("maxPrix").length()-3), request.getParameter("minSurface").substring(0,request.getParameter("minSurface").length()-3), request.getParameter("maxSurface").substring(0,request.getParameter("maxSurface").length()-3), request.getParameter("agricole")));
			request.getRequestDispatcher("/WEB-INF/client/data/recherche.jsp").forward(request, response);
			break;
		case "villa":
			session.setAttribute("villas",new _Client().villas(C, request.getParameter("ville"), request.getParameter("minPrix").substring(0,request.getParameter("minPrix").length()-3), request.getParameter("maxPrix").substring(0,request.getParameter("maxPrix").length()-3), request.getParameter("minSurface").substring(0,request.getParameter("minSurface").length()-3), request.getParameter("maxSurface").substring(0,request.getParameter("maxSurface").length()-3), request.getParameter("etage"), request.getParameter("piece"), request.getParameter("picine"), request.getParameter("garage"), request.getParameter("jardin"), request.getParameter("climatisation"), request.getParameter("meuble"), request.getParameter("alarm"), request.getParameter("chemine"), request.getParameter("interphone")));
			request.getRequestDispatcher("/WEB-INF/client/data/recherche.jsp").forward(request, response);
			break;
		}
		
	}
	
	protected void RDVs(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = (Client)session.getAttribute("client");
		session.setAttribute("RDVs", new _Client().RDVs(C));
		request.getRequestDispatcher("/WEB-INF/client/data/rdvs.jsp").forward(request, response);
	}

	
	protected void locations(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = (Client)session.getAttribute("client");
		session.setAttribute("locations",new _Client().locations(C));
		request.getRequestDispatcher("/WEB-INF/client/data/locations.jsp").forward(request, response);
	}
	
	protected void paiements(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		L = new Location();
		L.setId(Integer.parseInt(request.getParameter("id")));
		session.setAttribute("paiements", new _Client().paiements(L));
		request.getRequestDispatcher("/WEB-INF/client/data/paiements.jsp").forward(request, response);
	}
	
	protected void proprietes(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = (Client)session.getAttribute("client");
		session.setAttribute("appartements",new _Client().appartements(C));
		session.setAttribute("locales",new _Client().locales(C));
		session.setAttribute("terrains",new _Client().terrains(C));
		session.setAttribute("villas",new _Client().villas(C));
		request.getRequestDispatcher("/WEB-INF/client/data/proprietes.jsp").forward(request, response);
	}
	
	protected void modifierRDV(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		rdv = new RDV();
		rdv.setId(Integer.parseInt(request.getParameter("id")));
		rdv.setDateRDV(request.getParameter("dateRDV"));
		rdv.setHeureRDV(request.getParameter("heureRDV"));
		new _Client().modifierRDV(rdv);
		RDVs(request, response);
	}
	
	protected void supprimerRDV(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		rdv = new RDV();
		rdv.setId(Integer.parseInt(request.getParameter("id")));
		new _Client().supprimerRDV(rdv);
		RDVs(request, response);
	}
	
	protected void etatBien(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		b = new Bien();
		b.setCacher(request.getParameter("cacher").equals("caché"));
		b.setId(Integer.parseInt(request.getParameter("id")));
		new _Client().etatBien(b);
		proprietes(request, response);
	}
	
	protected void modifierAppartement(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		a = new Appartement();
		a.setId(Integer.parseInt(request.getParameter("id")));
		a.setPrix(Double.parseDouble(request.getParameter("prix")));
		a.setSurface(Double.parseDouble(request.getParameter("surface")));
		a.setPiece(Integer.parseInt(request.getParameter("piece")));
		a.setClimatisation(request.getParameter("climatisation"));
		a.setMeuble(request.getParameter("meuble"));
		a.setBalcon(request.getParameter("balcon"));
		a.setStationnement(request.getParameter("stationnement"));
		new _Agent().modifierAppartement(a);
		proprietes(request, response);
	}
	
	protected void modifierLocale(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		l = new Locale();
		l.setId(Integer.parseInt(request.getParameter("id")));
		l.setPrix(Double.parseDouble(request.getParameter("prix")));
		l.setSurface(Double.parseDouble(request.getParameter("surface")));
		l.setInterieur(request.getParameter("interieur"));
		l.setExterieur(request.getParameter("exterieur"));
		l.setGas(request.getParameter("gas"));
		l.setElectricite(request.getParameter("electricite"));
		l.setStationnement(request.getParameter("stationnement"));
		l.setAlarm(request.getParameter("alarm"));
		new _Client().modifierLocale(l);
		proprietes(request, response);
	}
	
	protected void modifierTerrain(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		t = new Terrain();
		t.setId(Integer.parseInt(request.getParameter("id")));
		t.setPrix(Double.parseDouble(request.getParameter("prix")));
		t.setSurface(Double.parseDouble(request.getParameter("surface")));
		t.setAgricole(request.getParameter("agricole"));
		new _Client().modifierTerrain(t);
		proprietes(request, response);
	}
	
	protected void modifierVilla(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		v = new Villa();
		v.setId(Integer.parseInt(request.getParameter("id")));
		v.setPrix(Double.parseDouble(request.getParameter("prix")));
		v.setSurface(Double.parseDouble(request.getParameter("surface")));
		v.setEtage(Integer.parseInt(request.getParameter("etage")));
		v.setPiece(Integer.parseInt(request.getParameter("piece")));
		v.setPicine(request.getParameter("picine"));
		v.setGarage(request.getParameter("garage"));
		v.setJardin(request.getParameter("jardin"));
		v.setClimatisation(request.getParameter("climatisation"));
		v.setMeuble(request.getParameter("meuble"));
		v.setAlarm(request.getParameter("alarm"));
		v.setChemine(request.getParameter("chemine"));
		v.setInterphone(request.getParameter("interphone"));
		new _Client().modifierVilla(v);
		proprietes(request, response);
	}
}