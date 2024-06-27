<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <style>
        .pagination {
            display: flex;
            justify-content: center;
            margin: 20px 0;
        }
        .pagination a {
            margin: 0 5px;
            text-decoration: none;
            color: black;
            padding: 8px 16px;
            border-radius: 50%;
            border: 1px solid #ddd;
        }
        .pagination .active {
            background-color: orange;
            color: white;
            border: 1px solid orange;
        }
    </style>
</head>


<body>
    <h2>Book List</h2>
    <table border="1" cellpadding="10">
        <thead>
            <tr>
                <th>ID</th>
                <th>Title</th>
                <!-- Các cột khác -->
            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${bookList}">
                <tr>
                    <td>${book.id}</td>
                    <td>${book.title}</td>
                    <!-- Các cột khác -->
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <div class="pagination">
        <c:if test="${currentPage > 1}">
            <a href="BookServlet?page=1">&laquo;</a>
            <a href="BookServlet?page=${currentPage - 1}">&lsaquo;</a>
        </c:if>
        <c:forEach begin="1" end="${noOfPages}" var="i">
            <c:choose>
                <c:when test="${i == currentPage}">
                    <a class="active" href="#">${i}</a>
                </c:when>
                <c:otherwise>
                    <a href="BookServlet?page=${i}">${i}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        <c:if test="${currentPage < noOfPages}">
            <a href="BookServlet?page=${currentPage + 1}">&rsaquo;</a>
            <a href="BookServlet?page=${noOfPages}">&raquo;</a>
        </c:if>
    </div>

</body>
</html>