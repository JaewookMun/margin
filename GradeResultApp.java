package doit.project.gradecalculation;

public class GradeResultApp {
	public static void main(String[] args) {
		Student[] students = new Student[5];
		
		students[0] = new KoreanLanguage("안성원", 181213, 95, 56, "국어");
		students[1] = new ComputerEngineering("오태훈", 182330, 95, 98, "수학");
		students[2] = new KoreanLanguage("이동호", 171518, 100, 88, "국어");
		students[3] = new KoreanLanguage("조성욱", 172350, 89, 95, "국어");
		students[4] = new ComputerEngineering("최태평", 171290, 83, 56, "수학");
		
		System.out.println("  ----------------------------");
		System.out.println("          국어 수강생 학점          ");
		System.out.println("   이름  |  학번  |중점과목|  점수");
		System.out.println("  ----------------------------");
		
		for(int i=0; i<students.length; i++) {
			students[i].StudentInfoOfKoreanSubject();
			System.out.println("  ----------------------------");
		}
		
		System.out.println("  ----------------------------");
		System.out.println("          수학 수강생 학점          ");
		System.out.println("   이름  |  학번  |중점과목|  점수");
		System.out.println("  ----------------------------");
		
		for(int i=0; i<students.length; i++) {
			students[i].StudentInfoOfMathSubject();
			System.out.println("  ----------------------------");
		}
		
		
		
	}
}
