package com.prowings.dao;

import java.util.List;

import com.prowings.entity.Student;

public interface StudentDao {

	public boolean saveStudent(Student student); 
		
	public List<Student> getStudentList();
		 
	
}
