package fcu.android.backend.data;

import java.io.Serializable;

@SuppressWarnings("serial")
public class User implements Serializable {

	private String ID; //�Ǹ�

	private String userName; //�n�J��(�^��) �Ǹ�
	
	private String name; //�������(����)
	
	private String email; //�Ǹ�@fcu.edu.tw
	
	
	private String password; //�Ǹ�

//	private String password;
//
//	private String email;
//
//	private String phone;

	public String getID() {
		return ID;
	}

	public void setID(String ID) {
		this.ID = ID;
	}

//	public String getPhone() {
//		return phone;
//	}
//
//	public void setPhone(String phone) {
//		this.phone = phone;
//	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

//	public String getPassword() {
//		return password;
//	}
//
//	public void setPassword(String password) {
//		this.password = password;
//	}
//
//	public String getEmail() {
//		return email;
//	}
//
//	public void setEmail(String email) {
//		this.email = email;
//	}

}
