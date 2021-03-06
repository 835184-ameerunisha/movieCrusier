package com.cognizant.movie.model;

import java.util.List;

public class Favorite {
    private List<Movie> favoriteList;
    private int noOfFavorite;

    public Favorite() {
        // TODO Auto-generated constructor stub
    }

    public List<Movie> getFavoriteList() {
        return favoriteList;
    }

    public void setFavoriteList(List<Movie> favoriteList) {
        this.favoriteList = favoriteList;
    }

    public int getNoOfFavorite() {
        return noOfFavorite;
    }

    public void setNoOfFavorite(int boxOffice) {
        this.noOfFavorite = boxOffice;
    }

    @Override
    public String toString() {
        return "Favorite [favoriteList=" + favoriteList + ", total=" + noOfFavorite + "]";
    }

    
}
