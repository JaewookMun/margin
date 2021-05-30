package doit.project.gradesys.cmpnt;

import java.util.ArrayList;

import doit.project.gradesys.calc.BasicGrade;
import doit.project.gradesys.calc.MajorGrade;

public class School {
	public static final int KOR_CODE = 1001;
	public static final int MATH_CODE = 1002;
	public static final int DANCE_CODE = 1003;
	
	public static final int MJR_KOR_CODE = 11001;
	public static final int MJR_COM_CODE = 11002;
	
	
	private static School _instance = new School();
	
	private ArrayList<Student> students = new ArrayList<Student>();
	
	public static School getInstance() {
		if(_instance == null) {
			_instance = new School();
		}
		return _instance;
	}
	
	public ArrayList<Student> getStudentList() {
		return students;
	}
	public boolean addStudent(Student student) {
		if(students.contains(student)) {
			return false;
		}
		students.add(student);
		return true;
	}
	
	public String getMajorSubjectCode(Student student) {
		if(student.getMajorCode()==MJR_COM_CODE) {
			return "수학";
		} // (majorCode==School.MJR_KOR_CODE) {
		  //	mjrSubjCode = School.KOR_CODE;
		return "국어";
	}
	
	public String setGrade(int subjCode, int mjrCode, int score) {
		MajorGrade mjr = new MajorGrade();
		BasicGrade bsc = new BasicGrade();

		if(subjCode==KOR_CODE && mjrCode==MJR_KOR_CODE) {
			return mjr.calcGrade(score);
		} else if(subjCode==MATH_CODE && mjrCode==MJR_COM_CODE) {
			mjr.calcGrade(score);
		} 
		return bsc.calcGrade(score);
	}
	
	
	
	
}
