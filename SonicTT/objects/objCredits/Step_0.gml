if alarm[0] > 250 {
    if image_alpha < 1 {
        image_alpha+=.05;
    }
} else if alarm[0] < 51 {
    if image_alpha > 0 {
        image_alpha-=.05;
    }
}

