package doit.project.gradecalculation;

public class GradeResultApp {
	public static void main(String[] args) {
		Student[] students = new Student[5];
		
		students[0] = new KoreanLanguage("�ȼ���", 181213, 95, 56, "����");
		students[1] = new ComputerEngineering("������", 182330, 95, 98, "����");
		students[2] = new KoreanLanguage("�̵�ȣ", 171518, 100, 88, "����");
		students[3] = new KoreanLanguage("������", 172350, 89, 95, "����");
		students[4] = new ComputerEngineering("������", 171290, 83, 56, "����");
		
		System.out.println("  ----------------------------");
		System.out.println("          ���� ������ ����          ");
		System.out.println("   �̸�  |  �й�  |��������|  ����");
		System.out.println("  ----------------------------");
		
		for(int i=0; i<students.length; i++) {
			students[i].StudentInfoOfKoreanSubject();
			System.out.println("  ----------------------------");
		}
		
		System.out.println("  ----------------------------");
		System.out.println("          ���� ������ ����          ");
		System.out.println("   �̸�  |  �й�  |��������|  ����");
		System.out.println("  ----------------------------");
		
		for(int i=0; i<students.length; i++) {
			students[i].StudentInfoOfMathSubject();
			System.out.println("  ----------------------------");
		}
		
		
		
	}
}
