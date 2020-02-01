/// @description Insert description here
// You can write your code in this editor
if(image_index > image_number - 1) instance_destroy();

var wire = instance_place(x,y,oWire);
with(wire) {
	burnt = true;
}