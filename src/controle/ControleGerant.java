package controle;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import modele.Agent;
import modele.Gerant;
import modele._Gerant;

@WebServlet("/Gerant")
public class ControleGerant extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HttpSession session;
	private Gerant G;
	private Agent A;
	
    public ControleGerant() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		if(request.getParameter("redirect")==null)
			request.getRequestDispatcher("WEB-INF/gerant/connexion.jsp").forward(request, response);
		else
			doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		switch(request.getParameter("redirect")) {
		case "login":
			login(request, response);
			break;
		case "utilisateur":
			utilisateur(request, response);
			break;
		case "agents":
			agents(request, response);
			break;
		case "etat":
			etat(request, response);
			break;
		case "telephone":
			telephone(request, response);
			break;
		case "email":
			email(request, response);
			break;
		case "ajouterAgent":
			ajouterAgent(request, response);
			break;
		case "modifierAgent":
			modifierAgent(request, response);
			break;
		case "profile":
			profile(request, response);
			break;
		case "deconnecter":
			deconnecter(request, response);
			break;
		}
		
	}
	
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		if(session.getAttribute("gerant")==null) {
			G = new Gerant();
			G.setUtilisateur(request.getParameter("utilisateur"));
			G.setPasse(request.getParameter("passe"));
			G = new _Gerant().gerant(G);
			if(G.getUtilisateur()!=null && G.getPasse()!=null && G.getUtilisateur().toLowerCase().equals(request.getParameter("utilisateur").toLowerCase()) && G.getPasse().equals(request.getParameter("passe"))) {
				session.setAttribute("gerant", G);
				request.getRequestDispatcher("/WEB-INF/gerant/gerant.jsp").forward(request, response);
			}
			else {
				// gerant n'existe pas
			}
		}
//		request.getRequestDispatcher("/WEB-INF/gerant/gerant.jsp").forward(request, response);
	}
	
	protected void deconnecter(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		session.invalidate();
		request.getRequestDispatcher("/WEB-INF/gerant/connexion.jsp").forward(request, response);
	}
	
	protected void profile(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		G = (Gerant)session.getAttribute("gerant");
		if(request.getParameter("passe")!=null) {
			G.setPasse(request.getParameter("passe"));
			G.setAdresse(request.getParameter("adresse"));
			G.setEmail(request.getParameter("email"));
			G.setTelephone(request.getParameter("telephone"));
			new _Gerant().profile(G);
		}
		session.setAttribute("gerant", new _Gerant().gerant(G));			
		request.getRequestDispatcher("/WEB-INF/gerant/data/profile.jsp").forward(request, response);
	}
	
	protected void utilisateur(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		G = new Gerant();
		if(request.getParameter("utilisateur")=="") {
			response.setStatus(400);
		}
		else if(!new _Gerant().utilisateur(G, request.getParameter("utilisateur"))) {
			response.getWriter().print("<p>Nom d'utilisateur n'existe pas</p>");
		}
		else {
			response.setStatus(400);
		}
	}
	
	protected void agents(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		if(new _Gerant().agents().isEmpty()) {
			response.setStatus(400);
		}
		else{
			session.setAttribute("agents", new _Gerant().agents());
			request.getRequestDispatcher("/WEB-INF/gerant/data/agents.jsp").forward(request, response);
		}
	}
	
	protected void etat(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = new Agent();
		A.setBanner(request.getParameter("banner").equals("bloqué"));
		A.setUtilisateur(request.getParameter("utilisateur"));
		new _Gerant().etat(A);
		agents(request, response);
	}
	
	protected void email(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		G = (Gerant)session.getAttribute("gerant");
		if(G==null) {
			G = new Gerant();
		}
		if(new _Gerant().email(G, request.getParameter("email"))) {
			response.getWriter().print("<p>Email existe deja</p>");
		}
	}
	
	protected void telephone(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		G = (Gerant)session.getAttribute("gerant");
		if(G==null) {
			G = new Gerant();
		}
		if(new _Gerant().telephone(G, request.getParameter("telephone"))) {
			response.getWriter().print("<p>Numero de telephone existe deja</p>");
		}
	}
	
	protected void modifierAgent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		session = request.getSession();
		A = new Agent();
		A.setUtilisateur(request.getParameter("utilisateur"));
		A.setPasse(request.getParameter("passe"));
		A.setAdresse(request.getParameter("adresse"));
		A.setTelephone(request.getParameter("telephone"));
		A.setEmail(request.getParameter("email"));
		new _Gerant().modifierAgent(A);
		agents(request, response);
	}
	
	protected void ajouterAgent(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		A = new Agent();
		A.setUtilisateur(request.getParameter("utilisateur"));
		A.setPasse(request.getParameter("passe"));
		A.setNom(request.getParameter("nom"));
		A.setPrenom(request.getParameter("prenom"));
		A.setNaissance(request.getParameter("naissance"));
		A.setAdresse(request.getParameter("adresse"));
		A.setTelephone(request.getParameter("telephone"));
		A.setEmail(request.getParameter("email"));
		A.setIdentite(request.getParameter("identite"));
		A.setBanner(false);
		A.setGerant(false);
		new _Gerant().ajouterAgent(A);
		agents(request, response);
	}
}