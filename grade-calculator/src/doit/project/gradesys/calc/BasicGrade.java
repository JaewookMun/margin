package doit.project.gradesys.calc;

public class BasicGrade implements ScoreCalc {

	@Override
	public String calcGrade(int score) {
		String grade="";
		if(score>=90 && score<=100) grade = "A";
		else if(score>=80) grade="B";
		else if(score>=70) grade="C";
		else if(score>=55) grade="D";
		else grade="F";
		
		return grade;
	}
	
	//������ ����� ���� static �޼ҵ�� ����
	public static String passNonpass(int score) {
		if(score>=70) return "P";
		return "F";
	}

}
