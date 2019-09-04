package com.yr.dao;

import java.util.List;

import com.yr.entity.Students;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

@Repository
public interface StudentsDao {
 

	public List<Students> getStudents();
	public List<Students> getStudentsCount(int page, int pageSize);
	 
	
	int delStudents(int id);

	public Students getStudent(int id);

	public int editStudent(Students student);

	public int addStudent(Students student);
	
}
