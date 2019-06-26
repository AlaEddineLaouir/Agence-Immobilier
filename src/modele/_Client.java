package modele;

import java.sql.SQLException;
import java.util.ArrayList;

import bd.Connexion;
import bd.RequeteAgent;
import bd.RequeteClient;

public class _Client {
	public Client client(Client C) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteClient.client(C));
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
			C.setBanner(c.rs.getBoolean("banner"));
			c.Deconnexion();
			return C;
		} catch (SQLException e) {
			return new Client();
		}
	}
	
	public boolean ajouterClient(Client C) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.ajouterClient(C))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean utilisateur(Client C, String utilisateur) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteClient.utilisateur(C, utilisateur));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean telephone(Client C, String telephone) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteClient.telephone(C, telephone));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	public boolean email(Client C, String email) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteClient.email(C, email));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	public boolean identite(Client C, String identite) {
		Connexion c = new Connexion();
		try {
			c.rs = c.stat.executeQuery(RequeteClient.identite(C, identite));
			return(c.rs.next() && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public ArrayList<Appartement> appartements(Client C, String ville, String minPrix, String maxPrix, String minSurface, String maxSurface, String etage, String piece, String climatisation, String meuble, String balcon, String stationnement) {
		Connexion c = new Connexion();
		ArrayList<Appartement> appartement = new ArrayList<Appartement>();
		try {
			c.rs = c.stat.executeQuery(RequeteClient.appartements(C, ville, minPrix, maxPrix, minSurface, maxSurface, etage, piece, climatisation, meuble, balcon, stationnement));
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
			c.rs = c.stat.executeQuery(RequeteClient.locales(C, ville, minPrix, maxPrix, minSurface, maxSurface, interieur, exterieur, gas, electricite, stationnement, alarm));
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
			c.rs = c.stat.executeQuery(RequeteClient.terrains(C, ville, minPrix, maxPrix, minSurface, maxSurface, agricole));
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
			c.rs = c.stat.executeQuery(RequeteClient.villas(C, ville, minPrix, maxPrix, minSurface, maxSurface, etage, piece, picine, garage, jardin, climatisation, meuble, alarm, chemine, interphone));
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
	
	public boolean etatBien(Bien b) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.etatBien(b))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierAppartement(Appartement a) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.modifierAppartement(a))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierLocale(Locale l) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.modifierLocale(l))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierTerrain(Terrain t) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.modifierTerrain(t))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean modifierVilla(Villa v) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.modifierVilla(v))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public boolean profile(Client C) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.profile(C))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean ajouterBien(RDV rdv) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.ajouterBien(rdv))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean louerBien(RDV rdv) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.louerBien(rdv))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean visiterBien(RDV rdv) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.visiterBien(rdv))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public ArrayList<RDV> RDVs(Client C) {
		Connexion c = new Connexion();
		ArrayList<RDV> RDV = new ArrayList<RDV>();

		try {
			c.rs = c.stat.executeQuery(RequeteClient.RDVs(C));
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
	
	public ArrayList<Location> locations(Client C) {
		Connexion c = new Connexion();
		ArrayList<Location> location = new ArrayList<Location>();
		try {
			c.rs = c.stat.executeQuery(RequeteClient.locations(C));
			while(c.rs.next()) {
				Location l = new Location();
				l.setId(c.rs.getInt("id"));
				l.setPaiement(c.rs.getString("paiement"));
				l.setDebut(c.rs.getString("debut"));
				l.setFin(c.rs.getString("fin"));
				l.setCout(c.rs.getDouble("cout"));
				l.setLocataire(c.rs.getString("locataire"));
				l.setBien(c.rs.getInt("bien"));
				l.setAgent(c.rs.getString("agent"));
				location.add(l);
			}
			c.Deconnexion();
			return location;
		} catch (SQLException e) {
			return location;
		}
	}
	
	public ArrayList<Paiement> paiements(Location L) {
		Connexion c = new Connexion();
		ArrayList<Paiement> paiement = new ArrayList<Paiement>();

		try {
			c.rs = c.stat.executeQuery(RequeteClient.paiements(L));
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
	
	public ArrayList<Appartement> appartements(Client C) {
		Connexion c = new Connexion();
		ArrayList<Appartement> appartement = new ArrayList<Appartement>();

		try {
			c.rs = c.stat.executeQuery(RequeteClient.appartements(C));
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
	
	public ArrayList<Locale> locales(Client C) {
		Connexion c = new Connexion();
		ArrayList<Locale> locale = new ArrayList<Locale>();

		try {
			c.rs = c.stat.executeQuery(RequeteClient.locales(C));
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
	
	public ArrayList<Terrain> terrains(Client C) {
		Connexion c = new Connexion();
		ArrayList<Terrain> terrain = new ArrayList<Terrain>();

		try {
			c.rs = c.stat.executeQuery(RequeteClient.terrains(C));
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
	
	public ArrayList<Villa> villas(Client C) {
		Connexion c = new Connexion();
		ArrayList<Villa> villa = new ArrayList<Villa>();

		try {
			c.rs = c.stat.executeQuery(RequeteClient.villas(C));
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
	
	public boolean modifierRDV(RDV rdv) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.modifierRDV(rdv))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
	
	public boolean supprimerRDV(RDV rdv) {
		Connexion c = new Connexion();
		try {
			return(c.stat.executeUpdate(RequeteClient.supprimerRDV(rdv))==1 && c.Deconnexion());
		} catch (SQLException e) {
			return false;
		}
	}
}