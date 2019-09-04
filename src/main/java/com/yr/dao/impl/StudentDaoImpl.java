package com.yr.dao.impl;

import java.util.List;

import com.yr.dao.StudentsDao;
import com.yr.entity.Students;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;


@Repository
public class StudentDaoImpl implements StudentsDao {

    @Autowired
    JdbcTemplate jdbcTemplate;


    @Override
    public List<Students> getStudents() {
        String sql = "select * from students";
        RowMapper<Students> rowMapper = new BeanPropertyRowMapper<Students>(Students.class);
        List<Students> students = jdbcTemplate.query(sql, rowMapper);
        return students;
    }

    @Override
    public int delStudents(int id) {
        String sql = "delete from students where id=?";
        int result = jdbcTemplate.update(sql, id);
        return result;
    }

    @Override
    public Students getStudent(int id) {
        System.out.println("id=" + id);
        String sql = "select * from students where id=?";
        RowMapper<Students> rowMapper = new BeanPropertyRowMapper<Students>(Students.class);
        Students students = jdbcTemplate.queryForObject(sql, rowMapper, id);
        System.out.println("Students:" + students);
        return students;
    }

    @Override
    public int editStudent(Students student) {
        String sql = "update students set name=?,sex=?,city=?,email=?,major=?,score=?,sign=? where id=?";
        int result = jdbcTemplate.update(sql, student.getName(), student.getSex(), student.getCity(), student.getEmail(), student.getMajor(), student.getScore(), student.getSign(), student.getId());
        return result;
    }

    @Override
    public int addStudent(Students student) {
        String sql = "insert into students values (?,?,?,?,?,?,?,?)";
        int result = jdbcTemplate.update(sql, student.getId(), student.getName(), student.getSex(), student.getCity(), student.getEmail(), student.getMajor(), student.getScore(), student.getSign());
        return result;
    }


    @Override
    public List<Students> getStudentsCount(int page, int pageSize) {
        int start = (page - 1) * pageSize;
        String sql = "select       *      from students limit " + start + " ,?";
        RowMapper<Students> rowMapper = new BeanPropertyRowMapper<Students>(Students.class);
        List<Students> students = jdbcTemplate.query(sql, rowMapper, pageSize);
        return students;
    }

}
