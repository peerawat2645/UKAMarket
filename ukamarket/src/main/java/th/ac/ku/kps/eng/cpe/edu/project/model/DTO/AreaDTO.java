package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

public class AreaDTO {
	private int row;
	private int col;
	private int dayPrice;
	private int monthPrice;

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

	public int getDayPrice() {
		return dayPrice;
	}

	public void setDayPrice(int dayPrice) {
		this.dayPrice = dayPrice;
	}

	public int getMonthPrice() {
		return monthPrice;
	}

	public void setMonthPrice(int monthPrice) {
		this.monthPrice = monthPrice;
	}

	public AreaDTO(int row, int col, int dayPrice, int monthPrice) {
		super();
		this.row = row;
		this.col = col;
		this.dayPrice = dayPrice;
		this.monthPrice = monthPrice;
	}

	public AreaDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
}
