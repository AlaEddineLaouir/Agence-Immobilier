package modele;

import java.sql.SQLException;
import java.util.ArrayList;

import bd.Connexion;
import bd.RequeteAgent;
import bd.RequeteClient;

public class _Agent {
	public Agent agent(Agent A) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.agent(A));
			c.rs.next();
			A.setNomUtilisateur(c.rs.getString("nomUtilisateur"));
			A.setMotPasse(c.rs.getString("motPpasse"));
			A.setNom(c.rs.getString("nom"));
			A.setPrenom(c.rs.getString("prenom"));
			A.setDateNaissance(c.rs.getString("dateNaissance"));
			A.setAdresse(c.rs.getString("adresse"));
			A.setNumTelephone(c.rs.getString("numTelephone"));
			A.setEmail(c.rs.getString("email"));
			A.setNumIdentite(c.rs.getString("numIdentite"));
			c.Deconnexion();
			return A;
		} catch (SQLException e) {
			return new Agent();
		}
	}
	
	public boolean utilisateur(Agent A, String utilisateur) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.utilisateur(A,utilisateur));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean gerant(Agent A, String utilisateur) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.gerant(A,utilisateur));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean client(Client C) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.client(C));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public Client clientProfile(Client C) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.client(C));
			c.rs.next();
			C.setUtilisateur(c.rs.getString("utilisateur"));
			C.setPasse(c.rs.getString("passe"));
			C.setNom(c.rs.getString("nom"));
			C.setPrenom(c.rs.getString("prenom"));
			C.setNaissance(c.rs.getString("naissance"));
			C.setAdresse(c.rs.getString("adresse"));
			C.setTelephone(c.rs.getString("telephone"));
			C.setEmail(c.rs.getString("email"));
			C.setIdentite(c.rs.getString("identite"));
			c.Deconnexion();
			return C;
		} catch (SQLException e) {
			return new Client();
		}
	}
	
	public boolean telephone(Agent A, String telephone) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.telephone(A, telephone));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	public boolean email(Agent A, String email) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.email(A, email));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	public boolean identite(Agent A, String identite) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.identite(A, identite));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public ArrayList<Client> clients() {
		Connexion c = new Connexion();
		ArrayList<Client> client = new ArrayList<Client>();

		try {
			c.rs = c.stat.executeQuery(RequeteAgent.clients());
			while(c.rs.next()) {
				Client C = new Client();
				C.setUtilisateur(c.rs.getString("utilisateur"));
				C.setPasse(c.rs.getString("passe"));
				C.setNom(c.rs.getString("nom"));
				C.setPrenom(c.rs.getString("prenom"));
				C.setNaissance(c.rs.getString("naissance"));
				C.setAdresse(c.rs.getString("adresse"));
				C.setTelephone(c.rs.getString("telephone"));
				C.setEmail(c.rs.getString("email"));
				C.setIdentite(c.rs.getString("identite"));
				C.setBanner(c.rs.getBoolean("banner"));
				client.add(C);
			}
			c.Deconnexion();
			return client;
		} catch (SQLException e) {
			return client;
		}
	}
	
	public boolean etat(Client C) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.etat(C))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean ajouterClient(Client C) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.ajouterClient(C))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierClient(Client C) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.modifierClient(C))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean profile(Agent A) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.profile(A))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean ajouterBien(Bien b, Appartement a) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.ajouterBien(b))==1 && c.stat.executeUpdate(RequeteAgent.ajouterBien(a))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean ajouterBien(Bien b, Locale l) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.ajouterBien(b))==1 && c.stat.executeUpdate(RequeteAgent.ajouterBien(l))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean ajouterBien(Bien b, Terrain t) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.ajouterBien(b))==1 && c.stat.executeUpdate(RequeteAgent.ajouterBien(t))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean ajouterBien(Bien b, Villa v) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.ajouterBien(b))==1 && c.stat.executeUpdate(RequeteAgent.ajouterBien(v))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public ArrayList<Appartement> appartements() {
		Connexion c = new Connexion();
		ArrayList<Appartement> appartement = new ArrayList<Appartement>();

		try {
			c.rs = c.stat.executeQuery(RequeteAgent.appartements());
			while(c.rs.next()) {
				Appartement A = new Appartement();
				A.setId(c.rs.getInt("id"));
				A.setVille(c.rs.getString("ville"));
				A.setAdresse(c.rs.getString("adresse"));
				A.setPrix(c.rs.getDouble("prix"));
				A.setSurface(c.rs.getDouble("surface"));
				A.setCacher(c.rs.getBoolean("cacher"));
				A.setProprietaire(c.rs.getString("proprietaire"));
				A.setEtage(c.rs.getInt("etage"));
				A.setPiece(c.rs.getInt("piece"));
				A.setClimatisation(c.rs.getString("climatisation"));
				A.setMeuble(c.rs.getString("meuble"));
				A.setBalcon(c.rs.getString("balcon"));
				A.setStationnement(c.rs.getString("stationnement"));
				appartement.add(A);
			}
			c.Deconnexion();
			return appartement;
		} catch (SQLException e) {
			return appartement;
		}
	}
	
	public ArrayList<Locale> locales() {
		Connexion c = new Connexion();
		ArrayList<Locale> locale = new ArrayList<Locale>();

		try {
			c.rs = c.stat.executeQuery(RequeteAgent.locales());
			while(c.rs.next()) {
				Locale L = new Locale();
				L.setId(c.rs.getInt("id"));
				L.setVille(c.rs.getString("ville"));
				L.setAdresse(c.rs.getString("adresse"));
				L.setPrix(c.rs.getDouble("prix"));
				L.setSurface(c.rs.getDouble("surface"));
				L.setCacher(c.rs.getBoolean("cacher"));
				L.setProprietaire(c.rs.getString("proprietaire"));
				L.setInterieur(c.rs.getString("interieur"));
				L.setExterieur(c.rs.getString("exterieur"));
				L.setGas(c.rs.getString("gas"));
				L.setElectricite(c.rs.getString("electricite"));
				L.setStationnement(c.rs.getString("stationnement"));
				L.setAlarm(c.rs.getString("alarm"));
				locale.add(L);
			}
			c.Deconnexion();
			return locale;
		} catch (SQLException e) {
			return locale;
		}
	}
	
	public ArrayList<Terrain> terrains() {
		Connexion c = new Connexion();
		ArrayList<Terrain> terrain = new ArrayList<Terrain>();

		try {
			c.rs = c.stat.executeQuery(RequeteAgent.terrains());
			while(c.rs.next()) {
				Terrain T = new Terrain();
				T.setId(c.rs.getInt("id"));
				T.setVille(c.rs.getString("ville"));
				T.setAdresse(c.rs.getString("adresse"));
				T.setPrix(c.rs.getDouble("prix"));
				T.setSurface(c.rs.getDouble("surface"));
				T.setCacher(c.rs.getBoolean("cacher"));
				T.setProprietaire(c.rs.getString("proprietaire"));
				T.setAgricole(c.rs.getString("agricole"));
				terrain.add(T);
			}
			c.Deconnexion();
			return terrain;
		} catch (SQLException e) {
			return terrain;
		}
	}
	
	public ArrayList<Villa> villas() {
		Connexion c = new Connexion();
		ArrayList<Villa> villa = new ArrayList<Villa>();

		try {
			c.rs = c.stat.executeQuery(RequeteAgent.villas());
			while(c.rs.next()) {
				Villa V = new Villa();
				V.setId(c.rs.getInt("id"));
				V.setVille(c.rs.getString("ville"));
				V.setAdresse(c.rs.getString("adresse"));
				V.setPrix(c.rs.getDouble("prix"));
				V.setSurface(c.rs.getDouble("surface"));
				V.setCacher(c.rs.getBoolean("cacher"));
				V.setProprietaire(c.rs.getString("proprietaire"));
				V.setEtage(c.rs.getInt("etage"));
				V.setPiece(c.rs.getInt("piece"));
				V.setPicine(c.rs.getString("picine"));
				V.setGarage(c.rs.getString("garage"));
				V.setJardin(c.rs.getString("jardin"));
				V.setClimatisation(c.rs.getString("climatisation"));
				V.setMeuble(c.rs.getString("meuble"));
				V.setAlarm(c.rs.getString("alarm"));
				V.setChemine(c.rs.getString("chemine"));
				V.setInterphone(c.rs.getString("interphone"));
				villa.add(V);
			}
			c.Deconnexion();
			return villa;
		} catch (SQLException e) {
			return villa;
		}
	}
	
	public ArrayList<RDV> RDVs(Agent A) {
		Connexion c = new Connexion();
		ArrayList<RDV> RDV = new ArrayList<RDV>();

		try {
			c.rs = c.stat.executeQuery(RequeteAgent.RDVs(A));
			while(c.rs.next()) {
				RDV R = new RDV();
				R.setId(c.rs.getInt("id"));
				R.setDateRDV(c.rs.getString("dateRDV"));
				R.setHeureRDV(c.rs.getString("heureRDV"));
				R.setObjetRDV(c.rs.getString("objetRDV"));
				R.setContact(c.rs.getString("contact"));
				R.setClient(c.rs.getString("client"));
				R.setBien(c.rs.getInt("bien"));
				R.setAgent(c.rs.getString("agent"));
				RDV.add(R);
			}
			c.Deconnexion();
			return RDV;
		} catch (SQLException e) {
			return RDV;
		}
	}
	
	public ArrayList<Location> locations() {
		Connexion c = new Connexion();
		ArrayList<Location> location = new ArrayList<Location>();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.locations());
			while(c.rs.next()) {
				Location L = new Location();
				L.setId(c.rs.getInt("id"));
				L.setPaiement(c.rs.getString("paiement"));
				L.setDebut(c.rs.getString("debut"));
				L.setFin(c.rs.getString("fin"));
				L.setCout(c.rs.getDouble("cout"));
				L.setLocataire(c.rs.getString("locataire"));
				L.setBien(c.rs.getInt("bien"));
				L.setAgent(c.rs.getString("agent"));
				location.add(L);
			}
			c.Deconnexion();
			return location;
		} catch (SQLException e) {
			return location;
		}
	}
	
	public boolean occuperAgent(RDV rdv) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.occuperAgent(rdv))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean ajouterLocation(Location L) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.ajouterLocation(L))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean ajouterPaiement(Paiement P) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.ajouterPaiement(P))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean annulerLocation(Location L) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.annulerLocation(L))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierRDV(RDV rdv) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.modifierRDV(rdv))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean supprimerRDV(RDV rdv) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.supprimerRDV(rdv))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean etatBien(Bien b) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.etatBien(b))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierAppartement(Appartement a) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.modifierAppartement(a))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierLocale(Locale l) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.modifierLocale(l))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierTerrain(Terrain t) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.modifierTerrain(t))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierVilla(Villa v) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteAgent.modifierVilla(v))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public int id() {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.id());
			c.rs.next();
			return(c.rs.getInt("id"));
		} catch (SQLException e) {
			return 0;
		}
	}
	
	
	public ArrayList<Paiement> paiements(Location L) {
		Connexion c = new Connexion();
		ArrayList<Paiement> paiement = new ArrayList<Paiement>();

		try {
			c.rs = c.stat.executeQuery(RequeteAgent.paiements(L));
			while(c.rs.next()) {
				Paiement P = new Paiement();
				P.setId(c.rs.getInt("id"));
				P.setDate(c.rs.getString("date"));
				P.setMontant(c.rs.getDouble("montant"));
				paiement.add(P);
			}
			c.Deconnexion();
			return paiement;
		} catch (SQLException e) {
			return paiement;
		}
	}
	
	public ArrayList<Appartement> appartements(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String etage, String piece, String climatisation, String meuble, String balcon, String stationnement) {
		Connexion c = new Connexion();
		ArrayList<Appartement> appartement = new ArrayList<Appartement>();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.appartements(C, ville, minPrix, maxPrix, minSurface, maxSurface, etage, piece, climatisation, meuble, balcon, stationnement));
			while(c.rs.next()) {
				Appartement a = new Appartement();
				a.setId(c.rs.getInt("id"));
				a.setVille(c.rs.getString("ville"));
				a.setAdresse(c.rs.getString("adresse"));
				a.setPrix(c.rs.getDouble("prix"));
				a.setSurface(c.rs.getDouble("surface"));
				a.setCacher(c.rs.getBoolean("cacher"));
				a.setProprietaire(c.rs.getString("proprietaire"));
				a.setEtage(c.rs.getInt("etage"));
				a.setPiece(c.rs.getInt("piece"));
				a.setClimatisation(c.rs.getString("climatisation"));
				a.setMeuble(c.rs.getString("meuble"));
				a.setBalcon(c.rs.getString("balcon"));
				a.setStationnement(c.rs.getString("stationnement"));
				appartement.add(a);
			}
			c.Deconnexion();
			return appartement;
		} catch (SQLException e) {
			return appartement;
		}
	}
	
	public ArrayList<Locale> locales(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String interieur, String exterieur, String gas, String electricite, String stationnement, String alarm) {
		Connexion c = new Connexion();
		ArrayList<Locale> locale = new ArrayList<Locale>();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.locales(C, ville, minPrix, maxPrix, minSurface, maxSurface, interieur, exterieur, gas, electricite, stationnement, alarm));
			while(c.rs.next()) {
				Locale l = new Locale();
				l.setId(c.rs.getInt("id"));
				l.setVille(c.rs.getString("ville"));
				l.setAdresse(c.rs.getString("adresse"));
				l.setPrix(c.rs.getDouble("prix"));
				l.setSurface(c.rs.getDouble("surface"));
				l.setCacher(c.rs.getBoolean("cacher"));
				l.setProprietaire(c.rs.getString("proprietaire"));
				l.setInterieur(c.rs.getString("interieur"));
				l.setExterieur(c.rs.getString("exterieur"));
				l.setGas(c.rs.getString("gas"));
				l.setElectricite(c.rs.getString("electricite"));
				l.setStationnement(c.rs.getString("stationnement"));
				l.setAlarm(c.rs.getString("alarm"));
				locale.add(l);
			}
			c.Deconnexion();
			return locale;
		} catch (SQLException e) {
			return locale;
		}
	}
	
	public ArrayList<Terrain> terrains(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String agricole) {
		Connexion c = new Connexion();
		ArrayList<Terrain> terrain = new ArrayList<Terrain>();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.terrains(C, ville, minPrix, maxPrix, minSurface, maxSurface, agricole));
			while(c.rs.next()) {
				Terrain t = new Terrain();
				t.setId(c.rs.getInt("id"));
				t.setVille(c.rs.getString("ville"));
				t.setAdresse(c.rs.getString("adresse"));
				t.setPrix(c.rs.getDouble("prix"));
				t.setSurface(c.rs.getDouble("surface"));
				t.setCacher(c.rs.getBoolean("cacher"));
				t.setProprietaire(c.rs.getString("proprietaire"));
				t.setAgricole(c.rs.getString("agricole"));
				terrain.add(t);
			}
			c.Deconnexion();
			return terrain;
		} catch (SQLException e) {
			return terrain;
		}
	}
	
	public ArrayList<Villa> villas(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String etage, String piece, String picine, String garage, String jardin, String climatisation, String meuble, String alarm, String chemine, String interphone) {
		Connexion c = new Connexion();
		ArrayList<Villa> villa = new ArrayList<Villa>();
		try {
			c.rs = c.stat.executeQuery(RequeteAgent.villas(C, ville, minPrix, maxPrix, minSurface, maxSurface, etage, piece, picine, garage, jardin, climatisation, meuble, alarm, chemine, interphone));
			while(c.rs.next()) {
				Villa v = new Villa();
				v.setId(c.rs.getInt("id"));
				v.setVille(c.rs.getString("ville"));
				v.setAdresse(c.rs.getString("adresse"));
				v.setPrix(c.rs.getDouble("prix"));
				v.setSurface(c.rs.getDouble("surface"));
				v.setCacher(c.rs.getBoolean("cacher"));
				v.setProprietaire(c.rs.getString("proprietaire"));
				v.setEtage(c.rs.getInt("etage"));
				v.setPiece(c.rs.getInt("piece"));
				v.setPicine(c.rs.getString("picine"));
				v.setGarage(c.rs.getString("garage"));
				v.setJardin(c.rs.getString("jardin"));
				v.setClimatisation(c.rs.getString("climatisation"));
				v.setMeuble(c.rs.getString("meuble"));
				v.setAlarm(c.rs.getString("alarm"));
				v.setChemine(c.rs.getString("chemine"));
				v.setInterphone(c.rs.getString("interphone"));
				villa.add(v);
			}
			c.Deconnexion();
			return villa;
		} catch (SQLException e) {
			return villa;
		}
	}
}
