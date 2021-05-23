package doit.project.gradecalculation;

public abstract class Student {
	private String name;
	private int studentId;
	private int korScore;
	private int mathScore;
	
	//Constructors
	public Student() {}
	
	public Student(String name, int studentId, int korScore, int mathScore) {
		super();
		this.name = name;
		this.studentId = studentId;
		this.korScore = korScore;
		this.mathScore = mathScore;
	}

	//Setter & Getter
	public String getName() {
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
	public int getKorScore() {
		return korScore;
	}
	public void setKorScore(int kScore) {
		this.korScore = kScore;
	}
	public int getMathScore() {
		return mathScore;
	}
	public void setMathScore(int mScore) {
		this.mathScore = mScore;
	}
	
	public abstract void StudentInfoOfKoreanSubject();
	public abstract void StudentInfoOfMathSubject();

}
