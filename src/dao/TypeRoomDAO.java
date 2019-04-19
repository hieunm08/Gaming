/*
 * (C) Copyright 2019 To Present
 *
 * @author Hieu
 * @date Apr 18, 2019
 */

package dao;

import java.util.List;

import entities.TypeRoom;

/**
 * @author Hieu
 *
 */
public interface TypeRoomDAO {
	boolean createTypeRoom(TypeRoom typeRoom);
	boolean updateTypeRoom(TypeRoom typeRoom);
	boolean deleteTypeRoom(TypeRoom typeRoom);
	TypeRoom findTypeRoom(int typeRoomId);
	List<TypeRoom> getAll();
}
