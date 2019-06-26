package modele;

public class RDV {
	private int id;
	private String dateRDV;
	private String heureRDV;
	private String objetRDV;
	private String moyenContact;
	private String client;
	private int bien;
	private String agent;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDateRDV() {
		return dateRDV;
	}
	public void setDateRDV(String dateRDV) {
		this.dateRDV = dateRDV;
	}
	public String getHeureRDV() {
		return heureRDV;
	}
	public void setHeureRDV(String heureRDV) {
		this.heureRDV = heureRDV;
	}
	public String getObjetRDV() {
		return objetRDV;
	}
	public void setObjetRDV(String objetRDV) {
		this.objetRDV = objetRDV;
	}
	public String getMoyenContact() {
		return moyenContact;
	}
	public void setMoyenContact(String moyenContact) {
		this.moyenContact = moyenContact;
	}
	public String getClient() {
		return client;
	}
	public void setClient(String client) {
		this.client = client;
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
