<%@page import="javax.print.attribute.standard.NumberOfInterveningJobs"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="model.comic"%>
<%@page import="DAO.comicDAO"%>
<%@page import="java.awt.Image"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nettrom</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</head>
<body>
<%
	String mpfs=session.getAttribute("numpageforSearch")+"";
	int numpageforSearch=Integer.parseInt(mpfs);
	ArrayList<comic> list=(ArrayList<comic>)session.getAttribute("list");
	ArrayList<String> listImg= new ArrayList<>();
	String url="";
	for(int i=(numpageforSearch-1)*42; i<numpageforSearch*42; i++){
		try{
		url="image/card/c"+list.get(i).getComic_id()+".jpg";
		
		}catch(Exception e){
			e.printStackTrace();
		}
		listImg.add(url);
	}
		
	
	
%>
<div class="container">
<nav class="navbar navbar-expand-lg bg-body-tertiary " >
  <div class="container-fluid">
    <a class="navbar-brand" href="#" ><img src="image/logo.png" width="80px"></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="test.jsp">Home</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Type
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Comedy</a></li>
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
            <li><a class="dropdown-item" href="#">yêu thích</a></li>
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
      </ul>
      <form class="d-flex" role="search" action="searchByName" method="get">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

<br>
<h1><%=list.size() %></h1>
<div class="row"><!-- Hàng 0 -->
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42).getComic_id()%>">
            <div class="card">
                <img src="<%=listImg.get(0)%>" class="card-img-top" alt="<%=listImg.get(0)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=list.get((numpageforSearch-1)*42).getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
        </a>
        <%}catch(Exception e){
        	e.printStackTrace();
        } %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+1).getComic_id()%>">
            <div class="card">
                <img src="<%=listImg.get(1)%>" class="card-img-top" alt="<%=listImg.get(1)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=list.get((numpageforSearch-1)*42+1).getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
        </a>
        <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
    	<%try{ %>
        <a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+2).getComic_id()%>">
            <div class="card">
                <img src="<%=listImg.get(2)%>" class="card-img-top" alt="<%=listImg.get(2)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=list.get((numpageforSearch-1)*42+2).getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
        </a>
        <%}catch(Exception e){
        	e.printStackTrace();}%>
        
     
        
        </div>
        <div class="col-2">
     <%try{ %>
        <a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+3).getComic_id()%>">
            <div class="card">
                <img src="<%=listImg.get(3)%>" class="card-img-top" alt="<%=listImg.get(3)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=list.get((numpageforSearch-1)*42+3).getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
        </a>
        <%}catch(Exception e){
        	e.printStackTrace();}%>
        </div >
        <div class="col-2">	
        	<%try{ %>
        <a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+4).getComic_id()%>">
            <div class="card">
                <img src="<%=listImg.get(4)%>" class="card-img-top" alt="<%=listImg.get(4)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=list.get((numpageforSearch-1)*42+4).getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
        </a>
        <%}catch(Exception e){
        	e.printStackTrace();}%>
        
        </div>
        <div class="col-2">
     <%try{ %>
        <a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+5).getComic_id()%>">
            <div class="card">
                <img src="<%=listImg.get(5)%>" class="card-img-top" alt="<%=listImg.get(5)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=list.get((numpageforSearch-1)*42+5).getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
        </a>
        <%}catch(Exception e){
        	e.printStackTrace();}%>
           </div>
	</div> <!-- Het hang 1 --> 
	<div class="row mt-4"><!-- Hàng 1 --> 

	<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+6).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(6)%>" class="card-img-top" alt="<%=listImg.get(6)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+6).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace(); 

} %> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+7).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(7)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+7).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){e.printStackTrace();} %> 

</div> 

<div class="col-2"> 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+8).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(8)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+8).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+9).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(9)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+9).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div>	 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+10).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(10)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+10).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+11).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(11)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+11).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

</div> <!-- Het hang 0 --> 

<div class="row mt-4"><!-- Hàng 0 --> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+12).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(12)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+12).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace(); 

} %> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+13).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(13)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+13).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){e.printStackTrace();} %> 

</div> 

<div class="col-2"> 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+14).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(14)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+14).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+15).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(15)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+15).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div > 

<div>	 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+16).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(16)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+16).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+17).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(17)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+17).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

</div> <!-- Het hang 0 --> 

<div class="row mt-4"><!-- Hàng 0 --> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+18).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(18)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+18).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace(); 

} %> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+19).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(19)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+19).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){e.printStackTrace();} %> 

</div> 

<div class="col-2"> 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+20).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(20)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+20).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+21).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(21)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+21).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div > 

<div>	 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+22).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(22)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+22).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+23).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(23)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+23).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

</div> <!-- Het hang 0 --> 

<div class="row mt-4"><!-- Hàng 0 --> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+24).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(24)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+24).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace(); 

} %> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+25).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(25)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+25).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){e.printStackTrace();} %> 

</div> 

<div class="col-2"> 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+26).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(26)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+26).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+27).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(27)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+27).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div>	 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+28).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(28)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+28).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+29).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(29)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+29).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

</div> <!-- Het hang 0 --> 

<div class="row mt-4"><!-- Hàng 0 --> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+30).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(30)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+30).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace(); 

} %> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+31).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(31)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+31).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){e.printStackTrace();} %> 

</div> 

<div class="col-2"> 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+32).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(32)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+32).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+33).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(33)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+33).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div>	 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+34).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(34)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+34).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+35).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(35)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+35).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

</div> <!-- Het hang 0 --> 

<div class="row mt-4"><!-- Hàng 0 --> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+36).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(36)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+36).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace(); 

} %> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+37).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(37)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+37).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){e.printStackTrace();} %> 

</div> 

<div class="col-2"> 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+38).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(38)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+38).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+39).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(39)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+39).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div > 

<div>	 

	<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+40).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(40)%>" class="card-img-top" alt="<%=listImg.get(0)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+40).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

<div class="col-2"> 

<%try{ %> 

<a href="ComicInfo?card=<%=list.get((numpageforSearch-1)*42+41).getComic_id()%>"> 

<div class="card"> 

<img src="<%=listImg.get(41)%>" class="card-img-top" alt="<%=listImg.get(1)%>"> 

<div class="card-body"> 

<h5 class="card-title"><%=list.get((numpageforSearch-1)*42+41).getComic_name() %></h5> 

<p class="card-text">Some quick example text to build on the card title.</p> 

</div> 

</div> 

</a> 

<%}catch(Exception e){ 

	e.printStackTrace();}%> 

</div> 

</div> <!-- Het hang 0 -->  


   

  <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=1" name="1" >1</a></li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=2" name="2">2</a></li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=3" name="3">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
</div>
</body>
</html>