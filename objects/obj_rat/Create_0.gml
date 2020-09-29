/// @description Set up initial variables

name = "Rat";
status = "idle";
attacked_yet = false; // Switch on when rat attacks
hp = 2;

// Dialogue text
rat_call_text = ["Coming across a <adjective> rat",
				"We <verb> ourselves, ready for battle",
				"But not before the rat <adverb> attacked",
				"And sent us all packing!"];

rat_response_text = ["we crushed it beneath our boots!",
					"(it was barely worth the effort!)",
					"and gave us quite a scare!"];

instance_create_layer(x + (sprite_width / 2), y + sprite_height + 15, "Instances", obj_enemy_health);


