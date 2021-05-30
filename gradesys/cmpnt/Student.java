package doit.project.gradesys.cmpnt;



public class Student {
	private String name;
	private int studentId;
	private int mjrCode;
	private String mjrSubject;
	
	
	
	//Constructors
	public Student() {}
	
	
	public Student(String name, int studentId, int majorCode) {
		super();
		this.name = name;
		this.studentId = studentId;
		this.mjrCode = majorCode;
	}
	
	
	//Setter & Getter
	public String getName() {
		return name;
	}
	public String getName(int studentID) {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	
	public int getMajorCode() {
		return mjrCode;
	}
	public void setMajorCode(int mjrCode) {
		this.mjrCode = mjrCode;
	}


	public String getMjrSubject() {
		return mjrSubject;
	}

	public void setMjrSubject(int mjrCode) {
		if(mjrCode==School.MJR_KOR_CODE) {
			mjrSubject="국어";
		} else if(mjrCode==School.MJR_COM_CODE) {
			mjrSubject="수학";
		}
	}

	
	
	
}
