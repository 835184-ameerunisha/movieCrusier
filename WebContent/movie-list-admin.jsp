<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Admin-page</title>
<link rel="shortcut icon" href="images\logo.png">
<link rel="stylesheet" href="styles\style.css">
</head>
<body>
    <form>
        <table class="movie">
            <div class="header">
                <div class="container">
                    <div class="movie">
                        Movie Cruiser&nbsp;&nbsp;&nbsp;<img src="images\logo.png" height=25 width=25>
                    </div>
                </div>

                <div class="nav">
                    <a href="ShowMovieListAdmin"><b>Movies</b></a>
                </div>
            </div>
            <div class="container">
                <p>
                    <font size="18" class="movie"><b>Movies</b></font>
                </p>
                <table id="table">
                    <col width="150px" />
                    <col width="100px" />
                    <col width="100px" />
                    <col width="100px" />
                    <col width="100px" />
                    <col width="100px" />
                    <tr>
                        <th align="left">Title</th>
                        <th align="right">Box Office</th>
                        <th align="center">Active</th>
                        <th align="center">Date of Launch</th>
                        <th align="center">Genre</th>
                        <th align="center">Has Teaser</th>
                        <th align="center">Action</th>
                    </tr>
                    <c:forEach items="${movie}" var="movie">
                        <tr>
                            <td>${movie.getTitle()}</td>
                            <td align="right"><f:formatNumber type="currency"
                                    currencySymbol="$. " maxFractionDigits="0"
                                    value="${movie.getBoxOffice()}"></f:formatNumber></td>
                            <td align="center"><c:choose>
                                    <c:when test="${movie.isActive()==true}">Yes</c:when>
                                    <c:otherwise>No</c:otherwise>
                                </c:choose></td>

                            <td align="center"><f:formatDate value="${movie.getDateOfLaunch()}"
                                    pattern="dd/MM/yyyy"></f:formatDate></td>
                            <td align="center">${movie.getGenre()}</td>
                            <td align="center"><c:choose>
                                    <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                                    <c:otherwise>No</c:otherwise>
                                </c:choose></td>

                            <td align="center"><a
                                href="ShowEditMovie?movieId=${movie.getMovieId()}">Edit</a></td>
                        </tr>
                    </c:forEach>
                </table>


            </div>
            <div class="footer">
                <div class="container">Copyright&copy2019</div>
            </div>
        </table>
    </form>
</body>
</html>
