package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.Agent;
import modele.Appartement;
import modele.Bien;
import modele.Client;
import modele.Locale;
import modele.Location;
import modele.Paiement;
import modele.RDV;
import modele.Terrain;
import modele.Villa;
import modele._Agent;
import modele._Client;

@WebServlet("/Agent")
public class ControleAgent extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;
	private Agent A;
	private Client C;
	private RDV rdv;
	private Location L;
	private Paiement P;
	private Bien b;
	private Appartement a;
	private Locale l;
	private Terrain t;
	private Villa v;
	
    public ControleAgent() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("redirect")==null)
			request.getRequestDispatcher("WEB-INF/agent/connexion.jsp").forward(request, response);
		else
			doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("redirect")==null)
			request.getRequestDispatcher("WEB-INF/agent/connexion.jsp").forward(request, response);
		switch(request.getParameter("redirect")) {
		case "connecter":
			connecter(request, response);
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
		case "client":
			client(request, response);
			break;
		case "email":
			email(request, response);
			break;
		case "identite":
			identite(request, response);
			break;
		case "clients":
			clients(request, response);
			break;
		case "etat":
			etat(request, response);
			break;
		case "ajouterClient":
			ajouterClient(request, response);
			break;
		case "modifierClient":
			modifierClient(request, response);
			break;
		case "profile":
			profile(request, response);
			break;
		case "clientProfile":
			clientProfile(request, response);
			break;
		case "deconnecter":
			deconnecter(request, response);
			break;
		case "biens":
			biens(request, response);
			break;
		case "ajouterBien":
			ajouterBien(request, response);
			break;
		case "RDVs":
			RDVs(request, response);
			break;
		case "locations":
			locations(request, response);
			break;
		case "paiements":
			paiements(request, response);
			break;
		case "occuperAgent":
			occuperAgent(request, response);
			break;
		case "ajouterLocation":
			ajouterLocation(request, response);
			break;
		case "annulerLocation":
			annulerLocation(request, response);
			break;
		case "ajouterPaiement":
			ajouterPaiement(request, response);
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
		case "rechercherBien":
			rechercherBien(request, response);
			break;
		case "contrat":
			contrat(request, response);
			break;
		case "facture":
			facture(request, response);
			break;
		}
	}
	
	protected void connecter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		if(session.getAttribute("agent")==null) {
			A = new Agent();
			A.setUtilisateur(request.getParameter("utilisateur"));
			A.setPasse(request.getParameter("passe"));
			A = new _Agent().agent(A);
			if(A.getUtilisateur()!=null && A.getPasse()!=null && A.getUtilisateur().toLowerCase().equals(request.getParameter("utilisateur").toLowerCase()) && A.getPasse().equals(request.getParameter("passe"))) {
				session.setAttribute("agent", A);
				request.getRequestDispatcher("/WEB-INF/agent/agent.jsp").forward(request, response);
			}
			else {
				// agent n'existe pas
			}
		}
//		request.getRequestDispatcher("/WEB-INF/agent/agent.jsp").forward(request, response);
	}
	
	protected void deconnecter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		session.invalidate();
		request.getRequestDispatcher("/WEB-INF/agent/connexion.jsp").forward(request, response);
	}
	
	protected void profile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = (Agent)session.getAttribute("agent");
		if(request.getParameter("passe")!=null){
			A.setPasse(request.getParameter("passe"));
			A.setAdresse(request.getParameter("adresse"));
			A.setEmail(request.getParameter("email"));
			A.setTelephone(request.getParameter("telephone"));
			new _Agent().profile(A);
		}
		session.setAttribute("agent", new _Agent().agent(A));			
		request.getRequestDispatcher("/WEB-INF/agent/data/profile.jsp").forward(request, response);
	}
	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = new Agent();
		if(request.getParameter("utilisateur")=="") {
			response.setStatus(400);
		}
		else if(!new _Agent().utilisateur(A, request.getParameter("utilisateur"))) {
			response.getWriter().print("<p>Nom d'utilisateur n'existe pas</p>");
		}
		else {
			response.setStatus(400);
		}
	}
	
	protected void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = new Agent();
		if(request.getParameter("utilisateur")=="") {
			response.setStatus(400);
		}
		else if(new _Agent().utilisateur(A, request.getParameter("utilisateur"))) {
			response.getWriter().print("<p>Nom d'utilisateur existe deja</p>");
		}
		else {
			response.setStatus(400);
		}
	}
	
	protected void client(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = new Client();
		C.setUtilisateur(request.getParameter("utilisateur"));
		if(request.getParameter("utilisateur")=="") {
			response.setStatus(400);
		}
		else if(!new _Agent().client(C)) {
			response.getWriter().print("<p>utilisateur n'exist pas</p>");
		}
		else {
			response.setStatus(400);
		}
	}
	
	protected void email(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = (Agent)session.getAttribute("agent");
		if(A==null) {
			A = new Agent();
		}
		if(new _Agent().email(A, request.getParameter("email"))) {
			response.getWriter().print("<p>Email existe deja</p>");
		}
	}
	
	protected void telephone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = (Agent)session.getAttribute("agent");
		if(A==null) {
			A = new Agent();
		}
		if(new _Agent().telephone(A, request.getParameter("telephone"))) {
			response.getWriter().print("<p>Numero de telephone existe deja</p>");
		}
	}
	
	protected void identite(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = (Agent)session.getAttribute("agent");
		if(A==null) {
			A = new Agent();
		}
		if(new _Agent().identite(A, request.getParameter("identite"))) {
			response.getWriter().print("<p>Numero d'identite existe deja</p>");
		}
	}
	
	protected void clientProfile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = new Client();
		C.setUtilisateur(request.getParameter("utilisateur"));
		session.setAttribute("client", new _Agent().clientProfile(C));
		request.getRequestDispatcher("/WEB-INF/agent/data/client.jsp").forward(request, response);
	}
	
	protected void clients(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		session.setAttribute("clients", new _Agent().clients());
		request.getRequestDispatcher("/WEB-INF/agent/data/clients.jsp").forward(request, response);
	}
	
	protected void etat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = new Client();
		C.setBanner(request.getParameter("banner").equals("bloqué"));
		C.setUtilisateur(request.getParameter("utilisateur"));
		new _Agent().etat(C);
		clients(request, response);
	}
	
	protected void modifierClient(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		C = new Client();
		C.setUtilisateur(request.getParameter("utilisateur"));
		C.setPasse(request.getParameter("passe"));
		C.setAdresse(request.getParameter("adresse"));
		C.setTelephone(request.getParameter("telephone"));
		C.setEmail(request.getParameter("email"));
		new _Agent().modifierClient(C);
		clients(request, response);
	}
	
	protected void ajouterClient(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
		new _Agent().ajouterClient(C);
		clients(request, response);
	}
	
	protected void biens(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		session.setAttribute("appartements", new _Agent().appartements());
		session.setAttribute("locales", new _Agent().locales());
		session.setAttribute("terrains", new _Agent().terrains());
		session.setAttribute("villas", new _Agent().villas());
		request.getRequestDispatcher("/WEB-INF/agent/data/biens.jsp").forward(request, response);
	}
	
	protected void ajouterBien(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		b = new Bien();
		b.setVille(request.getParameter("ville"));
		b.setAdresse(request.getParameter("adresse"));
		b.setPrix(Integer.parseInt(request.getParameter("prix")));
		b.setSurface(Integer.parseInt(request.getParameter("surface")));
		b.setCacher(false);
		b.setProprietaire(request.getParameter("proprietaire"));
		switch(request.getParameter("type")) {
		case "appartement":
			a = new Appartement();
			a.setEtage(Integer.parseInt(request.getParameter("etage")));
			a.setPiece(Integer.parseInt(request.getParameter("piece")));
			a.setClimatisation(request.getParameter("climatisation"));
			a.setMeuble(request.getParameter("meuble"));
			a.setBalcon(request.getParameter("balcon"));
			a.setStationnement(request.getParameter("stationnement"));
			new _Agent().ajouterBien(b,a);
		break;
		case "locale":
			l = new Locale();
			l.setInterieur(request.getParameter("interieur"));
			l.setExterieur(request.getParameter("exterieur"));
			l.setGas(request.getParameter("gas"));
			l.setElectricite(request.getParameter("electricite"));
			l.setStationnement(request.getParameter("stationnement"));
			l.setAlarm(request.getParameter("alarm"));
			new _Agent().ajouterBien(b,l);
		break;
		case "terrain":
			t = new Terrain();
			t.setAgricole(request.getParameter("agricole"));
			new _Agent().ajouterBien(b,t);
		break;
		case "villa":
			v = new Villa();
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
			new _Agent().ajouterBien(b,v);
		break;
		}
		session = request.getSession();
		session.setAttribute("bien", new _Agent().id());
		biens(request, response);
	}
	
	protected void RDVs(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = (Agent)session.getAttribute("agent");
		session.setAttribute("RDVs", new _Agent().RDVs(A));
		request.getRequestDispatcher("/WEB-INF/agent/data/rdvs.jsp").forward(request, response);
	}
	
	protected void locations(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		session.setAttribute("locations", new _Agent().locations());
		request.getRequestDispatcher("/WEB-INF/agent/data/locations.jsp").forward(request, response);
	}
	
	protected void paiements(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		L = new Location();
		L.setId(Integer.parseInt(request.getParameter("id")));
		session.setAttribute("paiements", new _Agent().paiements(L));
		request.getRequestDispatcher("/WEB-INF/agent/data/paiements.jsp").forward(request, response);
	}
	
	protected void occuperAgent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = (Agent)session.getAttribute("agent");
		rdv = new RDV();
		rdv.setDateRDV(request.getParameter("dateRDV"));
		rdv.setHeureRDV(request.getParameter("heureRDV"));
		rdv.setObjetRDV("occuper agent");
		rdv.setAgent(A.getUtilisateur());
		new _Agent().occuperAgent(rdv);
		RDVs(request, response);
	}
	
	protected void ajouterLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = (Agent)session.getAttribute("agent");
		L = new Location();
		L.setPaiement(request.getParameter("paiement"));
		L.setDebut(request.getParameter("debut"));
		L.setFin(request.getParameter("fin"));
		L.setCout(Integer.parseInt(request.getParameter("cout")));
		L.setLocataire(request.getParameter("locataire"));
		L.setBien(Integer.parseInt(request.getParameter("bien")));
		L.setAgent(A.getUtilisateur());
		new _Agent().ajouterLocation(L);
		locations(request, response);
	}
	
	protected void ajouterPaiement(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = (Agent)session.getAttribute("agent");
		P = new Paiement();
		P.setMontant(Double.parseDouble(request.getParameter("montant")));
		P.setAgent(A.getUtilisateur());
		P.setLocation(Integer.parseInt(request.getParameter("location")));
		P.setDate(request.getParameter("date"));
		new _Agent().ajouterPaiement(P);
	}
	
	protected void annulerLocation(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		L = new Location();
		L.setId(Integer.parseInt(request.getParameter("id")));
		new _Agent().annulerLocation(L);
		locations(request, response);
	}
	
	protected void modifierRDV(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		rdv = new RDV();
		rdv.setId(Integer.parseInt(request.getParameter("id")));
		rdv.setDateRDV(request.getParameter("dateRDV"));
		rdv.setHeureRDV(request.getParameter("heureRDV"));
		new _Agent().modifierRDV(rdv);
		RDVs(request, response);
	}
	
	protected void supprimerRDV(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		rdv = new RDV();
		rdv.setId(Integer.parseInt(request.getParameter("id")));
		new _Agent().supprimerRDV(rdv);
		RDVs(request, response);
	}
	
	protected void etatBien(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		b = new Bien();
		b.setCacher(request.getParameter("cacher").equals("caché"));
		b.setId(Integer.parseInt(request.getParameter("id")));
		new _Agent().etatBien(b);
		biens(request, response);
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
		biens(request, response);
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
		new _Agent().modifierLocale(l);
		biens(request, response);
	}
	
	protected void modifierTerrain(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		t = new Terrain();
		t.setId(Integer.parseInt(request.getParameter("id")));
		t.setPrix(Double.parseDouble(request.getParameter("prix")));
		t.setSurface(Double.parseDouble(request.getParameter("surface")));
		t.setAgricole(request.getParameter("agricole"));
		new _Agent().modifierTerrain(t);
		biens(request, response);
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
		new _Agent().modifierVilla(v);
		biens(request, response);
	}
	
	protected void rechercherBien(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		C = new Client();
		C.setUtilisateur(request.getParameter("proprietaire"));
		session.setAttribute("appartements",null);
		session.setAttribute("locales",null);
		session.setAttribute("terrains",null);
		session.setAttribute("villas",null);
		switch(request.getParameter("type")) {
		case "appartement":
			session.setAttribute("appartements", new _Agent().appartements(C, "!=''", "0", "1000000", "0", "1000", ">=0", ">=0", "!=''", "!=''", "!=''", "!=''"));
			request.getRequestDispatcher("/WEB-INF/agent/data/recherche.jsp").forward(request, response);
			break;
		case "locale":
			session.setAttribute("locales", new _Agent().locales(C, "!=''", "0", "1000000", "0", "1000", "!=''", "!=''", "!=''", "!=''", "!=''", "!=''"));
			request.getRequestDispatcher("/WEB-INF/agent/data/recherche.jsp").forward(request, response);
			break;
		case "terrain":
			session.setAttribute("terrains", new _Agent().terrains(C, "!=''", "0", "1000000", "0", "1000", "!=''"));
			request.getRequestDispatcher("/WEB-INF/agent/data/recherche.jsp").forward(request, response);
			break;
		case "villa":
			session.setAttribute("villas", new _Agent().villas(C, "!=''", "0", "1000000", "0", "1000", ">=0", ">=0", "!=''", "!=''", "!=''", "!=''", "!=''", "!=''", "!=''", "!=''"));
			request.getRequestDispatcher("/WEB-INF/agant/data/recherche.jsp").forward(request, response);
			break;
		}
	}
	
	protected void contrat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		request.getRequestDispatcher("/WEB-INF/agent/data/contrat.jsp").forward(request, response);
	}
	
	protected void facture(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		request.getRequestDispatcher("/WEB-INF/agent/data/facture.jsp").forward(request, response);
	}
}