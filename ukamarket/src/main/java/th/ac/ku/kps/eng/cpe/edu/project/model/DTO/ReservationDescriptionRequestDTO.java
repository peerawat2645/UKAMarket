package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

public class ReservationDescriptionRequestDTO {
	private String date;
	private String month;
	private String type;
	private int storeId;

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public int getStoreId() {
		return storeId;
	}

	public void setStoreId(int storeId) {
		this.storeId = storeId;
	}

	public ReservationDescriptionRequestDTO(String date, String month, String type, int storeId) {
		super();
		this.date = date;
		this.month = month;
		this.type = type;
		this.storeId = storeId;
	}

	public ReservationDescriptionRequestDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
}
