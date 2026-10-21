// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function casescramble(text){
	returntext=""
	for (var i=1; i<=string_length(text); i++)
	{
		var letter = string_char_at(text,i)
		returntext += choose(string_upper(letter),string_lower(letter))
	}
	return returntext;
}
function scramble(text){
	returntext=""
	var validchars="()[]!#$%'*,.:-/+?@^abcdefghijklmnopqrstuvwxyz~{}0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	for (var i=1; i<=string_length(text); i++)
	{
		if string_char_at(text,i)!=" "
			returntext+=validchars[irandom_range(1,string_length(validchars))]
		else
			returntext+=" "
	}
	return returntext;
}
function breaktext(length){//my more realism one!
	returntext=""
	//var validchars="()[]!#$%'*,.:-/+?@^abcdefghijklmnopqrstuvwxyz~{}0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	for (var i=1; i<=length; i++)
	{
		returntext+=chr(irandom_range(1,254))
	}
	return returntext;
}