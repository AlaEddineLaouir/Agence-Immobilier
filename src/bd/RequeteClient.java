package bd;

import modele.Appartement;
import modele.Bien;
import modele.Client;
import modele.Locale;
import modele.Location;
import modele.RDV;
import modele.Terrain;
import modele.Villa;

public class RequeteClient {
	public static String client(Client C) {
		return "SELECT * FROM client WHERE utilisateur='"+C.getUtilisateur()+"' AND passe='"+C.getPasse()+"';";
	}
	public static String utilisateur(Client C, String utilisateur) {
		return "SELECT * FROM client WHERE utilisateur='"+utilisateur+"' AND utilisateur NOT IN(SELECT utilisateur FROM client WHERE utilisateur='"+C.getUtilisateur()+"');";
	}
	public static String telephone(Client C, String telephone) {
		return "SELECT * FROM client WHERE telephone='"+telephone+"' AND utilisateur NOT IN(SELECT utilisateur FROM client WHERE utilisateur='"+C.getUtilisateur()+"');";
	}
	public static String email(Client C, String email) {
		return "SELECT * FROM client WHERE email='"+email+"' AND utilisateur NOT IN(SELECT utilisateur FROM client WHERE utilisateur='"+C.getUtilisateur()+"');";
	}
	public static String identite(Client C, String identite) {
		return "SELECT * FROM client WHERE identite='"+identite+"' AND utilisateur NOT IN(SELECT utilisateur FROM client WHERE utilisateur='"+C.getUtilisateur()+"');";
	}
	public static String etatBien(Bien b) {
		return "UPDATE bien SET cacher="+!b.isCacher()+" WHERE id="+b.getId()+";";
	}
	public static String modifierAppartement(Appartement a) {
		return "UPDATE bien b, appartement a SET b.prix="+a.getPrix()+", b.surface="+a.getSurface()+", a.piece="+a.getPiece()+", a.climatisation='"+a.getClimatisation()+"', a.meuble='"+a.getMeuble()+"', a.balcon='"+a.getBalcon()+"', a.stationnement='"+a.getStationnement()+"' WHERE b.id=a.id AND a.id="+a.getId()+";";
	}
	public static String modifierLocale(Locale l) {
		return "UPDATE bien b, locale l SET b.prix="+l.getPrix()+", b.surface="+l.getSurface()+", l.interieur='"+l.getInterieur()+"', l.exterieur='"+l.getExterieur()+"', l.gas='"+l.getGas()+"', l.electricite='"+l.getElectricite()+"', l.stationnement='"+l.getStationnement()+"', l.alarm='"+l.getAlarm()+"' WHERE b.id=l.id AND l.id="+l.getId()+";";
	}
	public static String modifierTerrain(Terrain t) {
		return "UPDATE bien b, terrain t  SET b.prix="+t.getPrix()+", b.surface="+t.getSurface()+", t.agricole='"+t.getAgricole()+"' WHERE b.id=t.id AND t.id="+t.getId()+";";
	}
	public static String modifierVilla(Villa v) {
		return "UPDATE bien b, villa v SET b.prix="+v.getPrix()+", b.surface="+v.getSurface()+", v.etage="+v.getEtage()+", v.piece='"+v.getPiece()+"', v.picine='"+v.getPicine()+"', v.garage='"+v.getGarage()+"', v.jardin='"+v.getJardin()+"', v.climatisation='"+v.getClimatisation()+"', v.meuble='"+v.getMeuble()+"', v.alarm='"+v.getAlarm()+"', v.chemine='"+v.getChemine()+"', v.interphone='"+v.getInterphone()+"' WHERE b.id=v.id AND v.id="+v.getId()+";";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	public static String ajouterClient(Client C) {
		return "INSERT INTO client VALUES('"+C.getUtilisateur()+"','"+C.getPasse()+"','"+C.getNom()+"','"+C.getPrenom()+"','"+C.getNaissance()+"','"+C.getAdresse()+"','"+C.getTelephone()+"','"+C.getEmail()+"','"+C.getIdentite()+"',"+C.isBanner()+");";
	}
	public static String profile(Client C) {
		return "UPDATE client SET passe='"+C.getPasse()+"', adresse='"+C.getAdresse()+"', telephone='"+C.getTelephone()+"', email='"+C.getEmail()+"' WHERE utilisateur='"+C.getUtilisateur()+"';";
	}
	public static String ajouterBien(RDV rdv) {
		return "INSERT INTO rdv(dateRDV, heureRDV, objetRDV, contact, client, agent) VALUES('"+rdv.getDateRDV()+"','"+rdv.getHeureRDV()+"','"+rdv.getObjetRDV()+"','"+rdv.getContact()+"','"+rdv.getClient()+"','"+rdv.getAgent()+"');";
	}
	public static String louerBien(RDV rdv) {
		return "INSERT INTO rdv(dateRDV, heureRDV, objetRDV, contact, client, bien, agent) VALUES('"+rdv.getDateRDV()+"','"+rdv.getHeureRDV()+"','"+rdv.getObjetRDV()+"','"+rdv.getContact()+"','"+rdv.getClient()+"',"+rdv.getBien()+",'"+rdv.getAgent()+"');";
	}
	public static String visiterBien(RDV rdv) {
		return "INSERT INTO rdv(dateRDV, heureRDV, objetRDV, contact, client, bien, agent) VALUES('"+rdv.getDateRDV()+"','"+rdv.getHeureRDV()+"','"+rdv.getObjetRDV()+"','"+rdv.getContact()+"','"+rdv.getClient()+"',"+rdv.getBien()+",'"+rdv.getAgent()+"');";
	}
	public static String cacher(RDV rdv) {
		return "UPDATE bien SET cacher=true WHERE id='"+rdv.getBien()+"';";
	}
	public static String appartements(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String etage, String piece, String climatisation, String meuble, String balcon, String stationnement) {
		return "SELECT * FROM bien b, appartement a WHERE b.id=a.id AND cacher=false AND proprietaire!='"+C.getUtilisateur()+"' AND ville"+ville+" AND prix BETWEEN "+minPrix+" AND "+maxPrix+" AND surface BETWEEN "+minSurface+" AND "+maxSurface+" AND etage"+etage+" AND piece"+piece+" AND climatisation"+climatisation+" AND meuble"+meuble+" AND balcon"+balcon+" AND stationnement"+stationnement+" AND b.id NOT IN(SELECT DISTINCT bien FROM rdv where dateRDV>=date(now()) AND client='"+C.getUtilisateur()+"' AND bien);";
	}
	public static String locales(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String interieur, String exterieur, String gas, String electricite, String stationnement, String alarm) {
		return "SELECT * FROM bien b, locale a WHERE b.id=a.id AND cacher=false AND proprietaire!='"+C.getUtilisateur()+"' AND ville"+ville+" AND prix BETWEEN "+minPrix+" AND "+maxPrix+" AND surface BETWEEN "+minSurface+" AND "+maxSurface+" AND interieur"+interieur+" AND exterieur"+exterieur+" AND gas"+gas+" AND electricite"+electricite+" AND stationnement"+stationnement+" AND alarm"+alarm+" AND b.id NOT IN(SELECT DISTINCT bien FROM rdv where dateRDV>=date(now()) AND client='"+C.getUtilisateur()+"' AND bien);";
	}
	public static String terrains(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String agricole) {
		return "SELECT * FROM bien b, terrain t WHERE b.id=t.id AND cacher=false AND proprietaire!='"+C.getUtilisateur()+"' AND ville"+ville+" AND prix BETWEEN "+minPrix+" AND "+maxPrix+" AND surface BETWEEN "+minSurface+" AND "+maxSurface+" AND agricole"+agricole+" AND b.id NOT IN(SELECT DISTINCT bien FROM rdv where dateRDV>=date(now()) AND client='"+C.getUtilisateur()+"' AND bien);";
	}
	public static String villas(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String etage, String piece, String picine, String garage, String jardin, String climatisation, String meuble, String alarm, String chemine, String interphone) {
		return "SELECT * FROM bien b, villa v WHERE b.id=v.id AND cacher=false AND proprietaire!='"+C.getUtilisateur()+"' AND ville"+ville+" AND prix BETWEEN "+minPrix+" AND "+maxPrix+" AND surface BETWEEN "+minSurface+" AND "+maxSurface+" AND etage"+etage+" AND piece"+piece+" AND picine"+picine+" AND garage"+garage+" AND jardin"+jardin+" AND climatisation"+climatisation+" AND meuble"+meuble+" AND alarm"+alarm+" AND chemine"+chemine+" AND interphone"+interphone+" AND b.id NOT IN(SELECT DISTINCT bien FROM rdv where dateRDV>=date(now()) AND client='"+C.getUtilisateur()+"' AND bien);";
	}
	public static String RDVs(Client C) {
		return "SELECT * FROM rdv WHERE dateRDV>=DATE(NOW()) AND client='"+C.getUtilisateur()+"';";
	}
	public static String locations(Client C) {
		return "SELECT * FROM location WHERE locataire='"+C.getUtilisateur()+"';";
	}
	public static String paiements(Location L) {
		return "SELECT * FROM paiement WHERE location="+L.getId()+";";
	}
	public static String appartements(Client C) {
		return "SELECT DISTINCT * from bien b, appartement a WHERE b.id=a.id AND proprietaire='"+C.getUtilisateur()+"';";
	}
	public static String locales(Client C) {
		return "SELECT DISTINCT * from bien b, locale l WHERE b.id=l.id AND proprietaire='"+C.getUtilisateur()+"';";
	}
	public static String terrains(Client C) {
		return "SELECT DISTINCT * from bien b, terrain t WHERE b.id=t.id AND proprietaire='"+C.getUtilisateur()+"';";
	}
	public static String villas(Client C) {
		return "SELECT DISTINCT * from bien b, villa v WHERE b.id=v.id AND proprietaire='"+C.getUtilisateur()+"';";
	}
	public static String modifierRDV(RDV rdv) {
		return "UPDATE rdv SET dateRDV='"+rdv.getDateRDV()+"', heureRDV='"+rdv.getHeureRDV()+"' WHERE id="+rdv.getId()+";";
	}
	public static String supprimerRDV(RDV rdv) {
		return "DELETE from rdv WHERE id="+rdv.getId()+";";
	}
}
