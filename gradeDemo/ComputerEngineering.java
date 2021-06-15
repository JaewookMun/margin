package doit.project.gradecalculation;

public class ComputerEngineering extends Student {

	//필드
	public static final String MAJOR = "컴퓨터공학과";
	private String requiredSubject = "수학";
	private KoreanScore kor = new KoreanScore();
	private MathScore math = new MathScore();
	
	//생성자
	public ComputerEngineering() {}

	public ComputerEngineering(String name, int studentId, int korScore, int mathScore, String requiredSubject) {
		super(name, studentId, korScore, mathScore);
		this.requiredSubject = requiredSubject;
	}

	//Getter&Setter
	public String getRequiredSubject() {
		return requiredSubject;
	}
	public void setRequiredSubject(String requiredSubject) {
		this.requiredSubject = requiredSubject;
	}

	


	@Override
	public void StudentInfoOfKoreanSubject() {
		System.out.println("  "+getName()+" | "+getStudentId()+" | "+getRequiredSubject()+" | "+getKorScore()+":"+kor.calcGradeUsual(getKorScore())+" | ");
	}

	@Override
	public void StudentInfoOfMathSubject() {
		System.out.println("  "+getName()+" | "+getStudentId()+" | "+getRequiredSubject()+" | "+getMathScore()+":"+math.calcGradeRequired(getMathScore())+" | ");
	}
	
	

}
