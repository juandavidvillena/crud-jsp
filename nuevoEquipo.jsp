<%-- 
    Document   : nuevoEquipo
    Created on : 20-mar-2018, 11:38:28
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
        <title>Equipo eSport</title>
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
                    <div class="panel-heading panel-warning">Nuevo Equipo</div>
                    <div class="panel-body">
                        <form method="post" action="grabaEquipo.jsp">
                            <div class="row">
                                <div class="col-md-6">
                                    Código Equipo <input class="form-control" type="text" name="CodEquipo" required/><br>
                                </div>
                                <div class="col-md-6">
                                    Nombre <input class="form-control" type="text" name="NomEquipo" required/></br>
                                </div>
                                <div class="col-md-6">
                                    Comunidad <input class="form-control" type="text" name="Comunidad" required/></br>
                                </div>
                                <div class="col-md-6">
                                    eSport <input class="form-control" type="text" name="eSport" value="League of Legends"required/></br>
                                </div>
                                <div class="col-md-6">
                                    Año Creación <input class="form-control" type="text" name="AnoCreacion" required/></br>
                                </div>
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
    </body>
</html>