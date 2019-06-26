package modele;

public class Agent extends Personne {
	private boolean gerant;

	public boolean isGerant() {
		return gerant;
	}
	public void setGerant(boolean gerant) {
		this.gerant = gerant;
	}
}