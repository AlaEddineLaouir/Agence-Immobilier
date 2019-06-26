package modele;

public class Locale extends Bien {
	private String finisInterieur;
	private String finisExterieur;
	private String gas;
	private String electricite;
	private String stationnement;
	private String alarm;
	
	public String getFinisInterieur() {
		return finisInterieur;
	}
	public void setInterieur(String finisInterieur) {
		this.finisInterieur = finisInterieur;
	}
	public String getFinisExterieur() {
		return finisExterieur;
	}
	public void setExterieur(String finisExterieur) {
		this.finisExterieur = finisExterieur;
	}
	public String getGas() {
		return gas;
	}
	public void setGas(String gas) {
		this.gas = gas;
	}
	public String getElectricite() {
		return electricite;
	}
	public void setElectricite(String electricite) {
		this.electricite = electricite;
	}
	public String getStationnement() {
		return stationnement;
	}
	public void setStationnement(String stationnement) {
		this.stationnement = stationnement;
	}
	public String getAlarm() {
		return alarm;
	}
	public void setAlarm(String alarm) {
		this.alarm = alarm;
	}
}
