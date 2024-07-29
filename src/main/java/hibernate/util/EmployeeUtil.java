package hibernate.util;

import java.util.Properties;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;

import hibernate.model.Employee;

public class EmployeeUtil {
	public static SessionFactory factory=null;
	public static SessionFactory getSessionFactory() {
		if(factory==null)
		{
		try
		{
			Configuration config=new Configuration();
			Properties settings= new Properties();
			settings.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
			settings.put(Environment.URL,"jdbc:mysql://localhost:3306/db1");
			settings.put(Environment.USER,"root");
			settings.put(Environment.PASS,"");
			settings.put(Environment.DIALECT,"org.hibernate.dialect.MySQL5Dialect");
			settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS,"thread");
			settings.put(Environment.HBM2DDL_AUTO,"update");
			
			config.setProperties(settings);
			config.addAnnotatedClass(Employee.class);
			StandardServiceRegistry serviceRegistry=new StandardServiceRegistryBuilder()
					.applySettings(config.getProperties()).build();
			factory= config.buildSessionFactory(serviceRegistry);
			
			
			
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
		return factory;
	}
}