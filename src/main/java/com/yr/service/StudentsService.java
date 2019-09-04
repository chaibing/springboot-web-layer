package com.yr.service;

import java.util.List;

import com.yr.dao.StudentsDao;
import com.yr.entity.Students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentsService {
    @Autowired
    private StudentsDao studentsDao;

    public List<Students> getStudents() {

        return studentsDao.getStudents();
    }

    public int delStudents(int id) {
        return studentsDao.delStudents(id);
    }

    public Students getStudent(int id) {
        return studentsDao.getStudent(id);
    }

    public int editStudent(Students student) {
        return studentsDao.editStudent(student);
    }

    public int addStudent(Students student) {
        return studentsDao.addStudent(student);
    }

    public List<Students> getStudentsCount(int page, int pageSize) {

        return studentsDao.getStudentsCount(page, pageSize);
    }
}
