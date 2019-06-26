package modele;

public class Personne {
	protected String nomUtilisateur;
	protected String motPasse;
	protected String nom;
	protected String prenom;
	protected String dateNaissance;
	protected String adresse;
	protected String numTelephone;
	protected String email;
	protected String numIdentite;
	protected boolean banner;
	public String getNomUtilisateur() {
		return nomUtilisateur;
	}
	public void setNomUtilisateur(String nomUtilisateur) {
		this.nomUtilisateur = nomUtilisateur;
	}
	public String getMotPasse() {
		return motPasse;
	}
	public void setMotPasse(String motPasse) {
		this.motPasse = motPasse;
	}
	public String getNom() {
		return nom;
	}
	public void setNom(String nom) {
		this.nom = nom;
	}
	public String getPrenom() {
		return prenom;
	}
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	public String getDateNaissance() {
		return dateNaissance;
	}
	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	public String getAdresse() {
		return adresse;
	}
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	public String getNumTelephone() {
		return numTelephone;
	}
	public void setNumTelephone(String numTelephone) {
		this.numTelephone = numTelephone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNumIdentite() {
		return numIdentite;
	}
	public void setNumIdentite(String numIdentite) {
		this.numIdentite = numIdentite;
	}
	public boolean isBanner() {
		return banner;
	}
	public void setBanner(boolean banner) {
		this.banner = banner;
	}
	
}