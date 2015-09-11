<%@page import="clases.dto.Departments"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="https://lh4.googleusercontent.com/z9tfAMSfk3rdeNkud-hsofwIStP7M0pCNv5l6OBVg0I9bM8hycFOAidI8JH5Ar-ykAlI0fGxnNNlrcQ=w1256-h759" type="image/x-icon">
<title>Lista de departamentos</title>
</head>
<body bgcolor="#F2F2F2">
<br>
<br>
<br>

<div align="center">
<H1>Selecciona un departamento para ver sus empleados</H1>



<form  action=RecuperarEmpleadosServlet method=get >				
		<!-- Inicio Dl Select -->    
		<select  name=lista_dep>
		    
				<c:forEach items="${listadepartamentos}" var="departamento" varStatus="i" > 	
	
	
				
					<option value =  "${departamento.departmentId}">
						<c:out value="${departamento.departmentName}"></c:out>
						
					</option>
				
					
				</c:forEach> 
		</select>
		<!-- Fin Del Select -->	
										
		<!-- Botón para buscar -->			
		<input type=submit value = BuscarEmpleados>		
										
</form>				
</div>	

<br>
<br>
<br>

<div align="center">
<input type="button" value="Volver Atrás" onclick="history.back()" style="font-family: Verdana; font-size: 10 pt">
</div>

<br>
<br>
<br>

<div title="footer" align="center">
<h6>Aplicación para buscar empleados según su departamento</h6>
<h6>Desarrollado por Giordano Menabue</h6>
</div>	

</body>
</html>