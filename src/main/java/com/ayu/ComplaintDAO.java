package com.ayu;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

public class ComplaintDAO{
	SessionFactory sf;
	  public ComplaintDAO(){
		  sf=Data.getSF();
	  }
	  //adding a new complaint
		  public void addComplaint(ComplaintForm ComplainForm){
		  Session session=sf.openSession();
		  Transaction tr=session.beginTransaction();
		  session.saveOrUpdate(ComplainForm);
		  tr.commit();
		  session.close();
		  }

 // searching Complaint by id
	  public ComplaintForm searchById(String ComplaintId){
		 Session session=sf.openSession();
		 ComplaintForm cf=session.get(ComplaintForm.class, ComplaintId);
		 session.close();
		 return cf; 
	  }

	  
  //searching Complaint by name
	 public List<ComplaintForm> searchByName(String Complaintype){
				Session session=sf.openSession();
				Criteria cr=session.createCriteria(ComplaintForm.class);
				Criterion crt=Restrictions.eq("Complaintype", Complaintype);
				cr.add(crt);
				List<ComplaintForm> clist=cr.list();
				session.close();
				return clist;
		  }		
		// feaching all Complain
	  public List<ComplaintForm> getAllComplain(){
				Session session=sf.openSession();
				Query query=session.createQuery("from ComplainForm order by ComplaintId");
				List<ComplaintForm> clist=query.list();
				
			//	Criteria cr=session.createCriteria(ComplainForm.class);
				//List<ComplainForm> clist=cr.list();
			session.close();
				return clist;
		  } 
	  //remove a Complain
	  public void removeById(int ComplaintId ){
			  Session session=sf.openSession();
			  Transaction tr=session.beginTransaction();
			  ComplaintForm cf=new ComplaintForm(); cf.setComplaintId(ComplaintId);
			  session.delete(cf);
			  tr.commit();
			  session.close();
		  }
		 //update a Complaint data
		
	  
	  public void updateComplainForm(String stationname){
			  Session session=sf.openSession();
			  Transaction tr=session.beginTransaction();
			  session.update(stationname);
			  tr.commit();
			  session.close(); 
  		
}		
	  }




