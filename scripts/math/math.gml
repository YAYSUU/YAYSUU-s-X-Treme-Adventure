function circsmooth(val){
	return sqrt(1-sqr(val-1))
}
function invertcircsmooth(val){
	return 1-sqrt(1-sqr(val))
}
function isbetween(val, a, b){
	return (val > min(a, b)) && (val < max(a, b))
}