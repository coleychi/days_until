// window.onload = function() {

//   // dynamic countdown for day show page
//   $day = $("#day");
//   $hour = $("#hour");
//   $minute = $("#minute");
//   $second = $("#second");

//   // grab date and save to $date variable
//   $date = $("#date").text();

//   console.log($date); // confirms $date was grabbed

//   jsDate = Date.parse($date); // parses to javascript date 

//   // console.log(jsDate); // confirms date saved

//   now = Date.now(); // saves current datetime to now variable

//   totalSeconds = jsDate - now; // difference between dates in seconds
//   totalSeconds = totalSeconds / 1000 // convert milliseconds to seconds

//   // console.log(seconds);

//   $second.text(totalSeconds)


//   var updateCountdown = function() {

//     totalSeconds = jsDate - now; // difference between dates in seconds
//     totalSeconds = totalSeconds / 1000 // convert milliseconds to seconds

//     totalSeconds--

//     console.log(totalSeconds)

//     $second.text(totalSeconds)

//     days = Math.floor(totalSeconds / 86400);

//     $day.text(days)

//     console.log("days", days)

//     totalSeconds -= days * 86400;

//     hours = Math.floor(totalSeconds / 3600)

//     $hour.text(hours)

//     console.log("hours", hours)

//     totalSeconds -= hours * 3600;

//     minutes = Math.floor(totalSeconds / 60);

//     $minute.text(minutes)

//     console.log("minutes", minutes)

//     totalSeconds -= minutes * 60

//     console.log("seconds", totalSeconds)




    


//     // execute updateCountdown every second
//     setTimeout(updateCountdown, 1000);
//   };

//   // initial execution of function
//   updateCountdown();





// }; // closes window onload