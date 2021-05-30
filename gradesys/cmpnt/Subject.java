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
	//subject code�� ���� subject�� ���� �� �ֵ��� �޼ҵ� ����.
	//������ �� �þ�� ����� �����ڵ带 HashMap���� �����ϴ� ���� �� ȿ�������� ���δ�.
	public String getSubject(int subjectCode) {
		if(subjectCode==School.KOR_CODE) {
			subject = "����";
		} else if (subjectCode==School.MATH_CODE){
			subject = "����";
		}
		return subject;
	}
	
	public void setSubject(int subjectCode) {
		if(subjectCode==School.KOR_CODE) {
			subject = "����";
		} else if (subjectCode==School.MATH_CODE){
			subject = "����";
		}
	}
	
	//SubjectCode�� School Ŭ�������� �̹� ����
	public int getSubjectCode(String subject) {
		if(subject == "����") {
			return subjectCode;
		} 
		return subjectCode;
	}

	public void setSubjectCode(String subject) {
		if(subject == "����") {
			subjectCode=School.KOR_CODE;
		}
		subjectCode=School.MATH_CODE;
	}
	
	public ArrayList<Student> getStudentList() {
		return studentList;
	}

	//�л���ܿ� �л� �߰�
	public boolean addStudent(Student student) {
		if(studentList.contains(student)) {
			return false;
		} else {
			studentList.add(student);
			return true;
		}
	}
	


		
	
	
}
