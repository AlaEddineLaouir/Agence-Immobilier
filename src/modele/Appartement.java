package modele;

public class Appartement extends Bien{
	private int etage;
	private int nombrePiece;
	private String climatisation;
	private String meuble;
	private String balcon;
	private String stationnement;
	
	public int getEtage() {
		return etage;
	}
	public void setEtage(int etage) {
		this.etage = etage;
	}
	public int getNombrePiece() {
		return nombrePiece;
	}
	public void setNombrePiece(int nombrePiece) {
		this.nombrePiece = nombrePiece;
	}
	public String getClimatisation() {
		return climatisation;
	}
	public void setClimatisation(String climatisation) {
		this.climatisation = climatisation;
	}
	public String getMeuble() {
		return meuble;
	}
	public void setMeuble(String meuble) {
		this.meuble = meuble;
	}
	public String getBalcon() {
		return balcon;
	}
	public void setBalcon(String balcon) {
		this.balcon = balcon;
	}
	public String getStationnement() {
		return stationnement;
	}
	public void setStationnement(String stationnement) {
		this.stationnement = stationnement;
	}
}
