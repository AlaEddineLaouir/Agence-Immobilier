package modele;

import java.sql.SQLException;
import java.util.ArrayList;

import bd.Connexion;
import bd.RequeteGerant;

public class _Gerant {
	public Gerant gerant(Gerant G) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteGerant.gerant(G));
			c.rs.next();
			G.setUtilisateur(c.rs.getString("utilisateur"));
			G.setPasse(c.rs.getString("passe"));
			G.setNom(c.rs.getString("nom"));
			G.setPrenom(c.rs.getString("prenom"));
			G.setNaissance(c.rs.getString("naissance"));
			G.setAdresse(c.rs.getString("adresse"));
			G.setTelephone(c.rs.getString("telephone"));
			G.setEmail(c.rs.getString("email"));
			G.setIdentite(c.rs.getString("identite"));
			c.Deconnexion();
			return G;
		} catch (SQLException e) {
			return new Gerant();
		}
	}
	
	public boolean utilisateur(Gerant G, String utilisateur) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteGerant.utilisateur(G,utilisateur));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean telephone(Gerant G, String telephone) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteGerant.telephone(G, telephone));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	public boolean email(Gerant G, String email) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteGerant.email(G, email));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public ArrayList<Agent> agents() {
		Connexion c = new Connexion();
		ArrayList<Agent> agent = new ArrayList<Agent>();

		try {
			c.rs = c.stat.executeQuery(RequeteGerant.agents());
			while(c.rs.next()) {
				Agent A = new Agent();
				A.setUtilisateur(c.rs.getString("utilisateur"));
				A.setPasse(c.rs.getString("passe"));
				A.setNom(c.rs.getString("nom"));
				A.setPrenom(c.rs.getString("prenom"));
				A.setNaissance(c.rs.getString("naissance"));
				A.setAdresse(c.rs.getString("adresse"));
				A.setTelephone(c.rs.getString("telephone"));
				A.setEmail(c.rs.getString("email"));
				A.setIdentite(c.rs.getString("identite"));
				A.setBanner(c.rs.getBoolean("banner"));
				agent.add(A);
			}
			c.Deconnexion();
			return agent;
		} catch (SQLException e) {
			return agent;
		}
	}
	
	public boolean etat(Agent A) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteGerant.etat(A))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean ajouterAgent(Agent A) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteGerant.ajouterAgent(A))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierAgent(Agent A) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteGerant.modifierAgent(A))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean profile(Gerant G) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteGerant.profile(G))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
}
