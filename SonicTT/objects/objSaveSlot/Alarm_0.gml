/// @description  Choose Icon

ini_open(save_file_name(slotNumber));
futureLevels[0]=__real(base64_decode(ini_read_string(LEVELS, aAA1_f, false)));
futureLevels[1]=__real(base64_decode(ini_read_string(LEVELS, aAA2_f, false)));
futureLevels[2]=__real(base64_decode(ini_read_string(LEVELS, aRR1_f, false)));
futureLevels[3]=__real(base64_decode(ini_read_string(LEVELS, aRR2_f, false)));
futureLevels[4]=__real(base64_decode(ini_read_string(LEVELS, aFF1_f, false)));
futureLevels[5]=__real(base64_decode(ini_read_string(LEVELS, aFF2_f, false)));
futureLevels[6]=__real(base64_decode(ini_read_string(LEVELS, aVV1_f, false)));
futureLevels[7]=__real(base64_decode(ini_read_string(LEVELS, aVV2_f, false)));
futureLevels[8]=__real(base64_decode(ini_read_string(LEVELS, aDD1_f, false)));
futureLevels[9]=__real(base64_decode(ini_read_string(LEVELS, aDD2_f, false)));
futureLevels[10]=__real(base64_decode(ini_read_string(LEVELS, aTT1_f, false)));
futureLevels[11]=__real(base64_decode(ini_read_string(LEVELS, aTT2_f, false)));
futureLevels[12]=__real(base64_decode(ini_read_string(LEVELS, aSS1, false)));
futureLevels[13]=__real(base64_decode(ini_read_string(LEVELS, aPP1, false)));
futureLevels[14]=__real(base64_decode(ini_read_string(LEVELS, aPP2, false)));
futureLevels[15]=__real(base64_decode(ini_read_string(LEVELS, aMM1, false)));

pastLevels[0]=__real(base64_decode(ini_read_string(LEVELS, aAA1_p, false)));
pastLevels[1]=__real(base64_decode(ini_read_string(LEVELS, aAA2_p, false)));
pastLevels[2]=__real(base64_decode(ini_read_string(LEVELS, aRR1_p, false)));
pastLevels[3]=__real(base64_decode(ini_read_string(LEVELS, aRR2_p, false)));
pastLevels[4]=__real(base64_decode(ini_read_string(LEVELS, aFF1_p, false)));
pastLevels[5]=__real(base64_decode(ini_read_string(LEVELS, aFF2_p, false)));
pastLevels[6]=__real(base64_decode(ini_read_string(LEVELS, aVV1_p, false)));
pastLevels[7]=__real(base64_decode(ini_read_string(LEVELS, aVV2_p, false)));
pastLevels[8]=__real(base64_decode(ini_read_string(LEVELS, aDD1_p, false)));
pastLevels[9]=__real(base64_decode(ini_read_string(LEVELS, aDD2_p, false)));
pastLevels[10]=__real(base64_decode(ini_read_string(LEVELS, aTT1_p, false)));
pastLevels[11]=__real(base64_decode(ini_read_string(LEVELS, aTT2_p, false)));
pastLevels[12]=false;
pastLevels[13]=false;
pastLevels[14]=false;
pastLevels[15]=false;
characterSelect=__real(base64_decode(ini_read_string(STATS, CHARACTER, base64_encode(string(1)))));
currentStone = __real(base64_decode(ini_read_string(EMERALDS, PAST,0)));
currentEmerald = __real(base64_decode(ini_read_string(EMERALDS, FUTURE,0)));
ini_close();

for(i=0; i < 16; i++) {

    if pastLevels[i] == true {
        
        lastPastLevel=i;
    
    } 
    
    if futureLevels[i] == true {
        
        lastFutureLevel=i;
    
    } 

}
show_debug_message("Last FUTURE" + string(lastFutureLevel));

if lastPastLevel > lastFutureLevel {
    iconIndex = lastPastLevel;
}
else iconIndex = lastFutureLevel;

lastIndex = iconIndex;

if pastLevels[iconIndex] == true {
     visiblePast=1;
 }
 else if pastLevels[iconIndex] == false 
     visiblePast = 0;
 
 if futureLevels[iconIndex] == true {
     visibleFuture=1;
 }
 else if futureLevels[iconIndex] == false  visibleFuture = 0;

