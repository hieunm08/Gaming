/* 
*@author PhuongND21
*@date 23 Apr 2019 
*@version 1.0*/

package dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.TypeRoom;
import entities.TypeService;
import utils.HibernateUtil;

public class TypeServiceDAOImpl implements TypeServiceDAO{

	@Override
	public boolean createTypeService(TypeService typeService) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.save(typeService);
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
	public boolean updateTypeService(TypeService typeService) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.update(typeService);
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
	public boolean deleteTypeService(TypeService typeService) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            session.delete(typeService);
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
	public TypeService findTypeService(int id_type) {
		 Session session = HibernateUtil.getSessionFactory().openSession();
	        Transaction transaction = null;
	        try {
	            transaction = session.beginTransaction();
	            Query query = session.createQuery("FROM category WHERE typeRoomId = :typeRoomId");
	            query.setInteger("id_type", id_type);
	            TypeService obj =  (TypeService) query.uniqueResult();
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
	public List<TypeService> getAll() {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM TypeService");
            List<TypeService> list = query.list();
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
