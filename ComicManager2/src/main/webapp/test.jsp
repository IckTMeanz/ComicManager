<%@page import="model.user"%>
<%@page import="java.awt.Image"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.comic"%>
<%@page import="DAO.comicDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HEHE</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>


</head>
<body>

<div style="background-color: aqua; ">

<div class="container" style="background-color: white">
<div class="container">
<nav class="navbar navbar-expand-lg bg-body-tertiary"  >
  <div class="container-fluid">
    <a class="navbar-brand" href="#" ><img src="image/logo.png" width="80px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Type
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">NTR</a></li>
            <li><a class="dropdown-item" href="#">RomCom</a></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
         <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Rank
          </a>
         
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">top năm</a></li>
            <li><a class="dropdown-item" href="#">top tháng</a></li>
            <li><a class="dropdown-item" href="#">Yêu thích</a></li>
          </ul>
        </li>
        
        <li class="nav-item">
          <a class="nav-link disabled" aria-disabled="true">Disabled</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="history.jsp">History</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active"  href="https://www.google.com.vn">Fanpage</a>
        </li>
        <%
        				//session.removeAttribute("user");
						Object obj = session.getAttribute("user");
						user u = null;
						if (obj!=null)
							u = (user)obj;
						
						if(u==null){
					%>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="logIn.jsp">Log in</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="register.jsp">Sign up</a>
        </li>
        <%}else{%>
        <div class="row text-center" style="margin-left: 0.25em">
							<div class="row"><b><%=u.getName() %></b></div>
							<div class="row"><a style="white-space: nowrap;" href="logOut">
								Đăng xuất
							</a>
							</div>
						</div>
        <%} %>
        
         
      </ul>
      <form class="d-flex" role="search" action="searchByName" method="get">
        <input class="form-control me-2" type="text" placeholder="Search" aria-label="Search" name="search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>


<hr>

<div id="carouselExampleDark" class="carousel carousel-gray slide">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active" data-bs-interval="10000">
      <img src="image/p2.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Top comic</h5>
        <p>This list can be always changed</p>
      </div>
    </div>
    <div class="carousel-item" data-bs-interval="2000">
      <img src="image/p1.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Top comic</h5>
        <p>This list can be always changed</p>
      </div>
    </div>
    <div class="carousel-item">
      <img src="image/p3.jpg" class="d-block w-100" alt="...">
      <div class="carousel-caption d-none d-md-block">
        <h5>Top comic</h5>
        <p>This list can be always changed</p>
      </div>
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


<!-- Chá»©a cÃ¡c card -->

 <div class="container mt-5">
        <div class="row">
            <!-- Card 1 -->
            <div class="col-md-3">
            <a href="ComicInfo?card=0">
                <div class="card">
                    <img src="image/card/c0.jpg" class="card-img-top" alt="Báº¢N TÃNH CA Cá»¦A UTSUMI KUN">
                    <div class="card-body">
                        <h5 class="card-title">Truyện 1</h5>
                        <p class="card-text">C. 1.1 - 7 PHÃT TRÆ¯á»C</p>
                    </div>
                </div>
            </a>
            </div>
            <!-- Card 2 -->
            <div class="col-md-3">
            <a href="ComicInfo?card=1">
                <div class="card">
                    <img src="image/card/c1.jpg" class="card-img-top" alt="Na Kang Lim">
                    <div class="card-body">
                        <h5 class="card-title">Truyện 2</h5>
                        <p class="card-text">C. 55 - 36 PHÃT TRÆ¯á»C</p>
                    </div>
                </div>
            </a>
            
            </div>
            <!-- Card 3 -->
            <div class="col-md-3">
            <%if(0==0){ %>
            <a href="ComicInfo?card=2">
                <div class="card">
                    <img src="image/card/c2.jpg" class="card-img-top" alt="Sakamoto Days">
                    <div class="card-body">
                        <h5 class="card-title">Sakamoto Days</h5>
                        <p class="card-text">C. 167 - 2 GIá» TRÆ¯á»C</p>
                    </div>
                </div>
            </a>
            <%} %>
            </div>
            <!-- Card 4 -->
            <div class="col-md-3">
            <a href="ComicInfo?card=3">
                <div class="card" id="p1">
                    <img src="image/card/c3.jpg" class="card-img-top" alt="Cool na Tsuma no Sa-chan" >
                    <div class="card-body">
                        <h5 class="card-title">Cool na Tsuma no Sa-chan</h5>
                        <p class="card-text">C. 39 - 3 GIá» TRÆ¯á»C</p>
                    </div>
                </div>
             </a>
            </div>
            <!-- ThÃªm cÃ¡c card khÃ¡c theo cÃ¹ng cáº¥u trÃºc -->
        </div>
    </div>
    <hr>
   
  <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" href="pageChanging?page=1" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=1" name="1" >1</a></li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=2" name="2">2</a></li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=3" name="3">3</a></li>
    <li class="page-item">
      <a class="page-link" href="pageChanging?page=3" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>

 
 <div class="card text-center">
  <div class="card-header">
    Featured
  </div>
  <div class="card-body">
    <h5 class="card-title">Special title treatment</h5>
    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
    <a href="https://animehay.bio/" class="btn btn-primary" >Go anime</a>
  </div>
  <div class="card-footer text-body-secondary">
    2 days ago
  </div>
</div>
</div>
</div>

</body>
</html>