/// @description Handles the logic between objects

// When the timer is expired, user can no longer enter text
if (obj_wordTimer.roundTime <= 0)
{
	obj_text_box.active_box = false;
}

// Stop counting round timer if user submits answer
if (obj_text_box.stored_text != "")
{
	obj_wordTimer.roundTime = 0;
}


// Resarts the round after a delay
if (restartRound && restartRoundTimer > 0)
{
	restartRoundTimer--;
}

// Now restart round
if (restartRound && restartRoundTimer == 0)
{
	// Clear the text
	keyboard_string = "";
	obj_text_box.stored_text = "";
	obj_text_box.text = "";
	
	// Reset the text box if there are still more rounds
	if (currentIteration < maxIteration)
	{
		obj_wordTimer.roundTime = obj_wordTimer.startingRoundTime;
		obj_text_box.stored_text = "";
		obj_text_box.active_box = true;
		obj_rat.attacked_yet = false;
		restartRound = false;
		restartRoundTimer = roundDelay;	
	}

	
	// Advance dialogue
	if (currentIteration <= maxIteration)
	{
		currentIteration++;
	}
	
	// Player loses
	if (currentIteration > maxIteration)
	{
		audio_stop_sound(background);
		
		if (playedLost == false)
		{
			audio_play_sound(lose, 1, false);
			playedLost = true;
		}

	}
}


