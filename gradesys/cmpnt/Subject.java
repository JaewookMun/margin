package doit.project.gradesys.cmpnt;

import java.util.ArrayList;

public class Subject {
	private String subject;
	private int subjectCode;
	

	private ArrayList<Student> studentList;
	
	public Subject() {
		// TODO Auto-generated constructor stub
	}

	public Subject(String subject, int subjectCode, ArrayList<Student> studentList) {
		super();
		this.subject = subject;
		this.subjectCode = subjectCode;
		this.studentList = studentList;
	}


	//Setter & Getter
	//subject code에 따라 subject를 얻을 수 있도록 메소드 설정.
	//과목이 더 늘어나면 과목과 과목코드를 HashMap으로 관리하는 것이 더 효율적으로 보인다.
	public String getSubject(int subjectCode) {
		if(subjectCode==School.KOR_CODE) {
			subject = "국어";
		} else if (subjectCode==School.MATH_CODE){
			subject = "수학";
		}
		return subject;
	}
	
	public void setSubject(int subjectCode) {
		if(subjectCode==School.KOR_CODE) {
			subject = "국어";
		} else if (subjectCode==School.MATH_CODE){
			subject = "수학";
		}
	}
	
	//SubjectCode는 School 클래스에서 이미 설정
	public int getSubjectCode(String subject) {
		if(subject == "국어") {
			return subjectCode;
		} 
		return subjectCode;
	}

	public void setSubjectCode(String subject) {
		if(subject == "국어") {
			subjectCode=School.KOR_CODE;
		}
		subjectCode=School.MATH_CODE;
	}
	
	public ArrayList<Student> getStudentList() {
		return studentList;
	}

	//학생명단에 학생 추가
	public boolean addStudent(Student student) {
		if(studentList.contains(student)) {
			return false;
		} else {
			studentList.add(student);
			return true;
		}
	}
	


		
	
	
}
