package hibernate.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="emp")
public class Employee {
	@Id
	@Column(name="eid")
	private int eid;
	@Column(name="ename")
	private String ename;
	@Column(name="salary")
	private double basic;
	public Employee(int eid, String ename, double basic) {
		super();
		this.eid = eid;
		this.ename = ename;
		this.basic = basic;
	}
	public Employee() {
		
	}
	public int getEid() {
		return eid;
	}
	public void setEid(int eid) {
		this.eid = eid;
	}
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public double getBasic() {
		return basic;
	}
	public void setBasic(double basic) {
		this.basic = basic;
	}
	
}