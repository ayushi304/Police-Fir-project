package com.ayu;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class WantedDAO {

	SessionFactory sf;
	
	public WantedDAO(){
	
		sf=Data.getSF();
	}
	
	//add new report
	public void addWanted(Wanted wanted){
		Session session=sf.openSession();
		Transaction tr=session.beginTransaction();
		session.save(wanted);
		tr.commit();
		session.close();
		}
}
