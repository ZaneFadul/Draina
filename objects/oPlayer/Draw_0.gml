/// @description Insert description here
// You can write your code in this editor
draw_self();
	if(damageCooldown > 0 && !dead){
		shader_set(shDamaged);
		draw_self();
		shader_reset();
	}
	if(flash > 0 && !dead){
		flash --;
		shader_set(shFlash);
		draw_self();
		shader_reset();
	} 
	shader_reset();