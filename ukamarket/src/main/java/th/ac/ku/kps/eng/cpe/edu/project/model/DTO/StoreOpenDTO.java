package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

import java.util.Date;

public class StoreOpenDTO {
	private String name;
	private Boolean status;
	private Date nextDate;
	
	public StoreOpenDTO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Boolean getStatus() {
		return status;
	}
	public void setStatus(Boolean status) {
		this.status = status;
	}
	public Date getNextDate() {
		return nextDate;
	}
	public void setNextDate(Date nextDate) {
		this.nextDate = nextDate;
	}
}
