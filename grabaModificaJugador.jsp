<%-- 
    Document   : grabaModificaJugador
    Created on : 13-mar-2018, 8:46:22
    Author     : 6001016
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
    <title>Jugadores eSport</title>
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_avanzado","root", "root");
      Statement s = conexion.createStatement();
      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE jugador SET "
                           + " NomJug='" + request.getParameter("NomJug")
                           + "', Rol='" + request.getParameter("Rol")
                           + "', Telefono=" + request.getParameter("Telefono")
                           + ", AnoNac=" + request.getParameter("AnoNac")
                           + ", CodEquipo=" + request.getParameter("CodEquipo")
                           + " WHERE CodJug=" + request.getParameter("CodJug");
      s.execute(actualizacion);
      
      conexion.close();
    %>
    <br>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        alert("Jugador Modificado!");
        document.location = "index.jsp"
    </script>
  </body>
</html>
<%--
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"  crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css"  crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"  crossorigin="anonymous"></script>

    <title>Jugadores eSport - Juan David Villena Gil</title>
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3399/crud_villena","root", "root");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      String actualizacion = "UPDATE jugadores SET "
                           + "', AnoNacimiento=" + Integer.valueOf(request.getParameter("AnoNacimiento"))
                           + ", Nombre='" + request.getParameter("Nombre")
                           + "', Telefono=" + Integer.valueOf(request.getParameter("Telefono"))
                           + ", Rol='" + request.getParameter("Rol")
                           + "', CodigoEquipo=" + Integer.valueOf(request.getParameter("CodigoEquipo"))
                           + " WHERE Codigojuagadores=" + Integer.valueOf(request.getParameter("Codigojuagadores"));
      s.execute(actualizacion);
      out.println("jugador actualizado correctamente.");
      
      conexion.close();
    %>
    <br>
    <form  action ="index.jsp" method="get">
        <input type="submit" name="Aceptar">
    </form>
    <!--<a href="index.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-home"></span> Página principal</button>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
--%>