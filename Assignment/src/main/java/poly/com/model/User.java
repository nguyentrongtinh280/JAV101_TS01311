package poly.com.model;

import java.sql.Date;

public class User {
	
	private String id;
    private String password;
    private String fullname;
    private Date birthday;
    private boolean gender;  
    private String moble;
    private String email;
    private boolean role;
    
    public User() {
	}
    
	public User(String id, String password, String fullname, Date birthday, boolean gender, String moble, String email,
			boolean role) {
		super();
		this.id = id;
		this.password = password;
		this.fullname = fullname;
		this.birthday = birthday;
		this.gender = gender;
		this.moble = moble;
		this.email = email;
		this.role = role;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFullname() {
		return fullname;
	}

	public void setFullname(String fullname) {
		this.fullname = fullname;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String getMoble() {
		return moble;
	}

	public void setMoble(String moble) {
		this.moble = moble;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isRole() {
		return role;
	}

	public void setRole(boolean role) {
		this.role = role;
	}
	
	
	
    
    

}
