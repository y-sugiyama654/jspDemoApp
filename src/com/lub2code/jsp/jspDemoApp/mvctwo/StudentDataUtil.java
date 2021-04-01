package com.lub2code.jsp.jspDemoApp.mvctwo;

import java.util.ArrayList;
import java.util.List;

public class StudentDataUtil {

	public static List<Student> getStudents() {

		// create empty list
		List<Student> students = new ArrayList<>();

		// add sample data
		students.add(new Student("Yuta", "Sugiyama", "yuta@gmail.com"));
		students.add(new Student("Masato", "Satou", "masato@gmail.com"));
		students.add(new Student("Hiroshi", "Takahashi", "hiroshi@gmail.com"));

		// return the list
		return students;
	}
}
