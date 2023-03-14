package duy.dev.data.model;

public class Category {
	public int id;
	public String name;
	public String img;
	
	public Category(String name, String img) {
		super();
		this.name = name;
		this.img = img;
	}
	public Category(int id, String name, String img) {
		super();
		this.id = id;
		this.name = name;
		this.img = img;
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
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
