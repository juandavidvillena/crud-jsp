<%-- 
    Document   : nuevoJugador
    Created on : 12-mar-2018, 9:58:36
    Author     : 6001016
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="general.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
        <link rel="stylesheet" type="text/css" href="css/normal.css">
        <title>Jugadores eSport</title>
    </head>
    <body>
        <div style="height: 50px;"></div>
        <div class="row">
            <div class="col-md-2 col-md-offset-2">
                <a href="index.jsp" class="btn btn-success">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    Atrás
                </a>
            </div>
        </div>
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-warning">
                    <div class="panel-heading panel-warning">Nuevo Jugador</div>
                    <div class="panel-body">
                        <form method="post" action="grabaJugador.jsp">
                            <div class="row">
                                <div class="col-md-6">
                                    Código Jugador <input class="form-control" type="text" name="CodJug" required/><br>
                                </div>
                                <div class="col-md-6">
                                    Nombre <input class="form-control" type="text" name="NomJug" required/></br>
                                </div>
                                <div class="col-md-6">
                                    Rol <input class="form-control" type="text" name="Rol" required/></br>
                                </div>
                                <div class="col-md-6">
                                    Teléfono <input class="form-control" type="text" name="Telefono" required/></br>
                                </div>
                                <div class="col-md-6">
                                    Año Nacimiento <input class="form-control" type="text" name="AnoNac" required/></br>
                                </div>
                                <div class="col-md-6">
                                    Código Equipo  <select name="CodEquipo" required>
                                                        <option value="1">MadLions</option>
                                                        <option value="2">Asus Rog Army</option>
                                                        <option value="3">Giant</option>
                                                        <option value="4">Movistar Riders</option>
                                                        <option value="5">G2Vodafone</option>
                                                    </select> 
                                    <!--<input class="form-control" type="text" name="CodEquipo" required/>--></br>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-2">
                                    <input class="btn btn-primary" type="submit" value="Aceptar">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>