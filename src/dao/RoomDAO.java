/*
 * (C) Copyright 2019 To Present
 *
 * @author Hieu
 * @date Apr 18, 2019
 */

package dao;

import java.util.List;

import entities.Room;

/**
 * @author Hieu
 *
 */
public interface RoomDAO {
	 List<Room> getAll();
	 boolean createRoom(Room room);
	 boolean updateRoom(Room room);
	 boolean deleteRoom(Room room);

}
