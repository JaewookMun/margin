package web.data.dto;

/*
		[table: MEMBER]
이름         널?       유형            
---------- -------- ------------- 
ID         NOT NULL VARCHAR2(10)  - PK
PASSWORD   NOT NULL VARCHAR2(200) 
NAME       NOT NULL VARCHAR2(50)  
PHONE      NOT NULL VARCHAR2(20)  
REG_DATE   NOT NULL DATE          
LAST_LOGIN NOT NULL DATE          
GRADE      NOT NULL NUMBER(1)     - FK REFERENCES member_grade(authority)
 */

// 회원관리 DTO 클래스 - 토이프로젝트
public class MemberDTO {
	private String id;
	private String password;
	private String name;
	private String phone;
	private String regDate;
	private String lastLogin;
	private int grade;
	
	
	public MemberDTO() {
		// TODO Auto-generated constructor stub
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getRegDate() {
		return regDate;
	}

	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}

	public String getLastLogin() {
		return lastLogin;
	}

	public void setLastLogin(String lastLogin) {
		this.lastLogin = lastLogin;
	}

	public int getGrade() {
		return grade;
	}

	public void setGrade(int grade) {
		this.grade = grade;
	}
	
}
