package doit.project.gradecalculation;

public class KoreanLanguage extends Student {

	//�ʵ�
	public static final String MAJOR = "������а�";
	private String requiredSubject = "����";
	private KoreanScore kor = new KoreanScore();
	private MathScore math = new MathScore();
	
	
	//������
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
