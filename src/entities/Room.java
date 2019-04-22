/*
 * (C) Copyright 2019 To Present
 *
 * @author Hieu
 * @date Apr 18, 2019
 */

package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * @author Hieu
 *
 */
@Entity
@Table(name = "room")
public class Room {
	@Id
	@GeneratedValue
	@Column(name = "id_room")
	private int id_room;
	@Column(name = "name")
	private String roomName;
	@Column(name = "price")
	private String price;
	@Column(name = "room_status")
	private int roomStatus;
	@Column(name = "id_typeroom", nullable=false)
	private Integer id_typeroom;
	@ManyToOne(optional=false)
    @JoinColumn(name = "id_typeroom",referencedColumnName = "id_typeroom", nullable = false, insertable=false, updatable=false)
	private TypeRoom typeRoom;
	
	/**
	 * 
	 */
	public Room() {
		super();
	}

	public Room(int id_room, String roomName, String price, int roomStatus, int id_typeroom) {
		super();
		this.id_room = id_room;
		this.roomName = roomName;
		this.price = price;
		this.roomStatus = roomStatus;
		this.id_typeroom = id_typeroom;
	}

	public int getId_room() {
		return id_room;
	}

	public void setId_room(int id_room) {
		this.id_room = id_room;
	}

	public String getRoomName() {
		return roomName;
	}

	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getRoomStatus() {
		return roomStatus;
	}

	public void setRoomStatus(int roomStatus) {
		this.roomStatus = roomStatus;
	}

	public int getId_typeroom() {
		return id_typeroom;
	}

	public void setId_typeroom(int id_typeroom) {
		this.id_typeroom = id_typeroom;
	}

	public TypeRoom getTypeRoom() {
		return typeRoom;
	}

	public void setTypeRoom(TypeRoom typeRoom) {
		this.typeRoom = typeRoom;
	}

	
	
	

	
	
}
