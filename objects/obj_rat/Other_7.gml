/// @description Insert description here
// You can write your code in this editor


// After the rat is done attacking, switch it back to idle
if (sprite_index = spr_rat_attack)
{
	//obj_text_box.stored_text = "Done Attack";
	attacked_yet = true;
	status = "idle";
	sprite_index = spr_rat_idle;
}

// After the rat dies, stop it from moving
else if (sprite_index = spr_rat_death)
{
	image_index = image_number - 1;
	image_speed = 0;
}
	