// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makepausesurf(){ // I Fucking Hate Surfaces I Hope I Never Have to Make Another One Again
	pausesurf=surface_create(surface_get_width(application_surface),surface_get_height(application_surface))
	surface_copy(pausesurf,0,0,application_surface)
}