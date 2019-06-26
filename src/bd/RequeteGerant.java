package bd;

import modele.Agent;
import modele.Gerant;

public class RequeteGerant {
	public static String gerant(Gerant G) {
		return "SELECT * FROM agent WHERE utilisateur='"+G.getUtilisateur()+"' AND passe='"+G.getPasse()+"';";
	}
	public static String utilisateur(Gerant G, String utilisateur) {
		return "SELECT * FROM agent WHERE gerant=true AND utilisateur='"+utilisateur+"' AND utilisateur NOT IN(SELECT utilisateur FROM agent WHERE gerant=true AND utilisateur='"+G.getUtilisateur()+"');";
	}
	public static String agents() {
		return "SELECT * FROM agent WHERE gerant=false;";
	}
	public static String etat(Agent A) {
		return "UPDATE agent SET banner="+!A.isBanner()+" WHERE gerant=false AND utilisateur='"+A.getUtilisateur()+"';";
	}
	public static String telephone(Gerant G, String telephone) {
		return "SELECT * FROM agent WHERE telephone='"+telephone+"' AND utilisateur NOT IN(SELECT utilisateur FROM client WHERE utilisateur='"+G.getUtilisateur()+"');";
	}
	public static String email(Gerant G, String email) {
		return "SELECT * FROM agent WHERE email='"+email+"' AND utilisateur NOT IN(SELECT utilisateur FROM agent WHERE utilisateur='"+G.getUtilisateur()+"');";
	}
	public static String ajouterAgent(Agent A) {
		return "INSERT INTO agent VALUES('"+A.getUtilisateur()+"','"+A.getPasse()+"','"+A.getNom()+"','"+A.getPrenom()+"','"+A.getNaissance()+"','"+A.getAdresse()+"','"+A.getTelephone()+"','"+A.getEmail()+"','"+A.getIdentite()+"',"+A.isBanner()+","+A.isGerant()+");";
	}
	public static String modifierAgent(Agent A) {
		return "UPDATE agent SET passe='"+A.getPasse()+"', adresse='"+A.getAdresse()+"', telephone='"+A.getTelephone()+"', email='"+A.getEmail()+"' WHERE utilisateur='"+A.getUtilisateur()+"';";
	}
	public static String profile(Gerant G) {
		return "UPDATE agent SET passe='"+G.getPasse()+"', adresse='"+G.getAdresse()+"', telephone='"+G.getTelephone()+"', email='"+G.getEmail()+"' WHERE utilisateur='"+G.getUtilisateur()+"';";
	}
}