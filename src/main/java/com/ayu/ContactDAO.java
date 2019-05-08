package com.ayu;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class ContactDAO {

	SessionFactory sf;
	
	public ContactDAO()
	{
       sf=Data.getSF();
	}
	
	//add feedback
	public void addContact(Contact contact)
	{
      Session session=sf.openSession();
      Transaction tr=session.beginTransaction();
      session.save(contact);
      tr.commit();
      session.close();
	}
	
	//fetch data
	public List<Contact> getAllContact()
	{
		Session session=sf.openSession();
		Query query=session.createQuery("from contact");
		List<Contact> flist=query.list();
		session.close();
		return flist;
	}
	//remove contact
    public void removeByid(String email)
    {
  	  Session session=sf.openSession();
  	  Transaction tr=session.beginTransaction();
      Contact contact=new Contact();
  	  contact.setEmail(email);
  	  session.delete(contact);
  	  tr.commit();
  	  session.close();
  	     }

}


