<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700&display=swap" rel="stylesheet">
    <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    <link href="css/Register.css" rel="stylesheet">

    <title>Register</title>
  </head>
  <body><%--Modificado por Sebastian--%>
   <section class="contact-box">
       <div class="row no-gutters bg-dark">
           <div class="col-xl-5 col-lg-12 register-bg">
            <div class="position-absolute testiomonial p-4">
            </div>
           </div>
           <div class="col-xl-7 col-lg-12 d-flex">
                <div class="container align-self-center p-6">
                    <h1 class="font-weight-bold mb-3">Crea tu cuenta gratis</h1>

                    <p class="text-muted mb-5">Ingresa la siguiente informaci�n para registrarte.</p>

                    <form action="Register.jsp" method="POST">
                        <div class="form-row mb-2">
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">Nombre <span class="text-danger">*</span></label>
                                <input name="txtNombre" type="text" class="form-control" placeholder="Tu nombre">
                            </div>
                            <div class="form-group col-md-6">
                                <label class="font-weight-bold">Apellido <span class="text-danger">*</span></label>
                                <input name="txtApellido" type="text" class="form-control" placeholder="Tu apellido">
                            </div>
                        </div>
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Email <span class="text-danger">*</span></label>
                            <input name="txtEmail" type="text" class="form-control" placeholder="Ingresa tu dni">
                        </div>
                        <div class="form-group mb-3">
                            <label class="font-weight-bold">Contrase�a <span class="text-danger">*</span></label>
                            <input name="txtPassword" type="password" class="form-control" placeholder="Ingresa una contrase�a">
                        </div>
           
                        <input type="submit" name="button1" class="btn btn-primary width-100" value="Registrarme" /><%--Modificado por Eric--%>
                        <a href="Login.jsp" type="submit" class="">Volver</a> <%--Modificado por Helbert--%>

                    </form>
                </div>
           </div>
       </div>
   </section>

  </body>
</html>