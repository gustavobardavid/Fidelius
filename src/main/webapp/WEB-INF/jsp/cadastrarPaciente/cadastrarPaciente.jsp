<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>



<!DOCTYPE html>
<html lang="pt-br">

<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Área de Cadastro de Novo Paciente</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link
    href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
    rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">
</head>

<body id="page-top">

  

        <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion no-print" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="<c:url value="home"/>">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-heart"></i>

        </div>
        <div class="sidebar-brand-text mx-3">Fidelius</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Suporte -->
      <li class="nav-item active">
        <a class="nav-link" href="<c:url value="suporte"/>">
    
          <span>Suporte</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Menu Principal
      </div>

      <!-- Nav Item - Charts -->
       <li class="nav-item">
        <a class="nav-link" href="<c:url value="cadastrarPaciente"/>">
          
		<i class="fas fa-plus"></i>
        
          <span>Cadastrar Novo Paciente</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<c:url value="pacientes"/>">
          <i class="fas fa-user"></i>

          <span>Pacientes</span></a>
      </li>

     
    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

      

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">


            <!-- Nav Item - Alerts -->
          

            <!-- Nav Item - Messages -->
          
            <!-- Nav Item - User Information -->
            <!-- <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Você</span>
                <img class="img-profile rounded-circle" src="">
              </a>
              Dropdown - User Information
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
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800 text-center"></h1>
          <div class="row">
            <div class="col-12">

              <!-- Inicio do Card -->
                         
              <div class="card shadow mb-4 card-novaaposta mx-auto">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary text-center">Cadastre um novo Paciente</h6>
                </div>
               	
               			<c:if test="${not empty errors}">
				<div class="alert alert-danger" role="alert">
					<c:forEach var="error" items="${errors}">
						 ${error.message}<br/>
					</c:forEach>
				</div>
			</c:if>
                  
              
               
              </div>
              
              <!-- / Fim do Card-->
              
                <form method="post" action="<c:url value='cadastrarPaciente/salvarpaciente'/>" class="form-inline" accept-charset="UTF-8">
                            <!-- Inicio do Card -->
                         
              <div class="card shadow mb-4 card-novaaposta mx-auto">
                
                
                <div class="card-body">

                       		
               <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary text-center">Dados do Paciente</h6>
                </div>
                <div class="card-footer text-center">
                
                  <div class="input-group">
                            <input name="paciente.nome" type="text" class="form-control" placeholder="*Nome" required>	
                            <input name="paciente.comorbidade" type="text" class="form-control" placeholder="*Comorbidade" required>
                            <input name="paciente.grupoSanguineo" type="text" class="form-control" placeholder="Grupo Sanguíneo">
                       </div>
                       <hr>
                       <div class="input-group">
                       		<input name="paciente.dataNascimento" type="text" class="form-control" placeholder="Data de Nascimento">
                            
                            <input name="paciente.endereco" type="text" class="form-control" placeholder="Endereço">
                            <input name="paciente.numeroTelefone" type="text" class="form-control" placeholder="*Telefone" required>	
                            </div>
                        <hr>
                   <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary text-center">Plano de Atuação</h6>
                </div>
                   
                           <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead class="thead-dark">
                    <tr>
                    
                      <th>Objetivos</th>
                      <th>Prioridade</th>
                      <th>Preocupa?</th>
                      <th>Medicamento</th>
                    
                    </tr>
                  </thead>
               
                  <tbody>
                  <tr>
              
                      <td> 
                      <div class="input-group">
                      
                            <input name="paciente.objetivo" type="text" class="form-control" placeholder="Descrição">
                         
                       </div>
                       </td>
                       
                      <td>
                      <div class="input-group">
                      
                            <input name="paciente.prioridade" type="Text" class="form-control" placeholder="Alta ou Baixa">
                         
                       </div>
                       </td>
                       
                       <td>
                        <div class="input-group">
                            	
                            <input name="paciente.preocupa" type="text" class="form-control" placeholder="Preocupa?">
                        	
                        	</div>
                    		<div class="text-xs font-weight-bold text-success text-uppercase mb-1">Preocupa: Pouco(P); Bastante(B)</div>
                     
                       </td>
                       
                        <td>
                      <div class="input-group">
                      
                          <input name="paciente.medicamento" type="text" class="form-control" placeholder="Ex: Aerodini">
                         
                       </div>
                       </td>
                                
                  </tr>
                  </tbody>
                </table>
                
                  <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary text-center">Observações Médicas</h6>
                </div>
                <hr>
                  <div class="input-group">
                       
                            <input name="paciente.observacoesMedicas" type="text" class="form-control" placeholder="Observações">	
                            <input name="paciente.historicoMedico" type="text" class="form-control" placeholder="Histórico Médico">
                            <input name="paciente.alergias" type="text" class="form-control" placeholder="Alergias">
                            </div>
              </div>
                       <hr>
                         
                  <button type="submit" class="btn btn-primary btn-icon-split btn-lg mt-3 mb-3">
                    
                    <span class="icon text-white-50">
                      <i class="fas fa-check"></i>
                    </span>
                   
                    <span class="text">Salvar</span>
                   
                  </button>
            
                  
                </div>
              <span class="group-text">O símbolo * sinaliza um campo obrigatório</span>
                </div>
              </div>
              </form>

            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Bardavid Soluções 2023</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
    aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Deseja sair?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true"></span>
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

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="js/sb-admin-2.min.js"></script>

</body>

</html>