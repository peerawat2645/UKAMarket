package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

public class ReservationRequestDTO {
	private int row;
	private int col;
	private String startDate;
	private String endDate;
	private String type;
	private int storeId;

	public ReservationRequestDTO(int row, int col, String startDate, String endDate, String type, int storeId) {
		super();
		this.row = row;
		this.col = col;
		this.startDate = startDate;
		this.endDate = endDate;
		this.type = type;
		this.storeId = storeId;
	}

	public ReservationRequestDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getRow() {
		return row;
	}

	public void setRow(int row) {
		this.row = row;
	}

	public int getCol() {
		return col;
	}

	public void setCol(int col) {
		this.col = col;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
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

}
