/* 
*@author PhuongND21
*@date 19 Apr 2019 
*@version 1.0*/

package dao;

import java.util.ArrayList;
import java.util.List;

import entities.Computer;
import entities.Product;

public interface ComputerDAO {
	
		boolean createComputer(Computer computer);
		boolean updateComputer(Computer computer);
		boolean deleteComputer(Computer computer);
		Computer findComputer(int computerId);
		List<Computer> getAll();
		List<Computer> getListComputerByRoom(int roomID);

}
