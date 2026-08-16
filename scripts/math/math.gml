function circsmooth(val){
	return sqrt(1-sqr(val-1))
}
function invertcircsmooth(val){
	return 1-sqrt(1-sqr(val))
}