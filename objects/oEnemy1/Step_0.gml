if (instance_exists(oPlayer) && distance_to_object(oPlayer) <  aggro_range) {
	sprite_index = sEnemyAttack1;
	sEnemyAttack1.image_speed = .5
} else {
	sprite_index = sEnemy1;
	
}