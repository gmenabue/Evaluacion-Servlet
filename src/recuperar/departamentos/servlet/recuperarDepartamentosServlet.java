package recuperar.departamentos.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.hibernate.Transaction;

import clases.dao.DepartmentsDAO;
import clases.dto.Departments;
import clases.sessionmanager.SessionManager;







public class recuperarDepartamentosServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final Logger log = LogManager.getRootLogger();
 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public recuperarDepartamentosServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unused")
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
				
		
		
				//Me declaro una lista de departamentos para guardar los departamentos recuperados
				List<Departments> lista = new ArrayList<Departments>();
				List<Departments> lista_departamentos = new ArrayList<Departments>();
				//Objeto de DepartmentsDAO
				DepartmentsDAO ddao = new DepartmentsDAO();
				//Obtengo la Session y la seteo en la clase SuperDAO
				ddao.setSession(SessionManager.obtenerSesionNueva());
				//Inicio la transacción
				Transaction transaction = ddao.getSession().beginTransaction();
				
				response.setContentType("text/html");
				//Cojo el fichero que tiene preparado  por getWriter
				//para escribir nuestra respuesta
				PrintWriter out = response.getWriter();
			
				try {
					//Ejecuto la query
				    lista = ddao.read_all();
					
					Iterator<Departments> it = lista.iterator();
		    		Departments departamento = new Departments();
		    		
		    		//Recorro la lista
		    		while (it.hasNext())
		    		{
		    			departamento = it.next();
		    			lista_departamentos.add(departamento);
						System.out.println(departamento.getDepartmentName());
										
					}
		    		//Hago Set de los atributos en la Request
		    		request.setAttribute("listadepartamentos", lista_departamentos);
					//Redirijo a la página departamentos.jsp
		    		request.getRequestDispatcher("/departamentos.jsp").forward(request, response);
		    		//Hago log para saber que he recuperado los departamentos con éxito
		    		log.info("Departamentos Recuperados");
				}
				
				catch (Exception e) {
					log.error("Error en AutenticationServlet");
					e.printStackTrace();
				} 
				finally{
					//Cierro la sesión
		    		SessionManager.cerrar_session(ddao.getSession());
		    		//SessionManager.cerrar_session_factory();
				}
				
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
