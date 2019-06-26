package modele;

public class Paiement {
	private int id;
	private String datePaiement;
	private double montantPayer;
	private int location;
	private String agent;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDatePaiement() {
		return datePaiement;
	}
	public void setDate(String datePaiement) {
		this.datePaiement = datePaiement;
	}
	public double getMontantPayer() {
		return montantPayer;
	}
	public void setMontantPayer(double montantPayer) {
		this.montantPayer = montantPayer;
	}
	public int getLocation() {
		return location;
	}
	public void setLocation(int location) {
		this.location = location;
	}
	public String getAgent() {
		return agent;
	}
	public void setAgent(String agent) {
		this.agent = agent;
	}
}
