hspeed = keyboard_check(vk_right) - keyboard_check(vk_left)
vspeed = keyboard_check(vk_down) - keyboard_check(vk_up)

attack = keyboard_check(vk_space)

if (hspeed != 0) image_xscale = hspeed

sprite_index = player_sprites[state]

switch(state) {
	case states.idle:
		if (speed != 0) state = states.walk
		
		if (attack) state = states.attack
		break
	case states.walk:
		if (speed == 0) state = states.idle
		
		if (attack) state = states.attack
		break

	case states.attack:
	
		if (alarm[0] == -1) alarm[0] = 15
		break

}
