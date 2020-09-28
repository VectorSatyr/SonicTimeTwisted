image_index = objScreen.image_index div 8;
/// Update timer string
var total_time, minutes, seconds, milliseconds;

    // total time
    total_time = min(36000-objSSLevel.timer, 36000);
    if total_time >= 36000 {
        timeOffset = - 10;
    }
    
    // minutes
    minutes = string(total_time div 3600);

// seconds
seconds = (total_time div 60) mod 60;
if (seconds<10) seconds = "0"+string(seconds); else
seconds = string(seconds);

// milliseconds
milliseconds = ceil((total_time mod 60)/0.60);
if (milliseconds<10) milliseconds = "0"+string(milliseconds); else
milliseconds = string(milliseconds);

// update time stamp
time_stamp = minutes+" "+seconds+" "+milliseconds;;

