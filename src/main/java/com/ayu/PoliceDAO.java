package com.ayu;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class PoliceDAO {
	
	SessionFactory sf;
	
	public PoliceDAO() {
		sf=Data.getSF();
	}
    //add police
	public void addPolice(Police police)
	{
		Session session=sf.openSession();
		Transaction tr=session.beginTransaction();
		session.save(police);
		tr.commit();
		session.close();
	}
	// search by id
	public Police searchById(String username)
	{
		Session session=sf.openSession();
		Police p=session.get(Police.class,username);
		session.close();
		return p;
	}
	//show All Police
	public List<Police> getAllPolice()
	{
		Session session=sf.openSession();
	    Query query=session.createQuery("from Police");
	    List<Police> ulist=query.list();
	    session.close();
		return ulist;
	}	
	 //remove Police
    public void removeByid(String email)
    {
  	  Session session=sf.openSession();
  	  Transaction tr=session.beginTransaction();
      Police police=new Police();
  	  police.setEmail(email);
  	  session.delete(police);
  	  tr.commit();
  	  session.close();
  	     }
}
