package doit.project.gradesys.calc;

public class BasicGrade implements ScoreCalc {

	//필요시 점수계산방식 작성.
	@Override
	public int calcScore() {
		// TODO Auto-generated method stub
		return 0;
	}
	
	//
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

}
