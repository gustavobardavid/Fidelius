<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.text.SimpleDateFormat"%>

<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html lang="pt-br">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Fidelius - Visão Geral</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">
  <link rel="stylesheet" href="css/print-dashboard.css">
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

      <!-- Nav Item - Dashboard -->
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

          <!-- Topbar Search -->
         

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            

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
          <div class="d-sm-flex align-items-center justify-content-between mb-4 no-print">
            <h1 class="h3 mb-0 text-gray-800">Estado de Situação </h1>
            <button onclick="window.print(); ocultarBotaoEditar();" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-download fa-sm text-white-50"></i> Gerar Relatório</button>
          </div>

          <div class="d-sm-flex align-items-center justify-content-center mb-4 only-print">
            <h1 class="h3 mb-0 text-gray-800">Estado de Situação</h1>
          </div>

          <!-- Content Row -->
          <div class="row">

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Básico</div>
                      <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead  class="thead-dark">
                    <tr>
                      
                      <th>Nome</th>
                      
                     
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>
                     
                      <td><c:out value="${paciente.nome}" /></td>
                     
                     
                    </tr>               
                  </tbody>
                  
                </table>
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead  class="thead-dark">
                    <tr>
                      
                      <th>Telefone</th>
                     
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>
                     
                      <td><c:out value="${paciente.numeroTelefone}" /></td>
                     
                    </tr>               
                  </tbody>
                  
                </table>
                
              </div>
             
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Problemas de Saúde</div>
                          
                           <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead  class="thead-dark">
                    <tr>
                      
                      <th>Comorbidade</th>
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>
                     
                      <td><c:out value="${paciente.comorbidade}" /></td>
                      
                    </tr>               
                  </tbody>
                  
                </table>
                    <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead  class="thead-dark">
                    <tr>
                 
                      <th>Preocupa?</th>
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>
                    
                      <td><c:out value="${paciente.preocupa}" /></td>
                      
                    </tr>               
                  </tbody>
                  
                </table>
              </div>
              <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Preocupa: Pouco(P); Bastante(B)</div>
                    </div>
                   
                  </div>
                </div>
              </div>
            </div>

            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Medicamentos</div>
                           <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead class="thead-dark" >
                    <tr>
                      
                      <th>Qual?</th>
                      
                     
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>
                     
                      <td><c:out value="${paciente.medicamento}" /></td>
                      
                    </tr>               
                  </tbody>
                  
                </table>
                  <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead class="thead-dark" >
                    <tr>
                    
                      <th>Desde?</th>
                     
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>
                    
                      <td><c:out value="${paciente.getUpdatedFormated()}" /></td>
                      
                    </tr>               
                  </tbody>
                  
                </table>
              </div>
                    </div>
                   
                  </div>
                </div>
              </div>
            </div>
			            <!-- Earnings (Monthly) Card Example -->
            <div class="col-xl-3 col-md-6 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                    <div class="text-xs font-weight-bold text-success text-uppercase mb-1">Visão</div>
                          
                           <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead  class="thead-dark">
                    <tr>
                      
                      <th>Última Atualização</th>
                     
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>

                      <td><c:out value="${paciente.getUpdatedFormated()}" /></td>
                      
                    </tr>               
                  </tbody>
                  
                </table>
                 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead  class="thead-dark">
                    <tr>
                      
                     
                      <th>Endereço</th>
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>

                     
                      <td><c:out value="${paciente.endereco}" /></td>
                    
                    </tr>               
                  </tbody>
                  
                </table>
                
              </div>
                    </div>
                   
                  </div>
                </div>
              </div>
            </div>
	
          </div>

          <!-- Content Row -->

          <div class="row">

              <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800 text-center"></h1>
          <div class="row">
            <div class="col-12">

              <!-- Inicio do Card -->
                         
              <div class="card shadow mb-4 card-novaaposta mx-auto">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary text-center">Plano de Atuação</h6>
                </div>
                
                <div class="card-body">

                <div class="card-footer text-center">
                
                  
                           <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead class="thead-dark">
                    <tr>
                      
                      <th>Objetivos</th>
                      <th>Data de Inicio</th>
                      <th>Prioridade</th>
                      <th>Alcançado</th>
                     
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>
                     
                      <td> <c:out value="${paciente.objetivo}" />
                       </td>
                       
                      <td>
                      <c:out value="${paciente.getCreatedFormated()}" />
                       </td>
                       
                      <td><c:out value="${paciente.prioridade}" />
                       </td>
                      
                      <td> <c:out value="${paciente.alcançado}" />
                      
                       </td>
                      
                    </tr>               
                  </tbody>
                  
                </table>
                 <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary text-center">Observações Médicas</h6>
                </div>
                <hr>
                 <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead class="thead-dark">
                    <tr>
                      
                      <th>Observações Médicas</th>
                      <th>Histórico Médico</th>
                      <th>Alergias</th>
                      <th>Grupo Sanguíneo</th>
                      
                    </tr>
                  </thead>
               
                  <tbody>
                    <tr>
                     
                      <td> <c:out value="${paciente.observacoesMedicas}" />
                       </td>
                       
                      <td>
                      <c:out value="${paciente.historicoMedico}" />
                       </td>
                       
                      <td><c:out value="${paciente.alergias}" />
                       </td>
                      
                   <td><c:out value="${paciente.grupoSanguineo}" />
                       </td>
                      
                      
                    </tr>               
                  </tbody>
                  
                </table>
              </div>
                       <hr>
                         
                  <a href="<c:url value='editarPaciente'>
                <c:param name='id' value='${paciente.id}'/>
            </c:url>" type="button" class="btn btn-primary btn-icon-split btn-lg mt-3 mb-3" id="editarButton">
                    
                    <span class="icon text-white-50">
                      <i class="fas fa-edit"></i>
                    </span>
                   
                    <span class="text">Editar</span>
                   
                  </a>
                
                  
                </div>
                </div>
              </div>
              
              <!-- / Fim do Card-->

            </div>
          </div>

        </div>
           
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white no-print">
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
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Deseja realmente Sair?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">Ã</span>
          </button>
        </div>
        
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

  <!-- Page level plugins -->
  <script src="vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/chart-area-demo.js"></script>
  <script src="js/demo/chart-pie-demo.js"></script>
  <script>
function ocultarBotaoEditar() {
    // Oculta o botão "Editar" quando o botão de impressão "Gerar Relatório" for clicado
    document.querySelector("#editarButton").style.display = 'none';
}
</script>
  

</body>

</html>
