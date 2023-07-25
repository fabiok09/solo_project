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
  <style>
    .errors{
      color: red;
      font-size: 16px;
    }
    .bigger-input {

      width: 300px;
      height: 50px;

    }
  </style>
</head>
<body class="bg-light">
<div class="container col-sm-8" style="margin-top:30px">
  <button class="btn btn-block"><a href="/ideas">Go Back</a></button>
  <h1>Create a New Idea</h1>
  <p class="errors"><form:errors path="idea.*"/></p>
  <form:form method="POST" action="/ideas/new" modelAttribute="idea">
    <p>
      <form:label path="ideaName">Content: </form:label>
      <form:input type="text" path="ideaName" cssClass="bigger-input" placeholder = "Post something witty here.."/>
    </p>
    <button type="submit" class="btn btn-primary" value="Update">Create</button>
  </form:form>
</div>
</body>
</html>