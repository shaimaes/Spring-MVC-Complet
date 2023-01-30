package fr.formation.inti.model;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author IN-TR-018
 *
 */
@Entity
@Table(name = "user")
public class UserApp {
	
	private Integer idUser;
	private String email;
	private String password;
	private Date dateCreation;
	private String firstName;
	private String lastName;
	private String roleName;
	
	public UserApp(){
		
	}
	
	public UserApp(Integer idUser, String email, String password, Date dateCreation, String first_name, String last_name,
			String roleName) {
		super();
		this.idUser = idUser;
		this.email = email;
		this.password = password;
		this.dateCreation = dateCreation;
		this.firstName = first_name;
		this.lastName = last_name;
		this.roleName = roleName;
	}
	
	public UserApp(String email, String password, Date dateCreation, String first_name, String last_name,
			String roleName) {
		super();
		
		this.email = email;
		this.password = password;
		this.dateCreation = dateCreation;
		this.firstName = first_name;
		this.lastName = last_name;
		this.roleName = roleName;
	}
	
	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "idUser", unique = true, nullable = false)
	public Integer getIdUser() {
		return idUser;
	}
	
	public void setIdUser(Integer idUser) {
		this.idUser = idUser;
	}
	
	
	@Column(name = "email")
	public String getEmail() {
		return email;
	}
	

	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "password")
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	@Column(name = "dateCreation")
	public Date getDateCreation() {
		return dateCreation;
	}
	
	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
	
	@Column(name = "first_name")
	public String getFirstName() {
		return firstName;
	}
	
	public void setFirstName(String first_name) {
		this.firstName = first_name;
	}
	
	@Column(name = "last_name")
	public String getLastName() {
		return lastName;
	}
	
	public void setLastName(String last_name) {
		this.lastName = last_name;
	}
	
	@Column(name = "roleName")
	public String getRoleName() {
		return roleName;
	}
	
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
	@Override
	public String toString() {
		return "User [idUser=" + idUser + ", email=" + email + ", password=" + password + ", dateCreation="
				+ dateCreation + ", first_name=" + firstName + ", last_name=" + lastName + ", roleName=" + roleName
				+ "]";
	}
	
	
}
