/*
 * (C) Copyright 2019 To Present
 *
 * @author Hieu
 * @date Apr 18, 2019
 */

package dao;

import entities.Users;

/**
 * @author Hieu
 *
 */
public interface UserDAO {
	public Users checkLogin(String username, String password);
	public boolean checkUsername(String username);
	public boolean addUser(Users users);
	public Users getUserByUsername(String username);

}
