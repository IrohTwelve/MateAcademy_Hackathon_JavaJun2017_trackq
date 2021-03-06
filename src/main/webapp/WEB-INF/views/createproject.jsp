<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create Project</title>
    <meta charset="utf-8">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-theme.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <t:navbar basic="projects"/>
</div>
<div class="container-fluid center-block">
    <div class="row">
        <div style="margin-top:150px;"
             class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2 panel-body panel panel-default">
            <h3 class="text-info text-center">Create Project</h3>

            <spring:form  modelAttribute="project" id="createProject" class="form-horizontal" method="post" action="/create-project">

                <div style="margin-bottom: 25px" class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-list-alt"></i></span>
                    <spring:input path="pName" id="projectName" type="text" name="projectName"
                                  required = "true"
                           placeholder="projects name" class="form-control"/>
                </div>

                <div style="margin-bottom: 15px">
                            <spring:textarea path="description" id="projectDescription" name="projectDescription" rows="4" class="form-control"
                                      placeholder="enter projects description"/>
                </div>

                <div class="col-sm-12 controls text-center">
                    <button type="submit" class="btn btn-primary btn-md ">Create</button>
                </div>
            </spring:form>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>