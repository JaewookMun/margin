package doit.project.gradesys.calc;

public class MajorGrade implements ScoreCalc {
	
	//basic�� ����ϴ� ������ �����ؾ��ϴ��� �ǹ�������.
	@Override
	public int calcScore() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String calcGrade(int score) {
		String grade="";
		if(score>=95 && score<=100) grade = "S";
		else if(score>=90) grade="A";
		else if(score>=80) grade="B";
		else if(score>=70) grade="C";
		else if(score>=60) grade="D";
		else grade="F";
		return grade;
	}
	
}
