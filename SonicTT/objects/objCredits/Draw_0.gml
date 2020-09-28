// setup
draw_set_color(c_white);
draw_set_valign(fa_top);
draw_set_halign(fa_center);
draw_set_font(objResources.fontHud);

switch name {
case 1:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("GAME BY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+28,string_hash_to_newline("BRYCE STOCK \"OVERBOUND\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 2:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("PROGRAMMED BY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+28,string_hash_to_newline("BRYCE STOCK \"OVERBOUND\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+42,string_hash_to_newline("DEVIN REEVES \"MERCURY\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+56,string_hash_to_newline("JOEVAN SALMON-JOHNSON \"VECTORSATYR\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 3:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("GAME ART BY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+28,string_hash_to_newline("BRYCE STOCK \"OVERBOUND\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+42,string_hash_to_newline("MARC \"DER ZOCKER\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 4:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("MUSIC BY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+28, string_hash_to_newline("HINCHY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 5:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("LEVEL DESIGN"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+28,string_hash_to_newline("BRYCE STOCK \"OVERBOUND\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+42,string_hash_to_newline("SHANE \"SPARKS\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    
break;

case 6:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("CONCEPTS FROM"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+28,string_hash_to_newline("BRYCE STOCK \"OVERBOUND\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+42, string_hash_to_newline("DEBRA ANN"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+56,string_hash_to_newline("DEVIN REEVES \"MERCURY\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+70, string_hash_to_newline("HINCHY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+84,string_hash_to_newline("JOEVAN SALMON-JOHNSON \"VECTORSATYR\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 7:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("CONCEPTS FROM"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+28,string_hash_to_newline("JONATHAN ROSE \"DIMENSION WARPED\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+42,string_hash_to_newline("SHANE \"SPARKS\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+56, string_hash_to_newline("\"TOMMY C\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 8:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("ADDITIONAL PROGRAMMING"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+28,string_hash_to_newline("JONATHAN ROSE \"DIMENSION WARPED\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+42,string_hash_to_newline("HECTOR BARREIRO \"DAMIZEAN\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+56,string_hash_to_newline("WILL \"POLAR EXELION\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 9:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("ADDITIONAL MUSIC BY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+28, string_hash_to_newline("ANDY TUNSTALL"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+42, string_hash_to_newline("CHRISTOPHER WRIGHT \"LARKSS\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+56, string_hash_to_newline("JAMESON SUTTON"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+70, string_hash_to_newline("JOSHUA KRUSZYNA \"EXSHAD\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 10:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("ADDITIONAL ART BY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+28, string_hash_to_newline("\"ANDREW75\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+42, string_hash_to_newline("ANDY TUNSTALL"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+56,string_hash_to_newline("\"APRICITY\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+70, string_hash_to_newline("\"BLAZEFIRELP\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+84, string_hash_to_newline("DEVIN REEVES \"MERCURY\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 11:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("ADDITIONAL ART BY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+28, string_hash_to_newline("\"GAMENERD ADVANCE\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+42, string_hash_to_newline("\"HYPER EMERSON\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+56, string_hash_to_newline("\"KAMON62\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+70, string_hash_to_newline("PEPIJN RYNGAERT \"GARDOW\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+84,string_hash_to_newline("SHANE \"SPARKS\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 12:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("ADDITIONAL ART BY"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+28, string_hash_to_newline("\"SONICGENESIS89\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+42, string_hash_to_newline("STEPHEN DIDURO \"STRIFE\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+56, string_hash_to_newline("\"STEVINGESUS\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+70, string_hash_to_newline("\"VEXER\""),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 13:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("RESOURCES FROM"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+28, string_hash_to_newline("SONIC FAN GAMES HQ"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+42, string_hash_to_newline("SONIC RETRO"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+56, string_hash_to_newline("THE SPRITERS RESOURCE"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+70, string_hash_to_newline("THE MYSTICAL FOREST ZONE"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+84, string_hash_to_newline("TOEI ANIMATION"),c_white,c_white,c_yellow,c_yellow,image_alpha);
break;

case 14:
    draw_text_color(__view_get( e__VW.XView, 0 )+160,__view_get( e__VW.YView, 0 )+6,string_hash_to_newline("SPECIAL THANKS"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+28, string_hash_to_newline("DAMIZEAN, RICARDO ELSO, RAEL"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+42, string_hash_to_newline("FLARE, SHARD, ICUURD8B42, CHIMPO"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+56, string_hash_to_newline("ROGUEYOSHI, THEOUAEGIS, SEGA SCOURGE"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+70, string_hash_to_newline("SLINGERLAND, ANDREW75, SUPERBLIZ"),c_white,c_white,c_yellow,c_yellow,image_alpha);
    draw_text_color(__view_get( e__VW.XView, 0 )+160, __view_get( e__VW.YView, 0 )+84, string_hash_to_newline("DEBRA ANN, JOE PIERCE NOAH COPELAND"),c_white,c_white,c_yellow,c_yellow,image_alpha); 
break;
}


