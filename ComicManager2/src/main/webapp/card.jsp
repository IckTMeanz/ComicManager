<%@page import="java.sql.Timestamp"%>
<%@page import="model.view"%>
<%@page import="java.sql.Date"%>
<%@page import="DAO.viewDAO"%>
<%@page import="DAO.userDAO"%>
<%@page import="DAO.authorDAO"%>
<%@page import="model.comic"%>
<%@page import="DAO.comicDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
</head>
<body>

<%
	String numcardStr=(String)session.getAttribute("card");
	comic comic=comicDAO.getInstance().getInfoById(numcardStr);
	String url="image/card/c"+comic.getComic_id()+".jpg";
	String author_name=authorDAO.getInstancd().getInfoById(comic.getAuthor()).getAuthor_name();
	int numView=viewDAO.getInstance().number_of_view(numcardStr);
	try{
	String username=session.getAttribute("username")+"";
	String user_id=userDAO.getInstance().getIdByName(username);
	//Date date = new Date(System.currentTimeMillis()); 
	view v= new view(user_id, comic.getComic_id(), null);
	viewDAO.getInstance().insert(v);
		}
	catch(Exception e){
		e.printStackTrace();
	}
	
%>
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
          <a class="nav-link active" aria-current="page" href="#">History</a>
        </li>
        
         <li class="nav-item">
          <a class="nav-link active"  href="https://www.google.com.vn">Fanpage</a>
        </li>
      </ul>
      <form class="d-flex" role="search">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>

        <div class="product-card">
            <img src="<%=url %>" alt="" class="img-fluid" style="float: left; padding: 10px 30px 10px 10px">
            <div class="product-info" >
                <h1><%=comic.getComic_name() %></h1>
                <p><strong>Tác giả:</strong> <%=author_name %></p>
                <p><strong>Tình trạng:</strong> <%=comic.getStatus() %></p>
                <p><strong>Lượt thích:</strong> 1792</p>
                <p><strong>Lượt theo dõi:</strong> 14,476</p>
                <p><strong>Lượt xem:</strong> <%=numView %></p>
                <div class="tags">
                <%try{ %>
                    <button class="btn btn-warning"><%=comicDAO.getInstance().getType(numcardStr).get(0) %></button>
                    <%}catch(Exception e){e.printStackTrace();} %>
                 <%try{ %>
                    <button class="btn btn-warning"><%=comicDAO.getInstance().getType(numcardStr).get(1) %></button>
                    <%}catch(Exception e){e.printStackTrace();} %>
                     <%try{ %>
                    <button class="btn btn-warning"><%=comicDAO.getInstance().getType(numcardStr).get(2) %></button>
                    <%}catch(Exception e){e.printStackTrace();} %>
                     <%try{ %>
                    <button class="btn btn-warning"><%=comicDAO.getInstance().getType(numcardStr).get(3) %></button>
                    <%}catch(Exception e){e.printStackTrace();} %>
                     <%try{ %>
                    <button class="btn btn-warning"><%=comicDAO.getInstance().getType(numcardStr).get(4) %></button>
                    <%}catch(Exception e){e.printStackTrace();} %>
                   
                </div>
                <div class="mt-3">
                    <button class="btn btn-success">Đọc từ đầu</button>
                    <button class="btn btn-danger">Theo dõi</button>
                    <button class="btn btn-primary">Thích</button>
                    <button class="btn btn-info">Đọc tiếp</button>
                </div>
            </div>
        </div>

        <div class="description mt-4">
            <h3>Giới thiệu</h3>
            <p><b><%=comic.getDis()==null?"being updated":comic.getDis() %></b></p>
            <button class="btn btn-warning">Xem Thêm</button>
        </div>
    </div>

</body>
</html>