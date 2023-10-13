<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,300,400,600,700,800,900&display=swap" rel="stylesheet">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
    <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>
<body id="page-top">
    <div id="wrapper">
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion no-print" id="accordionSidebar">
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="home"/>">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-heart"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Fidelius</div>
            </a>
            <hr class="sidebar-divider my-0">
            <li class="nav-item active">
                <a class="nav-link" href="<c:url value="suporte"/>">
                    <span>Suporte</span>
                </a>
            </li>
            <hr class="sidebar-divider">
            <div class="sidebar-heading">Menu Principal</div>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="cadastrarPaciente"/>">
                    <i class="fas fa-plus"></i>
                    <span>Cadastrar Novo Paciente</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="pacientes"/>">
                    <i class="fas fa-user"></i>
                    <span>Pacientes</span>
                </a>
            </li>
        </ul>
        <div id="content-wrapper" class="d-flex flex-column">
            <div id="content">
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">
                    <ul class="navbar-nav ml-auto">
                       <!--  <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Você</span>
                            </a>
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Perfil
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Sair
                                </a>
                            </div>
                        </li> -->
                    </ul>
                </nav>
                
                <!-- inicio do conteudo da pagina -->
                <form method="post" action="<c:url value='suporte/enviar'/>" class="form-inline" accept-charset="UTF-8">
                            <!-- Inicio do Card -->
                         
              <div class="card shadow mb-4 card-novaaposta mx-auto">
                
                
                <div class="card-body">

                       		
               <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary text-center">Envie-nos um ticket de suporte</h6>
                </div>
                <div class="card-footer text-center">
                
                  <div class="input-group">
                            <input name="paciente.grupoSanguineo" type="text" class="form-control" placeholder="Seu nome">
                       		<input name="paciente.numeroTelefone" type="email" class="form-control" placeholder="Seu e-mail" required>	
                       </div>
                       <hr>
                       <div class="input-group">
                       <input name="paciente.numeroTelefone" type="text" class="form-control" placeholder="Descreva o problema que está enfrentando" required>	
                       
                            </div>
                        <hr>
                         
                  <button type="submit" class="btn btn-primary btn-icon-split btn-lg mt-3 mb-3">
                    
                    <span class="icon text-white-50">
                      <i class="fas fa-envelope"></i>
                    </span>
                   
                    <span class="text">Enviar</span>
                   
                  </button>
            
                  
                </div>
                </div>
              </div>
              </form>
                
                <!-- fim do conteudo da pagina -->
            </div>
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Bardavid Soluções 2023</span>
                    </div>
                </div>
            </footer>
        </div>
    </div>
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Deseja sair?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">Certifique-se de salvar suas alterações</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancelar</button>
                    <a class="btn btn-primary" href="login.html">Sair</a>
                </div>
            </div>
        </div>
    </div>
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/sb-admin-2.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.min.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>
    <script src="js/demo/datatables-demo.js"></script>
</body>
</html>
