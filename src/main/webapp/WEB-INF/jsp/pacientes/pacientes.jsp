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

  <title>Pacientes</title>

  <!-- Custom fonts for this template -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/sb-admin-2.min.css" rel="stylesheet">

  <!-- Custom styles for this page -->
  <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">
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
 <li class="nav-item">
                <a class="nav-link" href="<c:url value="exames"/>">
                    <i class="fas fa-stethoscope"></i>
                    <span>Exames</span>
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<c:url value="medicamentos"/>">
                    <i class="fas fa-capsules"></i>
                    <span>Medicamentos</span>
                </a>
            </li>

  </ul>
  <!-- End of Sidebar -->

  <!-- Content Wrapper -->
  <div id="content-wrapper" class="d-flex flex-column">

    <!-- Main Content -->
    <div id="content">

      <!-- Topbar -->
      <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

        <!-- Topbar Navbar -->
        <ul class="navbar-nav ml-auto">

          <!-- Nav Item - Alerts -->
       

           <!-- Nav Item - Messages -->
           
         <!--  <li class="nav-item dropdown no-arrow mx-1">
            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <i class="fas fa-envelope fa-fw"></i>
              Counter - Messages
              <span class="badge badge-danger badge-counter">7</span>
            </a>
            Dropdown - Messages
            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="messagesDropdown">
              <h6 class="dropdown-header">
                Mensagens
              </h6>
              
              <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
            </div>
          </li>  -->

          

          <!-- Nav Item - User Information -->
        <!--   <li class="nav-item dropdown no-arrow">
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
          <h1 class="h3 mb-2 text-gray-800"></h1>
          <!-- Tabelas dos pacientes -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <h6 class="m-0 font-weight-bold text-primary">Pacientes Acompanhados</h6>
            </div>
            
        
            <div class="card-body">
               	<!-- Search -->
       <!--  <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
          <div class="input-group">
            <input type="text" class="form-control bg-light border-1 small" placeholder="Procurar um paciente" aria-label="Search" aria-describedby="basic-addon2">
            <div class="input-group-append">
              <button class="btn btn-primary" type="button">
                <i class="fas fa-search fa-sm"></i>
              </button>
            </div>
          </div>
        </form> -->
        
              <div class="table-responsive">
                <table id="listaPacientes" class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Código Fidelius</th>
                      <th>Nome</th>
                      <th>Comorbidade</th>
                      <th>Data de Nascimento</th>
                      <th>Prioridade</th>
                      <th>Alcançado</th>
                      <th>Ações</th>
                     
                    </tr>
                  </thead>
                  <!-- <tfoot>
                    <tr>
                      <th>Id Fidelius</th>
                      <th>Nome</th>
                      <th>Comorbidade</th>
                      <th>Data de Nascimento</th>
                      <th>Prioridade</th>
                      
                      <th>Alcançado</th>
                      <th>Ações</th>
                      
                    </tr>
                  </tfoot> -->
                  <tbody>
                  
                   <%--  <tr>
                      <td>1</td>
                      <td>Gustavo</td>
                      <td>Asma</td>
                      <td>19</td>
                     
                      <td>
                      <a href="<c:url value="situacao"/>"><button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-eye"></i></button></a>
                      <a href="<c:url value="editarPaciente"/>"><button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-edit"></i></button></a>
                      </td> 
                    </tr> --%>
                    
                    <c:forEach items="${pacientes}" var="dado">
    					<tr>
        					<td>${dado.getYearMonth()}00${dado.id}</td>
        					<td>${dado.nome}</td>
        					<td>${dado.comorbidade}</td>
        					<td>${dado.dataNascimento}</td>
        					<td>${dado.getPlanoAtuacao().prioridade}</td>
        					<td>${dado.alcançado}</td>
        					
        					 <td>
                      
                      <a href="<c:url value='situacao'>
                <c:param name='id' value='${dado.id}'/>
            </c:url>">
            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-eye"></i>
            </button>
            </a>
                  <a href="<c:url value='exame'>
                <c:param name='id' value='${dado.id}'/>
            </c:url>">
            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-stethoscope"></i>
            </button>
            </a>
            <a href="<c:url value='medicamento'>
                <c:param name='id' value='${dado.id}'/>
            </c:url>">
            <button class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i class="fas fa-capsules"></i>
            </button>
            </a>
                      <a href="<c:url value='pacientes/deletarpaciente'>
                <c:param name='id' value='${dado.id}'/>
            </c:url>">
                      	<button class="d-none d-sm-inline-block btn btn-sm btn-danger shadow-sm"><i class="fas fa-trash"></i>
                     	</button>
                      </a>
                      
                      </td> 
        					<!-- Outras colunas, se aplicável -->
    					</tr>
					</c:forEach>
                            
                  </tbody>
                </table>
              </div>
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
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Deseja sair?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true"></span>
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

  <!-- Page level plugins -->
  <script src="vendor/datatables/jquery.dataTables.min.js"></script>
  <script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="js/demo/datatables-demo.js"></script>
    

</body>

</html>
