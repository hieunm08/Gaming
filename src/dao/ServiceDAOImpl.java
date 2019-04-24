/* 
*@author PhuongND21
*@date 19 Apr 2019 
*@version 1.0*/

package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.Service;
import entities.TypeRoom;
import utils.HibernateUtil;

public class ServiceDAOImpl implements ServiceDAO {

	@Override
	public boolean createService(Service serviceRoom) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(serviceRoom);
			transaction.commit();
			return true;
		} catch (Exception ex) {
			if (transaction != null) {
				transaction.rollback();
			}
			ex.printStackTrace();
		} finally {
			session.flush();
			session.close();
		}
		return false;
	}

	@Override
	public boolean updateService(Service serviceRoom) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.update(serviceRoom);
            transaction.commit();
            return true;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
		return false;
	}

	@Override
	public boolean deleteService(Service serviceRoom) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.delete(serviceRoom);
            transaction.commit();
            return true;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
		return false;
	}

	@Override
	public Service findService(int id_service) {
		 Session session = HibernateUtil.getSessionFactory().openSession();
	        Transaction transaction = null;
	        try {
	            transaction = session.beginTransaction();
	            Query query = session.createQuery("FROM Service WHERE id_service = :id_service");
	            query.setInteger("id_service", id_service);
	            Service obj =  (Service) query.uniqueResult();
	            transaction.commit();
	            return obj;
	        } catch (Exception ex) {
	            if (transaction != null) {
	                transaction.rollback();
	            }
	            ex.printStackTrace();
	        } finally {
	            session.flush();
	            session.close();
	        }
		return null;
	}

	@Override
	public List<Service> getAll() {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM Service");
            List<Service> list = query.list();
            transaction.commit();
            return list;
        } catch (Exception ex) {
            if (transaction != null) {
                transaction.rollback();
            }
            ex.printStackTrace();
        } finally {
            session.flush();
            session.close();
        }
		return null;
	}

}
