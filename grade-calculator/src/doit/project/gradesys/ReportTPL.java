package doit.project.gradesys;

import java.util.ArrayList;

import doit.project.gradesys.cmpnt.School;
import doit.project.gradesys.cmpnt.Student;

public class ReportTPL {
	
	private static void drawLine() {
		for(int i=0; i<32; i++) {
			System.out.print("-");
		}
		System.out.println();
	}
	
	
	public static void printList(String subject, ArrayList<GradeSet> list, School school) {
		drawLine();
		System.out.printf("       %s 수강생 학점     \n", subject);
		System.out.printf("  %s |   %s   |%s|  %s\n", "이름","학번","중점과목","점수");
		drawLine();

		ArrayList<Student> slist = school.getStudentList();
		
		if(subject=="국어" || subject=="수학") {
			for(int i=0; i<list.size(); i++) {
				Student student = slist.get(i);
				student.setMjrSubject(student.getMajorCode());
				
				GradeSet gSet = list.get(i);
				gSet.setGrade(gSet.getSubjectCode(), gSet.getMjrCode(), gSet.getScore());
				System.out.printf(" %s | %d |  %s  |%4d:%s |\n", student.getName(), student.getStudentId(), student.getMjrSubject(), gSet.getScore(), gSet.getGrade());
				drawLine();
			}
		} else if(subject=="방송댄스") {
			for(int i=0; i<list.size(); i++) {
				Student student = slist.get(i);
				student.setMjrSubject(student.getMajorCode());
				
				GradeSet gSet = list.get(i);
				System.out.printf(" %s | %d |  %s  |%4d:%s |\n", student.getName(), student.getStudentId(), student.getMjrSubject(), gSet.getScore(), gSet.getPass(gSet.getScore()));
				drawLine();
			}
	
		}
	}	
}
