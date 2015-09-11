package clases.dao;

import java.util.List;

import clases.dto.Departments;
import clases.inteface.InterfaceDAO;



public class DepartmentsDAO extends SuperDAO implements InterfaceDAO<Departments> {

	
	
	public List<Departments> read_all2(int department_id) {
		String consulta = "select * from DEPARTMENTS WHERE DEPARTMENT_ID = " + department_id;
		@SuppressWarnings("unchecked")
		List<Departments> list = getSession().createSQLQuery(consulta).addEntity(Departments.class).list();
		return list;
		
	}

	@Override
	public boolean create(Departments g) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public Departments read(Object id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Departments update(Departments g) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean delete(Object id) {
		// TODO Auto-generated method stub
		return false;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Departments> read_all() {
		List<Departments> list = getSession().createSQLQuery("select * from DEPARTMENTS").addEntity(Departments.class).list();
		return list;
		
	}

	

}
