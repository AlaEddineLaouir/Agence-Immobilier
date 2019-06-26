package bd;

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

public class RequeteAgent {
	public static String agent(Agent A) {
		return "SELECT * FROM agent WHERE utilisateur='"+A.getUtilisateur()+"' AND passe='"+A.getPasse()+"';";
	}
	public static String client(Client C) {
		return "SELECT * FROM client WHERE utilisateur='"+C.getUtilisateur()+"';";
	}
	public static String utilisateur(Agent A, String utilisateur) {
		return "SELECT * FROM agent WHERE gerant=false AND utilisateur='"+utilisateur+"' AND utilisateur NOT IN(SELECT utilisateur FROM agent WHERE gerant=false AND utilisateur='"+A.getUtilisateur()+"');";
	}
	//creer un compte agent en vérifiant avec la table gerant
	public static String gerant(Agent A, String utilisateur) {
		return "SELECT * FROM agent WHERE utilisateur='"+utilisateur+"' AND utilisateur NOT IN(SELECT utilisateur FROM agent WHERE utilisateur='"+A.getUtilisateur()+"');";
	}
	public static String telephone(Agent A, String telephone) {
		return "SELECT * FROM agent WHERE telephone='"+telephone+"' AND utilisateur NOT IN(SELECT utilisateur FROM agent WHERE utilisateur='"+A.getUtilisateur()+"');";
	}
	public static String email(Agent A, String email) {
		return "SELECT * FROM agent WHERE email='"+email+"' AND utilisateur NOT IN(SELECT utilisateur FROM agent WHERE utilisateur='"+A.getUtilisateur()+"');";
	}
	public static String identite(Agent A, String identite) {
		return "SELECT * FROM agent WHERE identite='"+identite+"' AND utilisateur NOT IN(SELECT utilisateur FROM agent WHERE utilisateur='"+A.getUtilisateur()+"');";
	}
	public static String clients() {
		return "SELECT * FROM client;";
	}
	public static String etat(Client C) {
		return "UPDATE client SET banner="+!C.isBanner()+" WHERE utilisateur='"+C.getUtilisateur()+"';";
	}
	public static String ajouterClient(Client C) {
		return "INSERT INTO client VALUES('"+C.getUtilisateur()+"','"+C.getPasse()+"','"+C.getNom()+"','"+C.getPrenom()+"','"+C.getNaissance()+"','"+C.getAdresse()+"','"+C.getTelephone()+"','"+C.getEmail()+"','"+C.getIdentite()+"',"+C.isBanner()+");";
	}
	public static String modifierClient(Client C) {
		return "UPDATE client SET passe='"+C.getPasse()+"', adresse='"+C.getAdresse()+"', telephone='"+C.getTelephone()+"', email='"+C.getEmail()+"' WHERE utilisateur='"+C.getUtilisateur()+"';";
	}
	public static String profile(Agent A) {
		return "UPDATE agent SET passe='"+A.getPasse()+"', adresse='"+A.getAdresse()+"', telephone='"+A.getTelephone()+"', email='"+A.getEmail()+"' WHERE utilisateur='"+A.getUtilisateur()+"';";
	}
	public static String ajouterBien(Bien b) {
		return "INSERT INTO bien(ville, adresse, prix, surface, cacher, proprietaire) VALUES('"+b.getVille()+"','"+b.getAdresse()+"',"+b.getPrix()+","+b.getSurface()+","+b.isCacher()+",'"+b.getProprietaire()+"');";
	}
	public static String ajouterBien(Appartement a) {
		return "INSERT INTO appartement VALUES(LAST_INSERT_ID(),"+a.getEtage()+","+a.getPiece()+",'"+a.getClimatisation()+"','"+a.getMeuble()+"','"+a.getBalcon()+"','"+a.getStationnement()+"');";
	}
	public static String ajouterBien(Locale l) {
		return "INSERT INTO locale VALUES(LAST_INSERT_ID(),'"+l.getInterieur()+"','"+l.getExterieur()+"','"+l.getGas()+"','"+l.getElectricite()+"','"+l.getStationnement()+"','"+l.getAlarm()+"');";
	}
	public static String ajouterBien(Terrain t) {
		return "INSERT INTO terrain VALUES(LAST_INSERT_ID(),'"+t.getAgricole()+"');";
	}
	public static String ajouterBien(Villa v) {
		return "INSERT INTO villa VALUES(LAST_INSERT_ID(),"+v.getEtage()+","+v.getPiece()+",'"+v.getPicine()+"','"+v.getGarage()+"','"+v.getJardin()+"','"+v.getClimatisation()+"','"+v.getMeuble()+"','"+v.getAlarm()+"','"+v.getChemine()+"','"+v.getInterphone()+"');";
	}
	public static String appartements() {
		return "SELECT DISTINCT * from bien b, appartement a WHERE b.id=a.id;";
	}
	public static String locales() {
		return "SELECT DISTINCT * from bien b, locale l WHERE b.id=l.id;";
	}
	public static String terrains() {
		return "SELECT DISTINCT * from bien b, terrain t WHERE b.id=t.id;";
	}
	public static String villas() {
		return "SELECT DISTINCT * from bien b, villa v WHERE b.id=v.id;";
	}
	public static String RDVs(Agent A) {
		return "SELECT * FROM rdv WHERE agent='"+A.getUtilisateur()+"' AND dateRDV=DATE(NOW()) ORDER BY heureRDV;";
	}
	public static String locations() {
		return "SELECT * FROM location;";
	}
	public static String occuperAgent(RDV rdv) {
		return "INSERT INTO rdv(dateRDV, heureRDV, objetRDV, agent) VALUES('"+rdv.getDateRDV()+"','"+rdv.getHeureRDV()+"','"+rdv.getObjetRDV()+"','"+rdv.getAgent()+"');";
	}
	public static String ajouterLocation(Location L) {
		return "INSERT INTO location(paiement, debut, fin, cout, locataire, bien, agent) VALUES('"+L.getPaiement()+"','"+L.getDebut()+"','"+L.getFin()+"',"+L.getCout()+",'"+L.getLocataire()+"',"+L.getBien()+",'"+L.getAgent()+"');";
	}
	public static String ajouterPaiement(Paiement P) {
		return "INSERT INTO Paiement(date, montant, location, agent) VALUES('"+P.getDate()+"',"+P.getMontant()+","+P.getLocation()+",'"+P.getAgent()+"');";
	}
	public static String annulerLocation(Location L) {
		return "Update location SET fin=DATE(NOW()) WHERE id="+L.getId()+";";
	}
	public static String modifierRDV(RDV rdv) {
		return "UPDATE rdv SET dateRDV='"+rdv.getDateRDV()+"', heureRDV='"+rdv.getHeureRDV()+"' WHERE id="+rdv.getId()+";";
	}
	public static String supprimerRDV(RDV rdv) {
		return "DELETE from rdv WHERE id="+rdv.getId()+";";
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
	public static String id() {
		return "SELECT MAX(id) as id FROM bien;";
	}
	public static String paiements(Location L) {
		return "SELECT * FROM paiement WHERE location="+L.getId()+";";
	}
	public static String appartements(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String etage, String piece, String climatisation, String meuble, String balcon, String stationnement) {
		return "SELECT * FROM bien b, appartement a WHERE b.id=a.id AND cacher=false AND proprietaire='"+C.getUtilisateur()+"' AND ville"+ville+" AND prix BETWEEN "+minPrix+" AND "+maxPrix+" AND surface BETWEEN "+minSurface+" AND "+maxSurface+" AND etage"+etage+" AND piece"+piece+" AND climatisation"+climatisation+" AND meuble"+meuble+" AND balcon"+balcon+" AND stationnement"+stationnement+";";
	}
	public static String locales(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String interieur, String exterieur, String gas, String electricite, String stationnement, String alarm) {
		return "SELECT * FROM bien b, locale a WHERE b.id=a.id AND cacher=false AND proprietaire='"+C.getUtilisateur()+"' AND ville"+ville+" AND prix BETWEEN "+minPrix+" AND "+maxPrix+" AND surface BETWEEN "+minSurface+" AND "+maxSurface+" AND interieur"+interieur+" AND exterieur"+exterieur+" AND gas"+gas+" AND electricite"+electricite+" AND stationnement"+stationnement+" AND alarm"+alarm+";";
	}
	public static String terrains(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String agricole) {
		return "SELECT * FROM bien b, terrain t WHERE b.id=t.id AND cacher=false AND proprietaire='"+C.getUtilisateur()+"' AND ville"+ville+" AND prix BETWEEN "+minPrix+" AND "+maxPrix+" AND surface BETWEEN "+minSurface+" AND "+maxSurface+" AND agricole"+agricole+";";
	}
	public static String villas(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String etage, String piece, String picine, String garage, String jardin, String climatisation, String meuble, String alarm, String chemine, String interphone) {
		return "SELECT * FROM bien b, villa v WHERE b.id=v.id AND cacher=false AND proprietaire='"+C.getUtilisateur()+"' AND ville"+ville+" AND prix BETWEEN "+minPrix+" AND "+maxPrix+" AND surface BETWEEN "+minSurface+" AND "+maxSurface+" AND etage"+etage+" AND piece"+piece+" AND picine"+picine+" AND garage"+garage+" AND jardin"+jardin+" AND climatisation"+climatisation+" AND meuble"+meuble+" AND alarm"+alarm+" AND chemine"+chemine+" AND interphone"+interphone+";";
	}
}