<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Bluray Library</title>
        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- SWC Icon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/img/icon.png">

    </head>
    <body>
        <div class="container">
            <h1 id="x">Blu-Rays</h1>

            <table id="bluray-table" class="table table-hover">
                <tr>
                    <th width="10%"></th>
                    <th width="40%">Title</th>
                    <th width="30%">Release Date</th>
                    <th width="20%">MPAA Rating</th>
                    <th width="15%"></th>
                    <th width="15%"></th>
                </tr>
                <tbody id="bluray-rows"></tbody>
            </table>

            <div class="row">
                <div class="col-md-10"></div>
                <div class="col-md-2">
                    <button id="add-dialog-button" class="btn btn-default" data-toggle="modal" data-target="#add-dialog">
						Add
					</button>
                </div>
            </div>
        </div>

		<%@include file="jsp/modalFragment.jsp" %>

        <!-- Placed at the end of the document so the pages load faster -->
        <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/blurayLibrary.js"></script>
    </body>
</html>
