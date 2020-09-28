if objProgram.in_past == false {

    if visible == true
        visible = false;
    else visible = true;

}

y=ystart+cos(step/8)*8;

with child {

    y=ystart+sin(other.step/8)*8;

}

step+=1;

