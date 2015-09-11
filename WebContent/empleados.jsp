<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="clases.dto.Employees"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"

    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="icon" href="https://lh4.googleusercontent.com/z9tfAMSfk3rdeNkud-hsofwIStP7M0pCNv5l6OBVg0I9bM8hycFOAidI8JH5Ar-ykAlI0fGxnNNlrcQ=w1256-h759" type="image/x-icon">
<title>Lista De Empleados Por Departamentos</title>
</head>
<body bgcolor="#F2F2F2">
<br>
<br>
<br>

<!-- Título -->
<H1 align="center">Lista De Empleados Del Departamento: <font color="#DF0101"><c:out value="${nombredep}"></c:out></font></H1>


<!-- Tabla del Cuerpo de la página -->
<table border="1" align="center">
   <tr>
     <th bgcolor="#A4A4A4">Nombre</th>
     <th bgcolor="#A4A4A4">Apellido</th>
     <th bgcolor="#A4A4A4">Salario</th>
   </tr>
   
   <c:forEach items="${listaempleados}" var="empleado" varStatus="i" > 
   <tr>
   	
     <td><c:out value="${empleado.firstName}"></c:out></td>
     <td><c:out value="${empleado.lastName}"></c:out></td>
     <td align="right"><c:out value="${empleado.salary}$"></c:out></td>
   
   </tr>
   </c:forEach> 
   
</table>
<!-- Fin De Tabla -->

<br>
<br>
<br>


<!-- Botón para volver -->
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