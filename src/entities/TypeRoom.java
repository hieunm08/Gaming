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
import javax.persistence.Table;

/**
 * @author Hieu
 *
 */

@Entity
@Table(name = "type_room")
public class TypeRoom {
	@Id
	@GeneratedValue
	@Column(name = "id_typeroom")
	private int typeRoomId;
	@Column(name = "name")
	private String nameRoom;
	@Column(name = "note")
	private String note;
	
	/**
	 * 
	 */
	public TypeRoom() {
		super();
	}

	public TypeRoom(int typeRoomId, String nameRoom, String note) {
		super();
		this.typeRoomId = typeRoomId;
		this.nameRoom = nameRoom;
		this.note = note;
	}

	public int getTypeRoomId() {
		return typeRoomId;
	}

	public void setTypeRoomId(int typeRoomId) {
		this.typeRoomId = typeRoomId;
	}

	public String getNameRoom() {
		return nameRoom;
	}

	public void setNameRoom(String nameRoom) {
		this.nameRoom = nameRoom;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
	
	
}
