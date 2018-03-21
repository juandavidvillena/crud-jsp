<%-- 
    Document   : index
    Created on : 13-mar-2018, 12:01:48
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
                    <link rel="stylesheet" type="text/css" href="normal.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css">
        <link rel="stylesheet" type="text/css" href="general.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script> -->
	
                    <title>Jugadores eSport</title>
		</head>
	<body class="index">
            <header class="cabecera">
		<div class="contenedor limpio">
			<div class="logo">
				<img src="img/logo.png">
			</div>
			<nav class="menu">
				<ul class="limpio">
					<li><a class="active" href="index.jsp">HOME</a></li>
					<li><a href="nuevoJugador.jsp">Nuevo Jugador</a></li>
                                        <li><a href="nuevoEquipo.jsp">Nuevo Equipo</a></li>
					<li><a href="contacto.html">Contacto</a></li>
					<li><a href="index.html">Cerrar Sesion</a></li>
				</ul>
			</nav>
		</div>
	</header>
		<!-- container -->
		<div class="container">
			<div id="textot">
	 			 <h1>Jugadores - Base de datos</h1>
			</div>
		</div>
		<div class="container">
                        <a class="btn btn-warning" href="nuevoJugador.jsp">
                            <span class="glyphicon glyphicon-plus"></span>
                            Añadir
                        </a>
			<div class="panel panel-warning">
				<!-- Default panel contents -->
				<div class="panel-heading panel-warning">Lista de jugadores</div>
				<!-- Table -->
				<table class="table table-dark table-hover ">
					<tr class="panel-primary">
                                                <th>
                                                    Codigo Jugador
                                                </th>
						<th>
							Nombre
						</th>
						<th>
							Rol
						</th>
						<th>
							Teléfono
						</th>
						<th>
							Año de Nacimiento
						</th>
                                                <th>
							Codigo Equipo
						</th>
                                                <th>
							Equipo
						</th>
                                        </tr>
                                            <%
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_avanzado","root", "root");
                                                Statement s = conexion.createStatement();
                                                ResultSet listado = s.executeQuery ("SELECT CodJug, NomJug, Rol, Telefono, AnoNac, equipo.CodEquipo,equipo.NomEquipo FROM jugador INNER JOIN EQUIPO ON jugador.CodEquipo = equipo.CodEquipo group by CodJug");
                                                while (listado.next()) {                                                
                                                    out.println("<tr><td>");
                                                    out.println(listado.getInt("CodJug") +"</td>");
                                                    out.println("<td>"+ listado.getString("NomJug") + "</td>");
                                                    out.println("<td>" + listado.getString("Rol") + "</td>");
                                                    out.println("<td>" + listado.getInt("Telefono") + "</td>");
                                                    out.println("<td>" + listado.getInt("AnoNac") + "</td>");
                                                    out.println("<td>" + listado.getInt("CodEquipo") +"</td>");
                                                    out.println("<td>" + listado.getString("NomEquipo") +"</td><td>");
                                                    
                                             %>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <form method="post" action="modificaJugador.jsp">
                                                        <input type="hidden" name="CodJug" value="<%=listado.getInt("CodJug") %>">
                                                        <input type="hidden" name="NomJug" value="<%=listado.getString("NomJug") %>">
                                                        <input type="hidden" name="Rol" value="<%=listado.getString("Rol") %>">
                                                        <input type="hidden" name="Telefono" value="<%=listado.getInt("telefono") %>">
                                                        <input type="hidden" name="AnoNac" value="<%=listado.getInt("AnoNac") %>">
                                                        <button type="submit"  class="btn btn-info">
                                                            <span class="glyphicon glyphicon-pencil"></span>
                                                        </button>
                                                    </form>
                                                </div>
                                                <div class="col-md-2">
                                                    <form method="post" action="borrarJugador.jsp">
                                                        <input type="hidden" name="CodJug" value="<%=listado.getString("CodJug") %>"/>
                                                        <button type="submit" class="btn btn-danger">
                                                            <span class="glyphicon glyphicon-trash"></span>
                                                        </button>
                                                    </form>
                                                </div>
                                            </div>
                                            </td></tr>
                                             <%
                                                }
                                                conexion.close();
                                            %>
				</table>
			</div>
		</div>
                                <div class="container">
			<div id="textot">
	 			 <h1>Equipos - Base de datos</h1>
			</div>
		</div>
                                <div class="container">
                        <a class="btn btn-warning" href="nuevoEquipo.jsp">
                            <span class="glyphicon glyphicon-plus"></span>
                            Añadir
                        </a>
			<div class="panel panel-warning">
				<!-- Default panel contents -->
				<div class="panel-heading panel-warning">Lista de Equipos</div>
				<!-- Table -->
				<table class="table table-dark table-hover">
					<tr class="panel-primary">
                                                <th>
                                                    Codigo Equipo
                                                </th>
						<th>
							Nombre
						</th>
						<th>
							Comunidad
						</th>
						<th>
							eSport
						</th>
						<th>
							Año de Creación
						</th>
                                                <th>
                                                    
                                                </th>
                                               
                                        </tr>
                                            <%
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection conexionuno = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_avanzado","root", "root");
                                                Statement j = conexionuno.createStatement();
                                                ResultSet listadouno = j.executeQuery ("SELECT CodEquipo, NomEquipo, Comunidad, eSport, AnoCreacion FROM Equipo group by CodEquipo");
                                                while (listadouno.next()) {                                                
                                                    out.println("<tr><td>");
                                                    out.println(listadouno.getInt("CodEquipo") +"</td>");
                                                    out.println("<td>"+ listadouno.getString("NomEquipo") + "</td>");
                                                    out.println("<td>" + listadouno.getString("Comunidad") + "</td>");
                                                    out.println("<td>" + listadouno.getString("eSport") + "</td>");
                                                    out.println("<td>" + listadouno.getInt("AnoCreacion") + "</td>");
                                                
                                            %>
                                        <td>
                                            <div class="col-md-2">
                                                    <form method="post" action="borrarEquipo.jsp">
                                                        <input type="hidden" name="CodEquipo" value="<%=listadouno.getString("CodEquipo") %>"/>
                                                        <button type="submit" class="btn btn-danger">
                                                            <span class="glyphicon glyphicon-trash"></span>
                                                        </button>
                                                    </form>
                                                </div>
                                        </td>
                                                        <%
                                                }
                                                conexionuno.close();
                                            %>
                                </table>
			</div>
		</div>
		    <footer>
	<div class="contenedor-body">
		<div class="colum1">
			<h1>Mas informacion del autor</h1>
			<p>
			Soy un estudiande de Grado Superior de Desarrollo de Aplicaciones Multiplataforma en el instituto I.E.S Campanillas (Málaga), Mi nombre es Juan David Villena Gil y si quiere saber más informacion sobre mi acceda a la pestaña de contacto.
			</p>
		</div>
		<div class="colum2">
			<h1>Redes Sociales</h1>
			<div class="fila">
                <a href="https://es-es.facebook.com">
				<img src="img/facebook.png">
                </a>
				<label>Sigueme en Facebook</label>
			</div>
			<div class="fila">
                <a href="https://twitter.com/thekeoma">
				<img src="img/twitter.png">
                </a>
				<label>Sigueme en Twitter</label>
			</div>
			<div class="fila">
                <a href="https://www.instagram.com/daviid15monii/">
				<img src="img/instagram.png">
                </a>
				<label>Sigueme en Instagram</label>
			</div>
			<div class="fila">
                <a href= https://plus.google.com/105603936165907342797?hl=es>
				<img src="img/google.png">
                </a>
				<label>Sigueme en Google Plus</label>
			</div>
		</div>
		<div class="colum3">
			<h1>Informacion Contactos</h1>
			<div class="fila2">
				<img src="img/casa.png">
				<label>Churriana, Málaga, Andalucia, España.</label>
				</div>
				<div class="fila2">
				<img src="img/contacto.png">
				<label>+34-653602072</label>
				</div>
				<div class="fila2">
				<img src="img/email.png">
				<label>2smrdavid@gmail.com</label>
				</div>
			</div>
		</div>
</footer>
	</body>
</html>