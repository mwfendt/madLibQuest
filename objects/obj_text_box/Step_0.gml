/// @description Handle input

// Limits text to a certain number of characters
if (keyboard_check(vk_anykey) and string_length(text) < text_limit) {
	text += string(keyboard_string);
	keyboard_string = "";
}

// Deletes muliple 
if (keyboard_check(vk_backspace) && !keyboard_check_pressed(vk_backspace) && delete_timer = delete_timer_limit) {
	text = string_delete(text, string_length(text), 1);
	delete_timer = 0;
	keyboard_string = "";
}

// Deletes a single character
if (keyboard_check_pressed(vk_backspace)) {
	text = string_delete(text, string_length(text), 1);	
	keyboard_string = "";
	delete_timer = -4; // Gives a cooldown on the deletion
}

// Handle timer update
if (delete_timer != delete_timer_limit) {
	delete_timer++;
}

// Restart the round when the user presses enter if the rat is still alive
if (keyboard_check_pressed(vk_enter) && !obj_text_box.active_box && obj_rat.status != "dead")
{
	obj_GameLogic.restartRound = true;
	//obj_text_box.stored_text = "RESTARTING";
}

// Submits answer when the user presses enter
if (keyboard_check_pressed(vk_enter) && active_box)
{
	stored_text = text;
	active_box = false;
	
	// Deals damage to the monster
	scr_damage_monster();
	
}

