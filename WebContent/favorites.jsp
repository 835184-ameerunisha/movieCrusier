<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>favorite</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
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
        <h1 class="man">
            <b>Favorites</b>
        </h1>
        <tr>
            <td>
        </tr>
        </td>
        <c:if test="${removeFavoriteItemStatus==true }">
            <h4 style="color: #0b8038">Movie Removed from Favorite Successfully</h4>
        </c:if>
        <table id="table2">
            <col width="190px" />
            <col width="100px" />
            <col width="130px" />


            <tr>
                <th align="left">Title</th>
                <th align="right">Box office</th>
                <th align="center">Genre</th>

            </tr>
            <c:forEach items="${movie}" var="movie">
                <tr>
                    <td>${movie.getTitle()}</td>

                    <td align="right"><f:formatNumber type="currency" minFractionDigits="2"
                            value="${movie.getBoxOffice()}"></f:formatNumber></td>
                    <td align="center">${movie.getGenre()}</td>
                    <td align="center"><a href="RemoveFavorite?movieId=${movie.getMovieId()}">Delete</a></td>
                </tr>
            </c:forEach>

            <tr>
                <td></td>
                <td align="left"><b>No. of Favorites:<b></td>
                <td><b>${favorite.getNoOfFavorite()}<b></td>

            </tr>
        </table>

        <div class="footer">
            <div class="container">Copyright&copy2019</div>
        </div>
        </body>

        </html>