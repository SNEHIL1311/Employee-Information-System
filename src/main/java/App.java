import java.util.List;

import hibernate.dao.EmployeeDao;
import hibernate.model.Employee;

public class App {
public static void main(String[] args) {
	@SuppressWarnings("unused")
	Employee e1=new Employee(101,"Amit Mondal",45000.0);
	EmployeeDao obj=new EmployeeDao();
	obj.saveRecord(e1);
	System.out.println("Data Saved !!!");
	List<Employee> arr=obj.getAllRecords();
	for(Employee e:arr)
	{
		System.out.println(e.getEid()+"\t"+e.getEname()+"\t"+e.getBasic());
	}
}
}