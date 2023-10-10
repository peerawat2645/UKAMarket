package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

public class StoreDTO {
	private String name;
	private String phone;
	private String description;
	private String type;
	private String imgPath;

	public StoreDTO(String name, String phone, String description, String type, String imgPath) {
		super();
		this.name = name;
		this.phone = phone;
		this.description = description;
		this.type = type;
		this.imgPath = imgPath;
	}

	public StoreDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImgPath() {
		return imgPath;
	}

	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
}
