<%---------------------------                Inicio por ERICK                       -----------------------%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.util.*"%>
<%@page import ="Modelo.BoletaVenta"%>
<%@page import ="ModeloDAO.BoletaVentaDAO"%>


<!DOCTYPE html>
<html lang="en">
  <head> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LADITEC</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="robots" content="all,follow">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <!-- Choices.js-->
    <!-- Google fonts - Muli-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="css/header.css" id="theme-stylesheet"> 
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="css/agregar.css"> <!-- para agregar -->
     <!-- Font Awesome -->
     <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css' rel='stylesheet'>
  </head>
  <body>
    <%@ include file="../header/header.jsp"%>

          <nav id="sidebar">
        <!-- Sidebar Header-->
        <div class="sidebar-header d-flex align-items-center p-4"><img class="avatar shadow-0 img-fluid rounded-circle" src="img/avatar-6.jpg" alt="...">
          <div class="ms-3 title">
            <h1 class="h5 mb-1">Helbert Condori</h1>
            <p class="text-sm text-gray-700 mb-0 lh-1">Programador</p>
          </div>
        </div><span class="text-uppercase text-gray-600 text-xs mx-3 px-2 heading mb-2">Main</span>
        <ul class="list-unstyled">
              <li class="sidebar-item"><a class="sidebar-link" href="index.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#real-estate-1"> </use>
                      </svg><span>Home </span></a>
              </li>
              <li class="sidebar-item active"><a class="sidebar-link" href="cruds.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#portfolio-grid-1"> </use>
                      </svg><span>Tables </span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="charts.jsp"> 
                      <svg class="svg-icon svg-icon-sm svg-icon-heavy">
                        <use xlink:href="#sales-up-1"> </use>
                      </svg><span>Graficas </span></a>
              </li>
              <li class="sidebar-item"><a class="sidebar-link" href="login.jsp"> 
                  <i class="svg-icon svg-icon-sm svg-icon-heavy fa fa-globe"></i><span>Web Page</span></a>
              </li>
      </nav>
<!------------------------------------------------- INICIO CONTENIDO ------------------------------------------------------------->
      
      <div class="page-content form-page">
            <!-- Page Header-->            
            <!-- Breadcrumb-->
            <div class="page-content form-page">
              <!-- Page Header-->            
              <!-- Breadcrumb-->
              <div class="container-fluid py-2">
                
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb mb-0 py-3 px-0">
                    <li class="breadcrumb-item"><a href="Controlador?accion=ListarBoletaVenta">Tablas</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Pedidos</li>
                  </ol>
                </nav>
              </div>
          <section class="tables py-0">
            <div class="container-fluid">
                <div class="col-lg-12">
                  <div class="card mb-0">
                    <div class="card-header">
                      <h2 class="h2 mb-0 text-center">Editar Boleta Venta</h2>
                    </div>
                    <div class="card-body pt-0">
                      <!--  -->
                      <% 
            
            BoletaVentaDAO daobol= new BoletaVentaDAO();
            BoletaVenta bol=new BoletaVenta();
            
            bol=daobol.list(Integer.parseInt((String)request.getAttribute("nroboleta")),(String)(request.getAttribute("serieboleta")));
            
                      %>
                      <form action="Controlador" class="form-horizontal">
                                       
                        <div class="row">
                          <label class="col-sm-3 form-label">Numero de Boleta</label>
                          <div class="col-sm-9">
                              <input class="form-control" type="number" min="0" value="<%=bol.getNroboleta()%>"  name="txNroboleta" required >
                          </div>
                        </div>
                            
                        <!--  -->
                        <div class="my-4"></div>
                        
                        <div class="row">
                          <label class="col-sm-3 form-label">Serie de Boleta</label>
                          <div class="col-sm-9">
                              <input class="form-control" type="text" value="<%=bol.getSerieboleta()%>"  name="txtSerieboleta" required >
                          </div>
                        </div>
                            
                        <!--  -->
                        <div class="my-4"></div>
                        <!--  -->
                        <div class="row">
                          <label class="col-sm-3 form-label">FkIdPedido</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="number" min="1" value="<%=bol.getFkidpedido()%>"  name="txtFkidpedido" required>
                          </div>
                        </div>     
                          
                        <div class="my-4"></div>
                        
                        <div class="row">
                          <label class="col-sm-3 form-label">Fecha de Emision</label>
                          <div class="col-sm-9">
                            <div class="input-group">
                              <input class="form form-control" type="date" value="<%=bol.getFechaemision()%>" name="txtFechaemision" required>
                            </div>                          
                          </div>
                        </div> 
                             <div class="my-4"></div>
                        <!--  -->
                        <div class="row">
                          <label class="col-sm-3 form-label">Total</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="number"  step="any"  value="<%=bol.getTotal()%>"  name="txtTotal" required>
                          </div>
                        </div> 
                           <div class="my-4"></div>
                        <!--  -->
                        <div class="row">
                          <label class="col-sm-3 form-label">Impuesto</label>
                          <div class="col-sm-9">
                            <input class="form-control" type="number" step="any" value="<%=bol.getImpuesto()%>"  name="txtImpuesto" required>
                          </div>
                        </div> 
                        <input type="hidden" name="accion" value="EditarBoletaVenta">
                       
                         <!--  -->                
                        <div class="container-fluid py-2">
                          <div class="modal-footer">
                            <a href="Controlador?accion=ListarBoletaVenta" class="btn btn-secondary" >Regresar</a>
                            <input class="btn btn-primary" type="submit" name="EditarBoletaVentaDB" value="EditarBoletaVentaDB">
                          </div>
                        </div>
                        <!--  -->
                        </form>     
                     
                    </div>
                  </div>
              </div>
            </div>
          </section>
        </div>      
    </div>
    <!-- Main File-->
    <script src="js/front.js"></script>
  </body>
</html>

<%---------------------------                Fin por ERICK                       -----------------------%>
