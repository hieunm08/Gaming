package dao;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import entities.Users;
import utils.HibernateUtil;

public class UserDAOImpl implements UserDAO {

	/**
	 * kiểm tra đăng nhập.
	 */
	public Users checkLogin(String username, String password) {
		Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction transaction = null;
        try {
            transaction = session.beginTransaction();
            Query query = session.createQuery("FROM Users WHERE username = :username AND password = :password");
            Users user = (Users) query.uniqueResult();
            transaction.commit();
            return user;
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

	/**
	 * 
	 * Kiểm tra tồn tại username.
	 */
	public boolean checkUsername(String username) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = null;
		String sql = "SELECT  FROM Users WHERE username = '" + username + "'";
		try {
			transaction = session.beginTransaction();
			Query query = session.createSQLQuery(sql);
			Users u = (Users) query.uniqueResult();
			if (!transaction.wasCommitted())
				transaction.commit();
			if (u != null) {
				return true;
			}
		} catch (Exception ex) {
			if (transaction != null) {
				transaction.rollback();
			}
			ex.printStackTrace();
		}
		return false;
	}

	/**
	 * Đăng kí.
	 */
	public boolean addUser(Users u) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			session.save(u);
			return true;
		} catch (Exception ex) {
			if (transaction != null) {
				transaction.rollback();
			}
			ex.printStackTrace();
		}
		return false;
	}

	/**
	 * 
	 * Lấy thông tin users thông qua username.
	 */
	public Users getUserByUsername(String username) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		Transaction transaction = null;
		try {
			transaction = session.beginTransaction();
			Users user = (Users) session.get(Users.class, username);
			transaction.commit();
			return user;
		} catch (Exception e) {
			if (transaction != null) {
				transaction.rollback();
			}
			e.printStackTrace();
		}
		return null;

	}

}
