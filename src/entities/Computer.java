/* 
*@author PhuongND21
*@date 19 Apr 2019 
*@version 1.0*/

package entities;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name ="computers")
public class Computer {
	@Id
	@GeneratedValue
	@Column(name = "id_cpt")
	private int computerId;
	@Column(name = "code_computer")
	private String codeComputer;
	@Column(name = "id_status_cpt")
	private int statusComputerId;
	@Column(name = "id_room")
	private int id_room;

	public Computer() {
	}

	/**
	 * @param computerId
	 * @param codeComputer
	 * @param statusComputerId
	 * @param roomID
	 */
	public Computer(int computerId, String codeComputer, int statusComputerId, int id_room) {
		super();
		this.computerId = computerId;
		this.codeComputer = codeComputer;
		this.statusComputerId = statusComputerId;
		this.id_room = id_room;
	}

	public int getComputerId() {
		return computerId;
	}

	public void setComputerId(int computerId) {
		this.computerId = computerId;
	}

	public String getCodeComputer() {
		return codeComputer;
	}

	public void setCodeComputer(String codeComputer) {
		this.codeComputer = codeComputer;
	}

	public int getStatusComputerId() {
		return statusComputerId;
	}

	public void setStatusComputerId(int statusComputerId) {
		this.statusComputerId = statusComputerId;
	}

	public int getId_room() {
		return id_room;
	}

	public void setId_room(int id_room) {
		this.id_room = id_room;
	}

}
