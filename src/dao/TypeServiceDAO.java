/* 
*@author PhuongND21
*@date 23 Apr 2019 
*@version 1.0*/

package dao;

import java.util.List;

import entities.TypeRoom;
import entities.TypeService;

public interface TypeServiceDAO {
	boolean createTypeService(TypeService typeService);
	boolean updateTypeService(TypeService typeService);
	boolean deleteTypeService(TypeService typeService);
	TypeService findTypeService(int id_type);
	List<TypeService> getAll();
}
