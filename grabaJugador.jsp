<%-- 
    Document   : grabaJugador
    Created on : 12-mar-2018, 10:00:05
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
      
      String insercion = "INSERT INTO jugador (CodJug,NomJug,Rol,Telefono,AnoNac, CodEquipo) VALUES (" 
                           + Integer.valueOf(request.getParameter("CodJug"))
                           + ", '" + request.getParameter("NomJug")
                           + "', '" + request.getParameter("Rol")
                           + "', " +Integer.valueOf(request.getParameter("Telefono"))
                           + ", " + Integer.valueOf(request.getParameter("AnoNac"))
                           + ", " + Integer.valueOf(request.getParameter("CodEquipo"))
                           + ")";
        s.execute(insercion);
      
      conexion.close();
    %>
    <br>
    <form action="index.jsp" method="post">
        <input type ="submit" name="Aceptar">
    </form>
    <script>
        alert("Jugador Añadido!");
        document.location = "index.jsp"
    </script>
  </body>
</html>