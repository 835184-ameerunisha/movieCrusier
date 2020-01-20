<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>customer-movie-list</title>
<link rel="shortcut icon" href="images\logo.png">
<link rel="stylesheet" href="styles\style.css">
</head>
<body>
    <table class="movie">
        <div class="header">
            <div class="container">
                <div class="movie">
                    Movie Cruiser&nbsp;&nbsp;&nbsp;<img src="images\logo.png" height=25 width=25>
                </div>
            </div>
            <div class="nav">
                <a href="ShowMovieListCustomer">Movies</a> <a href="ShowFavorite" class="movie">Favorites</a>
            </div>
        </div>
        <div class="container">
            <h1 class="movie">
                <b>Movies</b>
            </h1>
            <c:if test="${addFavoriteStatus==true }">
                <h4 style="color: #0b8038" id="remove-favorite" class="movie">Item Added Into
                    Favorites Successfully</h4>
            </c:if>

            <table id="table2">
                <col width="120px" />
                <col width="80px" />
                <col width="80px" />
                <col width="130px" />
                <col width="80px" />

                <tr>
                    <th align="left">Title</th>
                    <th align="center">Has Teaser</th>
                    <th align="right">Box Office</th>
                    <th align="center">Genre</th>

                </tr>


                <c:forEach items="${movie}" var="movie">
                    <tr>
                        <td>${movie.getTitle()}</td>
                        <td align="center"><c:choose>
                                <c:when test="${movie.isHasTeaser()==true}">Yes</c:when>
                                <c:otherwise>No</c:otherwise>
                            </c:choose></td>
                        <td align="right"><f:formatNumber type="currency" currencySymbol="Rs."
                                minFractionDigits="2" value="${movie.getBoxOffice()}"></f:formatNumber></td>
                        </td>

                        <td align="center">${movie.getGenre()}</td>


                        <td align="center"><a
                            href="AddToFavorite?movieId=${movie.getMovieId()}">Add to Favorite</a></td>
                    </tr>
                </c:forEach>

                </div>
                <div class="footer">
                    <div class="container">Copyright&copy2019</div>
                </div>
            </table>
</body>
</html>