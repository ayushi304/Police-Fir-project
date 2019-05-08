package com.ayu;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class MissingDAO {

	SessionFactory sf;
	
	public MissingDAO(){
	
		sf=Data.getSF();
	}
	
	//add new report
	public void addMissingPerson(MissingPerson missingperson){
		Session session=sf.openSession();
		Transaction tr=session.beginTransaction();
		session.save(missingperson);
		tr.commit();
		session.close();
		}
}
