window.onload = function() {

  // grab necessary elements using jQuery
  $day = $("#day");
  $hour = $("#hour");
  $minute = $("#minute");
  $second = $("#second");

  // grab date and save to $date variable
  $date = $("#date").text();

  // console.log($date); // confirms $date was grabbed

  jsDate = Date.parse($date); // parses to javascript date 

  // console.log(jsDate); // confirms date saved

  // now = Date.now(); // saves current datetime to now variable




  var updateCountdown = function() {

    // now = new Date();
    now = Date.now(); // saves current datetime to now variable
    // console.log(now);

    // calculate time between date and now
    totalSeconds = Math.floor((jsDate - now) / 1000); // difference given in milliseconds; divide by 1000 to get seconds
    // console.log(totalSeconds); // confirms seconds decrement 

    // determine days remaining
    days = Math.floor(totalSeconds / 86400);
    // console.log("days remaining ", days); // confirms days remaining calculated correctly
    $day.text(days); // display days remaining on browser

    // determine hours remaining
    hours = Math.floor((totalSeconds / 3600) % 24);
    // console.log("hours remaining ", hours); // confirms days remaining calculated correctly
    $hour.text(hours); // display hours remaining on browser

    // determine minutes remaining
    minutes = Math.floor((totalSeconds / 60) % 60);
    // console.log("minutes remaining ", minutes); // confirms minutes remaining calculated correctly
    $minute.text(minutes); // display hours remaining on browser

    // determine seconds remaining
    seconds = Math.floor(totalSeconds % 60);
    console.log("seconds remaining ", seconds);
    $second.text(seconds);



    // execute updateCountdown every second
    setTimeout(updateCountdown, 1000);

  }; // closes updateCountdown

  // initial execution of function
  updateCountdown();







}; // closes window onload