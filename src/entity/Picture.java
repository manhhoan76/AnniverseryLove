package entity;

public class Picture {
	private int id;
	private String name;
	private int id_remember;
	public Picture(int id, String name, int id_remember) {
		super();
		this.id = id;
		this.name = name;
		this.id_remember = id_remember;
	}
	public Picture() {
		super();
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId_remember() {
		return id_remember;
	}
	public void setId_remember(int id_remember) {
		this.id_remember = id_remember;
	}
	
}
