/// @description Insert description here
// You can write your code in this editor
var i;
for(i = 0; i < ds_list_size(triggersToDelete); i++){
	if(instance_exists(triggersToDelete[| i])){
		//show_debug_message("here are triggers " + string(triggersToDelete[| i]));
		instance_destroy(triggersToDelete[| i]);
	}
}

