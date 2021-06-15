package doit.project.gradecalculation;

public abstract class Grade implements ScoreCalculation {

	@Override
	public String calcGradeRequired(int score) {
		String grade="";
		if(score>=95 && score<=100) grade = "S";
		else if(score>=90) grade="A";
		else if(score>=80) grade="B";
		else if(score>=70) grade="C";
		else if(score>=60) grade="D";
		else grade="F";
		return grade;
	}

	@Override
	public String calcGradeUsual(int score) {
		String grade="";
		if(score>=90 && score<=100) grade = "A";
		else if(score>=80) grade="B";
		else if(score>=70) grade="C";
		else if(score>=55) grade="D";
		else grade="F";
		
		return grade;
	}
	
	
	
}
