	// Deals damage to the rat
	num_damage = 0;
	for (i = 1; i <= string_length(stored_text); i++)
	{
		for (j = 0; j < obj_GameLogic.num_letters; j++)
		{
			if (string_char_at(stored_text, i) == obj_GameLogic.letters[j])
			{
				num_damage++;	
			}
		}
	}
	
	obj_rat.hp -= num_damage;