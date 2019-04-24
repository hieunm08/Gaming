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
@Table(name = "service_room")
public class Service {
	@Id
	@GeneratedValue
	@Column(name = "id_service")
	private int id_service;
	@Column(name = "name")
	private String nameService;
	@Column(name = "price")
	private int priceService;
	@Column(name = "id_type")
	private int id_type;
	@Column(name = "note")
	private String note;
	
	
	/**
	 * @param id_service
	 * @param nameService
	 * @param priceService
	 * @param id_type
	 * @param note
	 * 
	 */
	public Service() {
		// TODO Auto-generated constructor stub
	}
	public Service(int id_service, String nameService, int priceService,int id_type, String note) {
		super();
		this.id_service = id_service;
		this.nameService = nameService;
		this.priceService = priceService;
		this.id_type = id_type;
		this.note = note;
	}
	public int getId_service() {
		return id_service;
	}
	public void setId_service(int id_service) {
		this.id_service = id_service;
	}
	public String getNameService() {
		return nameService;
	}
	public void setNameService(String nameService) {
		this.nameService = nameService;
	}
	public int getPriceService() {
		return priceService;
	}
	public void setPriceService(int priceService) {
		this.priceService = priceService;
	}
	public int getId_type() {
		return id_type;
	}
	public void setId_type(int id_type) {
		this.id_type = id_type;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	
}
