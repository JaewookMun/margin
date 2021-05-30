package doit.project.gradesys;

import doit.project.gradesys.calc.BasicGrade;
import doit.project.gradesys.cmpnt.School;

public class GradeSet {
	private int subjectCode;
	private int studentCode;
	private int mjrCode;
	private int score;
	private String grade;
	
	public GradeSet() {}

	public GradeSet(int subjectCode, int studentCode, int mjrCode, int score) {
		super();
		this.subjectCode = subjectCode;
		this.studentCode = studentCode;
		this.mjrCode = mjrCode;
		this.score = score;
	}

	public int getSubjectCode() {
		return subjectCode;
	}
	public void setSubjectCode(int subjectCode) {
		this.subjectCode = subjectCode;
	}
	public int getStudentCode() {
		return studentCode;
	}
	public void setStudentCode(int studentCode) {
		this.studentCode = studentCode;
	}
	
	public int getMjrCode() {
		return mjrCode;
	}

	public void setMjrCode(int mjrCode) {
		this.mjrCode = mjrCode;
	}

	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	
	public void setGrade(int subjectCode, int majorCode, int score) {
		School school = School.getInstance();
		grade = school.setGrade(subjectCode, majorCode, score); 
	}
	public String getGrade() {
		return grade;
	}
	
	public String getPass(int score) {
		return BasicGrade.passNonpass(score);
	}
	
	
}
