package modele;

public class Location {
	private int id;
	private String modalitePaiement;
	private String dateDebut;
	private String dateFin;
	private double cout;
	private String locataire;
	private int bien;
	private String agent;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getModalitePaiement() {
		return modalitePaiement;
	}
	public void setModalitePaiement(String modalitePaiement) {
		this.modalitePaiement = modalitePaiement;
	}
	public String getDateDebut() {
		return dateDebut;
	}
	public void setDateDebut(String dateDebut) {
		this.dateDebut = dateDebut;
	}
	public String getDateFin() {
		return dateFin;
	}
	public void setDateFin(String dateFin) {
		this.dateFin = dateFin;
	}
	public double getCout() {
		return cout;
	}
	public void setCout(double cout) {
		this.cout = cout;
	}
	public String getLocataire() {
		return locataire;
	}
	public void setLocataire(String locataire) {
		this.locataire = locataire;
	}
	public int getBien() {
		return bien;
	}
	public void setBien(int bien) {
		this.bien = bien;
	}
	public String getAgent() {
		return agent;
	}
	public void setAgent(String agent) {
		this.agent = agent;
	}
}
