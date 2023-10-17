package th.ac.ku.kps.eng.cpe.edu.project.model.DTO;

public class ResetPasswordDTO {
	private String currPassword;
	private String confirmPassword;
	private String newPassword;
	private int userId;

	public ResetPasswordDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ResetPasswordDTO(String currPassword, String confirmPassword, String newPassword, int userId) {
		super();
		this.currPassword = currPassword;
		this.confirmPassword = confirmPassword;
		this.newPassword = newPassword;
		this.userId = userId;
	}

	public String getCurrPassword() {
		return currPassword;
	}

	public void setCurrPassword(String currPassword) {
		this.currPassword = currPassword;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getNewPassword() {
		return newPassword;
	}

	public void setNewPassword(String newPassword) {
		this.newPassword = newPassword;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}
