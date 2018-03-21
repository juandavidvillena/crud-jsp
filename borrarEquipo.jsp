<%-- 
    Document   : borrarEquipo
    Created on : 20-mar-2018, 12:52:18
    Author     : 6001016
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_avanzado","root", "root");
      Statement s = conexion.createStatement();
      s.execute ("DELETE FROM equipo WHERE CodEquipo=" + request.getParameter("CodEquipo"));
      
      s.close();
    %>
    <script>
        alert("Equipo Eliminado");
        document.location = "index.jsp";
    </script>
  </body>
</html>
