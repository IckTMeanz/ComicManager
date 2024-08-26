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
	String numpageST = (String)session.getAttribute("numpage");
	int numpage=Integer.parseInt(numpageST);
	ArrayList<String> listComic= (ArrayList<String>) session.getAttribute("listComic");
	listComic.clear();
	for(int i=(numpage-1)*42; i<numpage*42; i++){
		String url="image/card/"+"c"+i+".jpg";
		listComic.add(url);
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

 <div class="row"><!-- Hàng 0 -->
	
        <div class="col-2">
         <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42%>">
            <div class="card">
                <img src="<%=listComic.get(0)%>" class="card-img-top" alt="<%=listComic.get(0)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
        </a>
        <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+1%>">
            <div class="card">
                <img src="<%=listComic.get(1)%>" class="card-img-top" alt="<%=listComic.get(1)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+1+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
        </a>
         <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+2%>">
            <div class="card">
                <img src="<%=listComic.get(2)%>" class="card-img-top" alt="<%=listComic.get(2)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+2+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        
        <div class="col-2">
         <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+3%>">
            <div class="card">
                <img src="<%=listComic.get(3)%>" class="card-img-top" alt="<%=listComic.get(3)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+3+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+4%>">
            <div class="card">
                <img src="<%=listComic.get(4)%>" class="card-img-top" alt="<%=listComic.get(4)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+4+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
             <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+5%>">
            <div class="card">
                <img src="<%=listComic.get(5)%>" class="card-img-top" alt="<%=listComic.get(5)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+5+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
             <%}catch(Exception e){e.printStackTrace();} %>
        </div>
    </div>

    <div class="row mt-4"> <!-- Hang 1 -->
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+6%>">
            <div class="card">
                <img src="<%=listComic.get(6)%>" class="card-img-top" alt="<%=listComic.get(6)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+6+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
             <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
         <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+7%>">
            <div class="card">
                <img src="<%=listComic.get(7)%>" class="card-img-top" alt="<%=listComic.get(7)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+7+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
             <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+8%>">
            <div class="card">
                <img src="<%=listComic.get(8)%>" class="card-img-top" alt="<%=listComic.get(8)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+8+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
             <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
         <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+9%>">
            <div class="card">
                <img src="<%=listComic.get(9)%>" class="card-img-top" alt="<%=listComic.get(9)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+9+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
         <div class="col-2">
          <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+10%>">
            <div class="card">
                <img src="<%=listComic.get(10)%>" class="card-img-top" alt="<%=listComic.get(10)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+10+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+11%>">
            <div class="card">
                <img src="<%=listComic.get(11)%>" class="card-img-top" alt="<%=listComic.get(11)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+11+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
    </div>

    <div class="row mt-4"><!-- Hàng 2 -->
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+12%>">
            <div class="card">
                <img src="<%=listComic.get(12)%>" class="card-img-top" alt="<%=listComic.get(12)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+12+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+13%>">
            <div class="card">
                <img src="<%=listComic.get(13)%>" class="card-img-top" alt="<%=listComic.get(13)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+13+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+14%>">
            <div class="card">
            
                <img src="<%=listComic.get(14)%>" class="card-img-top" alt="<%=listComic.get(14)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+14+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+15%>">
            <div class="card">
                <img src="<%=listComic.get(15)%>" class="card-img-top" alt="<%=listComic.get(15)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+15+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+16%>">
            <div class="card">
            
                <img src="<%=listComic.get(16)%>" class="card-img-top" alt="<%=listComic.get(16)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+16+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+17%>">
            <div class="card">
                <img src="<%=listComic.get(17)%>" class="card-img-top" alt="<%=listComic.get(17)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+17+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
    </div>

    <div class="row mt-4">
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+18%>">
            <div class="card">
                <img src="<%=listComic.get(18)%>" class="card-img-top" alt="<%=listComic.get(18)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+18+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+19%>">
            <div class="card">
                <img src="<%=listComic.get(19)%>" class="card-img-top" alt="<%=listComic.get(19)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+19+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+20%>">
            <div class="card">
                <img src="<%=listComic.get(20)%>" class="card-img-top" alt="<%=listComic.get(20)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+20+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+21%>">
	            <div class="card">
	                <img src="<%=listComic.get(21)%>" class="card-img-top" alt="<%=listComic.get(21)%>">
	                <div class="card-body">
	                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+21+"").getComic_name() %></h5>
	                    <p class="card-text">Some quick example text to build on the card title.</p>
	                </div>
	            </div>
	            </a>
	            <%}catch(Exception e){e.printStackTrace();} %>
	        </div>
	      <div class="col-2">
	      <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+22%>">
            <div class="card">
                <img src="<%=listComic.get(22)%>" class="card-img-top" alt="<%=listComic.get(22)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+22+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+23%>">
	            <div class="card">
	                <img src="<%=listComic.get(23)%>" class="card-img-top" alt="<%=listComic.get(23)%>">
	                <div class="card-body">
	                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+23+"").getComic_name() %></h5>
	                    <p class="card-text">Some quick example text to build on the card title.</p>
	                </div>
	            </div>
	            </a>
	            <%}catch(Exception e){e.printStackTrace();} %>
	        </div>
                
</div>
<div class="row mt-4"> <!-- Hang 4 -->
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+24%>">
            <div class="card">
                <img src="<%=listComic.get(24)%>" class="card-img-top" alt="<%=listComic.get(24)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+24+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+25%>">
            <div class="card">
                <img src="<%=listComic.get(25)%>" class="card-img-top" alt="<%=listComic.get(25)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+25+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+26%>">
            <div class="card">
                <img src="<%=listComic.get(26)%>" class="card-img-top" alt="<%=listComic.get(26)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+26+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+27%>">
	            <div class="card">
	                <img src="<%=listComic.get(27)%>" class="card-img-top" alt="<%=listComic.get(27)%>">
	                <div class="card-body">
	                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+27+"").getComic_name() %></h5>
	                    <p class="card-text">Some quick example text to build on the card title.</p>
	                </div>
	            </div>
	            </a>
	            <%}catch(Exception e){e.printStackTrace();} %>
	        </div>
	      <div class="col-2">
	      <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+28%>">
            <div class="card">
                <img src="<%=listComic.get(28)%>" class="card-img-top" alt="<%=listComic.get(28)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+28+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+29%>">
	            <div class="card">
	                <img src="<%=listComic.get(29)%>" class="card-img-top" alt="<%=listComic.get(29)%>">
	                <div class="card-body">
	                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+29+"").getComic_name() %></h5>
	                    <p class="card-text">Some quick example text to build on the card title.</p>
	                </div>
	            </div>
	            </a>
	            <%}catch(Exception e){e.printStackTrace();} %>
	        </div>
                
</div>
<div class="row mt-4"><!-- Hang 5 -->
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+30%>">
            <div class="card">
                <img src="<%=listComic.get(30)%>" class="card-img-top" alt="<%=listComic.get(30)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+30+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+31%>">
            <div class="card">
                <img src="<%=listComic.get(31)%>" class="card-img-top" alt="<%=listComic.get(31)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+31+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+32%>">
            <div class="card">
                <img src="<%=listComic.get(32)%>" class="card-img-top" alt="<%=listComic.get(32)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+32+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+33%>">
	            <div class="card">
	                <img src="<%=listComic.get(33)%>" class="card-img-top" alt="<%=listComic.get(33)%>">
	                <div class="card-body">
	                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+33+"").getComic_name() %></h5>
	                    <p class="card-text">Some quick example text to build on the card title.</p>
	                </div>
	            </div>
	            </a>
	            <%}catch(Exception e){e.printStackTrace();} %>
	        </div>
	      <div class="col-2">
	      <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+34%>">
            <div class="card">
                <img src="<%=listComic.get(34)%>" class="card-img-top" alt="<%=listComic.get(34)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+34+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+35%>">
	            <div class="card">
	                <img src="<%=listComic.get(35)%>" class="card-img-top" alt="<%=listComic.get(35)%>">
	                <div class="card-body">
	                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+35+"").getComic_name() %></h5>
	                    <p class="card-text">Some quick example text to build on the card title.</p>
	                </div>
	            </div>
	            </a>
	            <%}catch(Exception e){e.printStackTrace();} %>
	        </div>
                
</div>
<div class="row mt-4"><!-- Hang 6 -->
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+36%>">
            <div class="card">
                <img src="<%=listComic.get(36)%>" class="card-img-top" alt="<%=listComic.get(36)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+36+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+37%>">
            <div class="card">
                <img src="<%=listComic.get(37)%>" class="card-img-top" alt="<%=listComic.get(37)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+37+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+38%>">
            <div class="card">
                <img src="<%=listComic.get(38)%>" class="card-img-top" alt="<%=listComic.get(38)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+38+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+39%>">
	            <div class="card">
	                <img src="<%=listComic.get(39)%>" class="card-img-top" alt="<%=listComic.get(39)%>">
	                <div class="card-body">
	                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+39+"").getComic_name() %></h5>
	                    <p class="card-text">Some quick example text to build on the card title.</p>
	                </div>
	            </div>
	            </a>
	            <%}catch(Exception e){e.printStackTrace();} %>
	        </div>
	      <div class="col-2">
	      <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+40%>">
            <div class="card">
                <img src="<%=listComic.get(40)%>" class="card-img-top" alt="<%=listComic.get(40)%>">
                <div class="card-body">
                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+40+"").getComic_name() %></h5>
                    <p class="card-text">Some quick example text to build on the card title.</p>
                </div>
            </div>
            </a>
            <%}catch(Exception e){e.printStackTrace();} %>
        </div>
        <div class="col-2">
        <%try{ %>
        <a href="ComicInfo?card=<%=(numpage-1)*42+41%>">
	            <div class="card">
	                <img src="<%=listComic.get(41)%>" class="card-img-top" alt="<%=listComic.get(41)%>">
	                <div class="card-body">
	                    <h5 class="card-title"><%=comicDAO.getInstance().getInfoById((numpage-1)*42+41+"").getComic_name() %></h5>
	                    <p class="card-text">Some quick example text to build on the card title.</p>
	                </div>
	            </div>
	            </a>
	            <%}catch(Exception e){e.printStackTrace();} %>
	        </div>
                
</div>
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
    <li class="page-item"><a class="page-link" href="pageChanging?page=4" name="4" >4</a></li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=5" name="5">5</a></li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=6" name="6">6</a></li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=7" name="7" >7</a></li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=8" name="8">8</a></li>
    <li class="page-item"><a class="page-link" href="pageChanging?page=9" name="9">9</a></li>
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