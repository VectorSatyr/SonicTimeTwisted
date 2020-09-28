        draw_set_font(objResources.fontHud);
        draw_set_halign(fa_center);
switch state {
    case 1:
        draw_text(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+107, string_hash_to_newline("TRY AGAIN"));
        draw_text(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+123, string_hash_to_newline("COLLECT ALL THE CHAOS EMERALDS AND TIME STONES"));
    break;
    case 2:
        draw_text(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+26, string_hash_to_newline("SONIC TAILS AND KNUCKLES CONTINUED THE FIGHT"));
        draw_text(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+38, string_hash_to_newline("TO LIBERATE MOBIUS FROM ROBOTNIK'S CREATIONS"));
        draw_text(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+54, string_hash_to_newline("UNTIL NO MORE ROBOTS REMAINED"));
        draw_text(__view_get( e__VW.XView, view_current )+213, __view_get( e__VW.YView, view_current )+78, string_hash_to_newline("THANK YOU FOR PLAYING"));
    break;
}

