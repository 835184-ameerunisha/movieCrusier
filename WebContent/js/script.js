function movie() {
    var title = document.forms["edit"]["title"].value;
    var boxOffice = document.forms["edit"]["boxOffice"].value;
    var dateOfLaunch = document.forms["edit"]["dateOfLaunch"].value;
    var genre = document.forms["edit"]["genre"].value;
    var regNumbers = (/^.*[0-9].*$/);
    var regSpecial = (/^.*[!#@&?].*$/);
    var regCharacters = (/^.*[a-zA-Z].*$/)
    if (title == "") {
        alert("Title is required.");
        return false;
    } else if (title.match(regSpecial)) {
        alert("Title should not accept special characters");
        return false;
    } else if (title.length < 2 || title.length > 100) {
        alert("Title should have 2 to 100 characters.");
        return false;
    } else if (boxOffice.match(regCharacters)) {
        alert("Box Office has to be a number.");
        return false;
    } else if (boxOffice == "") {
        alert("Box Office is required.");
        return false;
    } else if (dateOfLaunch == "") {
        alert("Date of Launch is required.");
        return false;

    } else if (genre == "") {
        alert("Select one genre");
        return false;
    } else {
    }
}