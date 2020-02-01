///@param string
var array = ds_list_create();

for (var i = 1; i <= string_length(argument0); i++){
	if(!is_digit(string_char_at(argument0,i))){
		ds_list_add(array,string_copy(argument0, i, 1));
	}
}

var stringie = "";

for(var i = 0; i < ds_list_size(array); i ++){
	stringie += ds_list_find_value(array, i);
}

return stringie;