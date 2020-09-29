/// @description Check for actions

testing = 0;

// Rat attacks when the timer reaches 0
if (obj_wordTimer.roundTime <= 0 && attacked_yet == false && status == "idle")
{
	sprite_index = spr_rat_attack;
	status = "attacking";
	audio_play_sound(hit, 1, false);
}

// Update health and health image
if (obj_text_box.stored_text != "")
{
	// Testing script that kills rat on any entry
	if (testing == 1)
	{
		obj_enemy_health.image_index = 2;
		sprite_index = spr_rat_death;
		status = "dead";
	}
	
	else {
		// Update health
		if (hp <= 0)
		{
			obj_enemy_health.image_index = 2;
			sprite_index = spr_rat_death;
			status = "dead";
			audio_stop_sound(background);
			
			if (obj_GameLogic.playedWin == false)
			{
				audio_play_sound(win, 1, false);
				obj_GameLogic.playedWin = true;
			}
			
		}
	
		else if (hp == 1)
		{
			obj_enemy_health.image_index = 1;
		}
	}
}

