<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>favorites-empty-page</title>
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

                </nav>
            </div>
        </div>
        <div class="container">
            <tr>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <h1 class="movie">Favorites</h1>

            </tr>
            </td>

            <p id="favorite-empty">
                <font size=4><b> No items in Favorites.Use 'Add to Favorite' option in <a
                        href="ShowMovieListCustomer" class="movie-item-list">Movie List.</a></font></b>
            </p>



        </div>
        <div class="footer">
            <div class="container">Copyright&copy2019</div>
        </div>
    </table>
</body>
</html>