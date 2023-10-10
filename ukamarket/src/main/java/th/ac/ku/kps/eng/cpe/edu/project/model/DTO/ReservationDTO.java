package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

import java.util.List;

import th.ac.ku.kps.eng.cpe.edu.project.model.Store;

public class ReservationDTO {
	private List<String> months;
	private Store store;
	private String type;

	public ReservationDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReservationDTO(List<String> months, Store store, String type) {
		super();
		this.months = months;
		this.store = store;
		this.type = type;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List<String> getMonths() {
		return months;
	}

	public void setMonths(List<String> months) {
		this.months = months;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}
}
