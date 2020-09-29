/// @description Draws inter-object information

// Draw title
draw_text(title_x, title_y, game_title);

// Draws the call in relation to the text box
draw_text(obj_text_box.x, obj_text_box.y - 100, obj_rat.rat_call_text[currentIteration]);
/*
if (obj_rat.status != "dead")
{
	create_textevent(obj_rat.rat_call_text[currentIteration], 
	-1, 
	-1, 
	-1, 
	-1, 
	-1, 
	-1, 
	-1, 
	-1, 
	-1);
}
*/

// If enemy is dead, display response text
if (obj_rat.status == "dead")
{
	//create_textevent(obj_rat.rat_response_text[currentIteration], -1);
	draw_text(obj_text_box.x, obj_text_box.y + 100, obj_rat.rat_response_text[currentIteration]);
}


// Draw the user submitted text to the side of the screen
draw_text(user_answer_x, user_answer_y, "Your answer: " + obj_text_box.stored_text);

// Draws user letters to screen
display_letters = "";
for (i = 0; i < num_letters; i++)
{
	display_letters += letters[i] + " ";	
}
draw_text(letters_x, letters_y, "Your letters: " + display_letters);