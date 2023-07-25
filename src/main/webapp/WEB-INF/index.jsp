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

  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/custom.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/css/bootstrap.min.css">
  <title>Ideas</title>


</head>

<body class="bg-dark">

<div class="container col-sm-8 bg-light" style="margin-top:30px">
  <nav style="display: flex; justify-content: space-between "
       class="navbar navbar-expand-lg navbar-light bg-dark">
  <h1 style="color:orangered">Welcome,
    <c:out value="${user.name}" />
  </h1>
  <button class="btn btn-outline-danger my-1 my-sm-2"><a href="/logout" logout style="color: rgb(185, 155, 155)">Logout</a></button>
  </nav>
  <div class="row mb-4">
    <div class="col-sm-6">
      <h2>Ideas</h2>
    </div>
    <div class="container">
      <table class="table table-striped">
        <thead>
        <tr>
          <th>Idea</th>
          <th>Creator</th>
          <th>Likes</th>
          <th></th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${ideas}" var="idea">
          <tr>
            <td><a href="/show/${idea.id}">${idea.ideaName }</a></td>
            <td>${idea.creator.name }</td>
            <td>${idea.likers.size() }</td>

            <c:if test="${idea.creator.id != user.id }">
              <c:if test="${idea.likers.contains(user) == false }">
                <td>
                  <a href="/like/${idea.id }">Like</a>
                </td>
              </c:if>
              <c:if test="${idea.likers.contains(user) == true }">
                <td>
                  <a href="/unlike/${idea.id }">Unlike</a>
                </td>
              </c:if>
            </c:if>
          </tr>
        </c:forEach>
        </tbody>
      </table>
      <button style="margin-right: 20px" class="btn btn-outline-primary my-4"><a href="/ideas/new" style="color: rgb(180, 165, 165)">New Idea</a></button>

    </div>
  </div>
</div>

</body>
</html>