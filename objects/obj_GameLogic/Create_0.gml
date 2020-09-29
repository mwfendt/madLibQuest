/// @description Sets vars for the objects to use

// Location of game title
title_x = room_width / 2;
title_y = 50;
game_title = "Mad Libs Quest"

// Where the user answer is displayed
user_answer_x = 800;
user_answer_y = 200;

// Where text prompt is displayed
//prompt_x = 100;
//prompt_y = 400;
//prompt_color = c_red;

// For looping dialgoue
currentIteration = 0;
maxIteration = 2;
restartRound = false;
restartRoundTimer = 60;

// Delay in frames between starting a new round
roundDelay = 60;

// Initial character letters
letters = ["s", "t", "a", "e"];
num_letters = 4;
letters_x = 100;
letters_y = 200;

// Play background sound
// Licensed CC-BY. Attribute to Avgvst.
audio_play_sound(background, 1, true);
playedLost = false;
playedWin  = false;