/* 
*@author PhuongND21
*@date 23 Apr 2019 
*@version 1.0*/

package entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "type_service")
public class TypeService {
	@Id
	@GeneratedValue
	@Column(name = "id_type")
	private int id_type;
	@Column(name = "name_type")
	private String name_type;

	public TypeService() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @param id_type
	 * @param name_type
	 */
	public TypeService(int id_type, String name_type) {
		super();
		this.id_type = id_type;
		this.name_type = name_type;
	}

	public int getId_type() {
		return id_type;
	}

	public void setId_type(int id_type) {
		this.id_type = id_type;
	}

	public String getName_type() {
		return name_type;
	}

	public void setName_type(String name_type) {
		this.name_type = name_type;
	}

}
