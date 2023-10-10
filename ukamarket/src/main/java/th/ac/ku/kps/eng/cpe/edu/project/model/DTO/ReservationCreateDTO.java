package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

import java.util.Date;
import java.util.List;

import th.ac.ku.kps.eng.cpe.edu.project.model.Store;

public class ReservationCreateDTO {

	private Store store;
	private List<Date> dates;

	public ReservationCreateDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReservationCreateDTO(Store store, List<Date> dates) {
		super();
		this.store = store;
		this.dates = dates;
	}

	public Store getStore() {
		return store;
	}

	public void setStore(Store store) {
		this.store = store;
	}

	public List<Date> getDates() {
		return dates;
	}

	public void setDates(List<Date> dates) {
		this.dates = dates;
	}

}
