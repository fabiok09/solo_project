<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <title>Ideas</title>
  <link href="${pageContext.request.contextPath}/resources/style.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="src/main/resources/static/style.css">
</head>
<body class="bg-light">
<div class="container col-sm-8" style="margin-top:30px">
  <button class="btn btn-block mx-auto"><a href="/ideas">Go Back</a></button>
  <h2 style="color:deepskyblue">${idea.ideaName }</h2>
  <p>Created by: ${idea.creator.name }</p>

  <button type="submit" class="btn"><a href="/ideas/edit/${idea.id }">Edit</a></button>
  <div class="border container col-sm-8 bg-light shadow-lg p-3 mb-5 bg-body rounded">
  <h3 class="text-center ">People who liked this idea:</h3>
  <ol>
  <c:forEach items="${likers}" var = "liker" >
  <li class="text-center"><c:out value="${liker.name}"></c:out> </li>
  </c:forEach>
  </ol>
  </div>





</div>
</body>
</html>