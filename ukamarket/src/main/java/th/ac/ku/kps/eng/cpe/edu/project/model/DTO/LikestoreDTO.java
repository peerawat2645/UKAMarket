package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

import java.util.Date;

public class LikestoreDTO {
	private String name;
	private Date startDate;
	private Date nextDate;

	public LikestoreDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LikestoreDTO(String name, Date startDate, Date nextDate) {
		super();
		this.name = name;
		this.startDate = startDate;
		this.nextDate = nextDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getNextDate() {
		return nextDate;
	}

	public void setNextDate(Date nextDate) {
		this.nextDate = nextDate;
	}
}
