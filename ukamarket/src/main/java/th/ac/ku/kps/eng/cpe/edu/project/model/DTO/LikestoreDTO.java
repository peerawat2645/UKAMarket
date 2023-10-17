package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

import java.util.Date;

public class LikestoreDTO {
	private String name;
	private String description;
	private String phoneNumber;
	private String status;
	private Date startDate;
	private Date nextDate;

	public LikestoreDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public LikestoreDTO(String name, String description, String phoneNumber, String status, Date startDate,
			Date nextDate) {
		super();
		this.name = name;
		this.description = description;
		this.phoneNumber = phoneNumber;
		this.status = status;
		this.startDate = startDate;
		this.nextDate = nextDate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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
