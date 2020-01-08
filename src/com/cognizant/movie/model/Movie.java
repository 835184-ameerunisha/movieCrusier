package com.cognizant.movie.model;

import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Movie {
    private long movieId;
    private String title;
    private long boxOffice;
    private boolean active;
    private Date dateOfLaunch;
    private String genre;
    private boolean hasTeaser;

    public Movie() {

    }

    public Movie(long movieId, String title, long boxOffice, boolean active, Date dateOfLaunch,
            String genre, boolean hasTeaser) {
        this.movieId = movieId;
        this.title = title;
        this.boxOffice = boxOffice;
        this.active = active;
        this.dateOfLaunch = dateOfLaunch;
        this.genre = genre;
        this.hasTeaser = hasTeaser;
    }

    public long getMovieId() {
        return movieId;
    }

    public void setMovieId(long movieId) {
        this.movieId = movieId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public long getBoxOffice() {
        return boxOffice;
    }

    public void setBoxOffice(long boxOffice) {
        this.boxOffice = boxOffice;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Date getDateOfLaunch() {
        return dateOfLaunch;
    }

    public void setDateOfLaunch(Date dateOfLaunch) {
        this.dateOfLaunch = dateOfLaunch;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public boolean isHasTeaser() {
        return hasTeaser;
    }

    public void setHasTeaser(boolean hasTeaser) {
        this.hasTeaser = hasTeaser;
    }

    @Override
    public String toString() {
        DecimalFormat df = new DecimalFormat("#,###,###");
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        return String.format("%-10s%-20s%-21s%-10s%-17s%-20s%s", movieId, title,
                "$" + df.format(boxOffice), active == true ? "Yes" : "No", sdf.format(dateOfLaunch),
                genre, hasTeaser == true ? "Yes" : "No");

    }

}
