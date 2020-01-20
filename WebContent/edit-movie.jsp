<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<script type="text/javascript" src="js/script.js"></script>
<title>edit-menu-item</title>
<link rel="icon" href="images\logo.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <c:set var="movie" value="${movie}"></c:set>
    <table>
        <div class="header">
            <div class="container">
                <div class="movie">
                    Movie Cruiser&nbsp;&nbsp;&nbsp;<img src="images\logo.png" height=25 width=25>
                </div>
            </div>
            <div class="nav">
                <a href="ShowMovieListAdmin">Movies</a>

            </div>
        </div>
        </div>
        <h1 id="movie">Edit Movie</h1>

        <form name="movieForm" action="EditMovie" method="post" autocomplete="off"
            onsubmit="return validateMovieForm()">

            <input type="hidden" name="movieId" value="${movie.getMovieId()}" />
            <tr>
                <td><label for="title" id="title1"><b>Title</b></label></td>
            </tr>
            <tr>
                <td><input type="text" name="title" value="${movie.getTitle()}" id="title"
                    placeholder="Avengers-End Game" size="80" /></td>
            </tr>
    </table>
    <table id="table1">
        <tr>
            <td><label for="BoxOffice" id="BoxOffice"><b>BoxOffice($)</b></label></td>
            <td><label for="active" id="active"><b>Active</b></label></td>
            <td></td>
            <td><label for="dateOfLaunch" id="date-of-lunch"><b>Date of Launch</b></label></td>
            <td></td>
            <td><label for="genre" id="genre"><b>Genre</b></label></td>
        </tr>
        <tr>
            <td><input type="text" name="boxOffice" value="${movie.getBoxOffice()}"
                id="boxOffice" placeholder="2787965087" /></td>
            <c:choose>
                <c:when test="${movie.isActive()==true}">
                    <td><input type="radio" name="active" value="Yes" checked="checked">Yes
                        <input type="radio" name="active" value="No">No</td>
                </c:when>
                <c:otherwise>
                    <td><input type="radio" name="active" value="Yes">Yes <input
                        type="radio" name="active" value="No" checked="checked">No</td>
                </c:otherwise>
            </c:choose>
            <td></td>
            <td><f:formatDate value="${movie.getDateOfLaunch()}" pattern="dd/MM/yyyy"
                    var="dateOfLaunch" /> <input type="text" value="${dateOfLaunch}" id="launch"
                name="dateOfLaunch" placeholder="27/04/2022" /></td>
            <td></td>
            <td><select name="genre" id="Genre" value="${movie.getGenre()}">

                    <option value="Science Fiction">Science Fiction</option>
                    <option value="Superhero">Superhero</option>
                    <option value="Romance">Romance</option>
                    <option value="Comedy">Comedy</option>
                    <option value="Adventure">Adventure</option>
                    <option value="Thriller">Thriller</option>
            </select></td>
        </tr>
        <tr>
            <c:choose>
                <c:when test="${movie.isHasTeaser()==true}">
                    <td><input type="checkbox" name="has Teaser" value="yes" checked="checked">Has
                        Teaser</td>
                </c:when>
                <c:otherwise>
                    <td><input type="checkbox" name="has Teaser" value="No" checked="checked">Has
                        Teaser</td>
                </c:otherwise>

            </c:choose>
            <label for="del" />

        </tr>
        <tr>
          <td><input type="submit"
                        style="background-color: #0716a3; color: white; width: 120px; height: 30px;border:none;"
                        value="Save" name="submit"></td>
        </tr>
    </table>
    </form>
    <div class="footer">
        <div class="container">Copyright&copy2019</div>
    </div>
</body>
</html>
