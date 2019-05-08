package com.ayu;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class UserDAO {

	SessionFactory sf;

	public UserDAO() {
		sf=Data.getSF();
	}
	//add user
	public void addUser(User User)
	{
		Session session=sf.openSession();
		Transaction tr=session.beginTransaction();
		session.save(User);
		tr.commit();
		session.close();
	}
	//fetch user
	public List<User> getAllUser()
	{
		Session session=sf.openSession();
	    Query query=session.createQuery("from User");
	    List<User> ulist=query.list();
		return ulist;
	}
	
  /*  //search user by name
	public List<User> searchByUsername(String username)
	{
		Session session=sf.openSession();
	    Criteria cr=session.createCriteria(User.class);
        Criterion crt=Restrictions.eq("email", username);
        cr.add(crt);
        List<User> ulist=cr.list();
		session.close();
		return ulist;
	}
*/
	//search by id
	public User searchById(String username)
	{
		Session session=sf.openSession();
        User ud=session.get(User.class,username);
		session.close();
		return ud;
	}
	 //remove User
    public void removeByid(String email)
    {
  	  Session session=sf.openSession();
  	  Transaction tr=session.beginTransaction();
      User user=new User();
  	  user.setEmail(email);
  	  session.delete(user);
  	  tr.commit();
  	  session.close();
  	     }
	
}
