<%-- 
    Document   : modificaJugador
    Created on : 12-mar-2018, 10:01:52
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
        <title>Modifica Jugadores</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="general.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> 
    </head>
    <body>
        <% request.setCharacterEncoding("UTF-8"); %>
        
        <div style="height:100px;"></div>
        <div class="row">
            <div class="col-md-2 col-md-offset-2">
                <a href="index.jsp" class="btn btn-success">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    Atrás
                </a>
            </div>
            <div class="col-md-7 col-md-offset-2">
                <div class="panel panel-warning">
                    <div class="panel-heading panel-warning">Modificar <%= request.getParameter("NomJug") %> <%= request.getParameter("Rol") %></div>
                    <div class="panel-body">
                        <form method="post" action="grabaModificaJugador.jsp">
                            <div class="row">
                                <div class="col-md-6">
                                    Codigo Jugador <input class="form-control" type="text" name="CodJug" value="<%= request.getParameter("CodJug") %>" readonly><br>
                                </div>
                                <div class="col-md-6">
                                    Nombre <input class="form-control" type="text" name="NomJug" value="<%= request.getParameter("NomJug") %>"/></br>
                                </div>
                                <div class="col-md-6">
                                    Rol <input class="form-control" type="text" name="Rol" value="<%= request.getParameter("Rol") %>"/></br>
                                </div>
                                <div class="col-lg-6">
                                    Teléfono <input class="form-control" type="text" name="Telefono" value="<%= request.getParameter("Telefono") %>"/></br>
                                </div>
                                <div class="col-lg-6">
                                    Fecha Nacimiento <input class="form-control" type="text" name="AnoNac" value="<%= request.getParameter("AnoNac") %>"/></br>
                                </div>
                                <div class="col-md-6">
                                    Código Equipo <select name="CodEquipo" required>
                                                        <option value="1">MadLions</option>
                                                        <option value="2">Asus Rog Army</option>
                                                        <option value="3">Giant</option>
                                                        <option value="4">Movistar Riders</option>
                                                    </select>
                                    <!--<input class="form-control" type="text" name="CodEquipo" required/> --> <br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <input class="btn btn-primary" type="submit" value="Modificar">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>