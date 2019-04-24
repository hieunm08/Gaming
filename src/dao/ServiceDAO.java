/* 
*@author PhuongND21
*@date 19 Apr 2019 
*@version 1.0*/

package dao;

import java.util.List;

import entities.Service;
import entities.TypeRoom;

public interface ServiceDAO {
	
	boolean createService(Service serviceRoom);
	boolean updateService(Service serviceRoom);
	boolean deleteService(Service serviceRoom);
	Service findService(int id_service);
	List<Service> getAll();
}
