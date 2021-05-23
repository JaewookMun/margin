package doit.project.gradecalculation;

public class KoreanLanguage extends Student {

	//필드
	public static final String MAJOR = "국어국문학과";
	private String requiredSubject = "국어";
	private KoreanScore kor = new KoreanScore();
	private MathScore math = new MathScore();
	
	
	//생성자
	public KoreanLanguage() {}

	public KoreanLanguage(String name, int studentId, int korScore, int mathScore, String requiredSubject) {
		super(name, studentId, korScore, mathScore);
		this.requiredSubject = requiredSubject;
	}


	// Setter & Getter
	public String getRequiredSubject() {
		return requiredSubject;
	}
	public void setRequiredSubject(String requiredSubject) {
		this.requiredSubject = requiredSubject;
	}

	

	@Override
	public void StudentInfoOfKoreanSubject() {
		System.out.println("  "+getName()+" | "+getStudentId()+" | "+getRequiredSubject()+" | "+getKorScore()+":"+kor.calcGradeRequired(getKorScore())+" | ");
	}
	
	@Override
	public void StudentInfoOfMathSubject() {
		System.out.println("  "+getName()+" | "+getStudentId()+" | "+getRequiredSubject()+" | "+getMathScore()+":"+math.calcGradeUsual(getMathScore())+" | ");
		
	}
}
