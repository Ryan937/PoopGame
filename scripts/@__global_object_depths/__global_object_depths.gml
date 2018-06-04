// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // bossObject
global.__objectDepths[1] = 0; // obj_bestScore
global.__objectDepths[2] = 0; // obj_boss
global.__objectDepths[3] = 0; // obj_box_one
global.__objectDepths[4] = 0; // obj_box_pixel
global.__objectDepths[5] = 0; // obj_box_pixelated
global.__objectDepths[6] = 0; // obj_bullet
global.__objectDepths[7] = 0; // obj_door
global.__objectDepths[8] = 0; // object48
global.__objectDepths[9] = 0; // obj_door_blade
global.__objectDepths[10] = 0; // obj_door_dodge
global.__objectDepths[11] = 0; // obj_end_message
global.__objectDepths[12] = -10; // obj_end_message_blades
global.__objectDepths[13] = 0; // obj_endgame
global.__objectDepths[14] = 0; // obj_exit
global.__objectDepths[15] = 0; // obj_exit_door
global.__objectDepths[16] = 0; // obj_fire
global.__objectDepths[17] = 0; // obj_floor
global.__objectDepths[18] = 0; // obj_highscore
global.__objectDepths[19] = 0; // obj_light
global.__objectDepths[20] = 0; // obj_movement_boost
global.__objectDepths[21] = 0; // obj_movement_boost_blade
global.__objectDepths[22] = 0; // obj_pixel
global.__objectDepths[23] = 0; // obj_pixelated_part_blade
global.__objectDepths[24] = 0; // obj_player
global.__objectDepths[25] = 0; // obj_red_carpet
global.__objectDepths[26] = 0; // obj_score
global.__objectDepths[27] = 0; // obj_timer
global.__objectDepths[28] = 0; // obj_wall
global.__objectDepths[29] = 0; // obj_white_knife_blade
global.__objectDepths[30] = 0; // obj_white_knife_death
global.__objectDepths[31] = 0; // obj_white_knife_death_blade
global.__objectDepths[32] = 0; // object_box
global.__objectDepths[33] = 0; // object_bulb
global.__objectDepths[34] = 0; // object_light
global.__objectDepths[35] = 0; // object0
global.__objectDepths[36] = 0; // object1
global.__objectDepths[37] = 0; // object4
global.__objectDepths[38] = 0; // object6
global.__objectDepths[39] = 0; // objecttemp
global.__objectDepths[40] = 0; // spinning_blade_object_x
global.__objectDepths[41] = 0; // spinning_blade_object_y
global.__objectDepths[42] = 0; // obj_poop
global.__objectDepths[43] = 0; // obj_stickman
global.__objectDepths[44] = 0; // obj_swirl


global.__objectNames[0] = "bossObject";
global.__objectNames[1] = "obj_bestScore";
global.__objectNames[2] = "obj_boss";
global.__objectNames[3] = "obj_box_one";
global.__objectNames[4] = "obj_box_pixel";
global.__objectNames[5] = "obj_box_pixelated";
global.__objectNames[6] = "obj_bullet";
global.__objectNames[7] = "obj_door";
global.__objectNames[8] = "object48";
global.__objectNames[9] = "obj_door_blade";
global.__objectNames[10] = "obj_door_dodge";
global.__objectNames[11] = "obj_end_message";
global.__objectNames[12] = "obj_end_message_blades";
global.__objectNames[13] = "obj_endgame";
global.__objectNames[14] = "obj_exit";
global.__objectNames[15] = "obj_exit_door";
global.__objectNames[16] = "obj_fire";
global.__objectNames[17] = "obj_floor";
global.__objectNames[18] = "obj_highscore";
global.__objectNames[19] = "obj_light";
global.__objectNames[20] = "obj_movement_boost";
global.__objectNames[21] = "obj_movement_boost_blade";
global.__objectNames[22] = "obj_pixel";
global.__objectNames[23] = "obj_pixelated_part_blade";
global.__objectNames[24] = "obj_player";
global.__objectNames[25] = "obj_red_carpet";
global.__objectNames[26] = "obj_score";
global.__objectNames[27] = "obj_timer";
global.__objectNames[28] = "obj_wall";
global.__objectNames[29] = "obj_white_knife_blade";
global.__objectNames[30] = "obj_white_knife_death";
global.__objectNames[31] = "obj_white_knife_death_blade";
global.__objectNames[32] = "object_box";
global.__objectNames[33] = "object_bulb";
global.__objectNames[34] = "object_light";
global.__objectNames[35] = "object0";
global.__objectNames[36] = "object1";
global.__objectNames[37] = "object4";
global.__objectNames[38] = "object6";
global.__objectNames[39] = "objecttemp";
global.__objectNames[40] = "spinning_blade_object_x";
global.__objectNames[41] = "spinning_blade_object_y";
global.__objectNames[42] = "obj_poop";
global.__objectNames[43] = "obj_stickman";
global.__objectNames[44] = "obj_swirl";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for