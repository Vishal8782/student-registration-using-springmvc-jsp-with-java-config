package com.prowings.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.prowings.entity.Student;

@Repository
public class StudentDaoImpl implements StudentDao {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean saveStudent(Student student) {
		System.out.println("inside saveStudent() of StudentDaoImpl");
		//		code to interact with DB and saves the incoming student object 
		
		Session session = sessionFactory.openSession();
		Transaction txn = session.beginTransaction();
		session.save(student);
		txn.commit();
		session.close();
		
		return true;
	}
	
	@Override
	public List<Student> getStudentList() {
		System.out.println("inside ListStudent() of StudentDaoImpl");
		
		
		Session session = null;
		Transaction txn = null;
		List<Student> res = new ArrayList<Student>();
		try {
			session = sessionFactory.openSession();
			txn = session.beginTransaction();
			String hql = "FROM Student";
			Query query = session.createQuery(hql);
			res = query.getResultList();
			txn.commit();
		}catch (Exception e) {
			System.out.println("Error while fetching the student list!!");
			e.printStackTrace();
			if(txn != null)
				txn.rollback();

	}

		return res;
	}

	
}
