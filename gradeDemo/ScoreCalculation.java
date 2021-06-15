package doit.project.gradecalculation;

public interface ScoreCalculation {

	int calcScore();
	
	String calcGradeRequired(int score);
	String calcGradeUsual(int score);
}
