<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <link href="<c:url value="/resources/css/homepage.css" />" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

</head>
<body>
     <jsp:include page="header.jsp" />
        <div class="container" >
            <div style="text-align:center;width:100%;font-size:1.6rem;font-weight:700;font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">found (${listOfFoods.size()})</div>
            <c:forEach items="${listOfFoods}" var="food">
                <div class="card">
                    <a href="./details/${food.id}">
                        <div class="img">
                            <img src="${food.image}" alt="" style="width: 360px; height: 230px; object-fit: cover;"><br>
                             <c:if test = "${food.foodsLabelsEntityList != null}">
                                  <span class="label">${food.foodsLabelsEntityList.get(0).label.name}</span>
                              </c:if>
                        </div>
                        <div class="title">
                            ${food.name}
                        </div>
                        <div class="short-des">${food.description}</div>
                    </a>
                </div>
            </c:forEach>
        </div>

</body>
</html>