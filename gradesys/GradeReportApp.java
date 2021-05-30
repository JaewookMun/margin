package doit.project.gradesys;

import java.util.ArrayList;

import doit.project.gradesys.cmpnt.School;
import doit.project.gradesys.cmpnt.Student;

public class GradeReportApp {
	public static void main(String[] args) {
		School good=School.getInstance();
		
		good.addStudent(new Student("�ȼ���", 181213, School.MJR_KOR_CODE));
		good.addStudent(new Student("������", 182330, School.MJR_COM_CODE));
		good.addStudent(new Student("�̵�ȣ", 171518, School.MJR_KOR_CODE));
		good.addStudent(new Student("������", 172350, School.MJR_KOR_CODE));
		good.addStudent(new Student("������", 171290, School.MJR_COM_CODE));
		
		ArrayList<GradeSet> kor = new ArrayList<GradeSet>();
		
		//����
		GradeSet k1 = new GradeSet(School.KOR_CODE, 181213, School.MJR_KOR_CODE, 56);
		GradeSet k2 = new GradeSet(School.KOR_CODE, 182330, School.MJR_COM_CODE, 98);
		GradeSet k3 = new GradeSet(School.KOR_CODE, 171518, School.MJR_KOR_CODE, 88);
		GradeSet k4 = new GradeSet(School.KOR_CODE, 172350, School.MJR_KOR_CODE, 95);
		GradeSet k5 = new GradeSet(School.KOR_CODE, 171290, School.MJR_COM_CODE, 56);
		
		kor.add(k1);
		kor.add(k2);
		kor.add(k3);
		kor.add(k4);
		kor.add(k5);
		
		ReportTPL.printList("����", kor, good);
		
		ArrayList<GradeSet> math = new ArrayList<GradeSet>();
		
		//����
		GradeSet m1 = new GradeSet(School.MATH_CODE, 181213, School.MJR_KOR_CODE, 95);
		GradeSet m2 = new GradeSet(School.MATH_CODE, 182330, School.MJR_COM_CODE, 95);
		GradeSet m3 = new GradeSet(School.MATH_CODE, 171518, School.MJR_KOR_CODE, 100);
		GradeSet m4 = new GradeSet(School.MATH_CODE, 172350, School.MJR_KOR_CODE, 89);
		GradeSet m5 = new GradeSet(School.MATH_CODE, 171290, School.MJR_COM_CODE, 83);
		
		math.add(m1);
		math.add(m2);
		math.add(m3);
		math.add(m4);
		math.add(m5);
		
		ReportTPL.printList("����", math, good);
		
		//��۴�
		ArrayList<GradeSet> dance = new ArrayList<GradeSet>();
		
		GradeSet d1 = new GradeSet(School.DANCE_CODE, 181213, School.MJR_KOR_CODE, 95);
		GradeSet d2 = new GradeSet(School.DANCE_CODE, 182330, School.MJR_COM_CODE, 85);
		GradeSet d3 = new GradeSet(School.DANCE_CODE, 171518, School.MJR_KOR_CODE, 55);
		
		dance.add(d1);
		dance.add(d2);
		dance.add(d3);
		
		ReportTPL.printList("��۴�", dance, good);

		
	}
}
