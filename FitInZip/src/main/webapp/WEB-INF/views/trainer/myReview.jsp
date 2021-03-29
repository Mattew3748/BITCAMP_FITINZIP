<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>FITIN.ZIP Mainpage</title>

    <!-- Custom fonts for this template-->
    <link href="../resources/trainer/trainermainvendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../resources/trainer/css/TrainerMain-sb-admin-2.min.css" rel="stylesheet">

<style>
.css-uf2l3s-review {
    padding-bottom: 2.4rem;
}

.MuiGrid-spacing-xs-2 {
    width: calc(100% + 16px);
    margin: -8px;
}

.MuiGrid-wrap-xs-nowrap {
    flex-wrap: nowrap;

.MuiGrid-direction-xs-column {
    flex-direction: column;
}

.MuiGrid-container {
  /*   width: 100%; */
    display: flex;
    /* flex-wrap: wrap; */
    box-sizing: border-box;
}

*, *::before, *::after {
    /* box-sizing: inherit; */
}

div {
    /* display: block; */
}

body {
    color: rgba(0, 0, 0, 0.87);
    margin: 0;
    font-size: 1.2687499999999998rem;
    font-family: Noto Sans KR,Apple SD Gothic Neo,Sans-serif;
    font-weight: 400;
    line-height: 1.43;
    background-color: #fafafa;
}

html {
    /* font-family: "Noto Sans KR", "Apple SD Gothic Neo", Sans-serif; */
    cursor: default;
    /* font-size: 10px !important; */
}

html {
    box-sizing: border-box;
    -webkit-font-smoothing: antialiased;
    /* -moz-osx-font-smoothing: grayscale; */
}

*, *::before, *::after {
    box-sizing: inherit;
}

.MuiGrid-spacing-xs-2 > .MuiGrid-item {
    padding: 8px;
}
.MuiGrid-item {
     margin: 0; 
    box-sizing: border-box;
}

.MuiGrid-container {
     width: 100%; 
    display: flex;
    flex-wrap: wrap;
     box-sizing: border-box; 
    }
.css-1iv07fo-avatar-avatar-ReviewCard-ReviewCard-avatar-ReviewCard {
    min-width: 4rem;
    min-height: 4rem;
    color: rgb(255, 255, 255);
    background-color: rgb(211, 47, 47);
    width: 4rem;
    height: 4rem;
    font-size: 2rem;
}

.MuiAvatar-colorDefault {
    color: #fafafa;
    background-color: #bdbdbd;
}

.MuiAvatar-root {
    width: 40px;
    height: 40px;
    display: flex;
    overflow: hidden;
    position: relative;
    /* font-size: 1.8125rem; */
    align-items: center;
    flex-shrink: 0;
    font-family: Noto Sans KR,Apple SD Gothic Neo,Sans-serif;
    line-height: 1;
    user-select: none;
    border-radius: 50%;
    justify-content: center;
}    

 .MuiAvatar-img {
  color: transparent;
  width: 100%;
  height: 100%;
  object-fit: cover;
  text-align: center;
  text-indent: 10000px;
} 

</style>


</head>

<body id="page-top">
	
    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="/trainerMainPage">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">FITIN.ZIP TRAINER </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">


            <!-- Heading -->
            <div class="sidebar-heading">
                	
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fas fa-fw fa-cog"></i>
                    <span>클래스 관리</span>
                </a>
               
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                
                        <a class="collapse-item" href="/myClass">나의 클래스</a>
                        <a class="collapse-item" href="cards.html">클래스 신청현황</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fas fa-fw fa-wrench"></i>
                    <span>정산내역</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                       
                        <a class="collapse-item" href="/myCalculation">건별 정산내역</a>
                        <a class="collapse-item" href="/myWithdraw">정산금액 인출하기</a>
          
                    </div>
                </div>
            </li>
            
           
            
            <li class="nav-item">
                <a class="nav-link" href="/changeInfo">
                    <i class="fas fa-fw fa-chart-area"></i>
                    <span>프로필 수정</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item">
                <a class="nav-link" href="myReview">
                    <i class="fas fa-fw fa-table"></i>
                    <span>내 후기 보기</span></a>
            </li>
            
            

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

           
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

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">${member.name } 강사님</span>
                                <img class="img-profile rounded-circle"
                                    src="../resources/trainer/img/profile2_trainer.png">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                
                                <!-- <div class="dropdown-divider"></div> -->
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                   <!-- Page Heading -->
                    <h1 class="h3 mb-4 text-gray-800">내 후기 보기</h1>
                    
                    <div>
                    	<c:if test="${empty reviewList }">
                    		<div>
                    		 <p>데이터가 없습니다.</p>
                    		</div>
                    	</c:if>
                    	<c:if test="${not empty reviewList }">
                    	<hr>
                    		<c:forEach var="review" items="${reviewList }">
                    		<div class="css-1urjkj8-root">
							    <div class="MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-3 MuiGrid-direction-xs-column MuiGrid-wrap-xs-nowrap">
							        <!-- <div class="MuiGrid-root MuiGrid-item">
							            <div class="MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-1 MuiGrid-align-items-xs-center">
							                <div class="MuiGrid-root MuiGrid-item"><svg xmlns="http://www.w3.org/2000/svg" width="10" height="10">
							                        <path d="M9.984 3.792a.35.35 0 00-.282-.243l-3.026-.463L5.307.2c-.06-.122-.18-.2-.312-.2s-.252.078-.312.201l-1.36 2.88-3.025.463a.352.352 0 00-.281.248.375.375 0 00.09.373l2.197 2.241-.519 3.168a.37.37 0 00.14.355c.107.083.25.094.368.03l2.702-1.496L7.71 9.956c.118.065.26.053.367-.03a.369.369 0 00.14-.355l-.52-3.167 2.198-2.241a.378.378 0 00.089-.37z" fill="#FC5E5E" fill-rule="nonzero"></path>
							                    </svg></div>
							
							            </div>
							        </div> -->
							        <div class="MuiGrid-root MuiGrid-item">
							            <div class="MuiGrid-root css-uf2l3s-review MuiGrid-container MuiGrid-spacing-xs-2 MuiGrid-direction-xs-column MuiGrid-wrap-xs-nowrap">
							                <div class="MuiGrid-root MuiGrid-container MuiGrid-spacing-xs-2 MuiGrid-item">
							                    <div class="MuiGrid-root MuiGrid-item MuiAvatar-root">
							                        <img src="https://d2f44qya6fghrh.cloudfront.net/user/524/profile.jpg?etag=kixuktsv" class="MuiAvatar-img" style="border-radius: 50%; width:40px; height:40px;">${review.memOriName }
							                    </div>
							                    <div class="MuiGrid-root css-r0bh7x-shortInformation MuiGrid-item">
							                        <p class="MuiTypography-root css-9f72dd-caption-caption-medium MuiTypography-body1">${review.name }</p>
							                        <p class="MuiTypography-root css-62lz7s-caption-caption-defaultWeight-dateText-dateText MuiTypography-body1">${review.regDate }</p>
							                    </div>
							                </div>
							                <div>
							                	<p>${review.clsName }</p>
							                </div>
							                <div class="MuiGrid-root MuiGrid-item">
							                    <p class="MuiTypography-root css-c2srae-smallBody-smallBody-defaultWeight-comment MuiTypography-body1">${review.reviewContent }</p>
							                </div>
							            </div>
							
							            <div class="css-1f05pov-Divider-Divider-divider"></div>
							
							        </div>
							
							    </div>
							    
							
							
								<!-- ​<div class="table_basic_list list3 review_wrap"> -->
								  <%--   <ul>
								        <li>
								            <div class="leftbox">
								                <div class="review_nm">
								                    <div class="login_thum middle">
								                        <span>
								                            <img src="https://ficle-live.s3.ap-northeast-2.amazonaws.com/origin/user/2021-03-14/1615694036134572348.jpg"
								                            style="height:50px; width:50px;" >
								                        </span>
								                    </div> 
								                    <span class="middle">${review.name }</span>
								                    <div class="star_group small ml5">
								                        <span class="on">1</span>
								                        <span class="on">2</span>
								                        <span class="on">3</span>
								                        <span class="on">4</span><span class="on">5</span>
								                        <p>별점: ${review.star }</p>
								                    </div>
								                    <div>
								                        <p> ${review.clsName} </p>
								                    </div>
								                    <div>
								                        <p> ${review.regDate}</p>
								                    </div>
								                </div>
								                <div class="review_txt">${review.reviewContent }
								                    <!---->
								                </div>
								            </div>
								            
								        </li>
								    </ul> --%>
								</div>
								<hr>
                    		</c:forEach>
                    	</c:if>
                    </div>
                   
				
					
                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; Your Website 2020</span>
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
                    <h5 class="modal-title" id="exampleModalLabel">로그아웃 하시겠습니까?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">로그아웃 버튼을 누르시면 메인 페이지로 되돌아갑니다.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="/logout">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="../resources/trainer/trainermainvendor/jquery/jquery.min.js"></script>
    <script src="../resources/trainer/trainermainvendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/trainer/trainermainvendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
   <!--  <script src="js/sb-admin-2.min.js"></script> -->

    <!-- Page level plugins -->
    <!-- <script src="resources/vendor/chart.js/Chart.min.js"></script> -->

    <!-- Page level custom scripts -->
  <!--   <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script> -->

</body>

</html>