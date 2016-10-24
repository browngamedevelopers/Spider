/// atan2(x, y)

var x1 = argument0;
var y1 = argument1;

if (x1 > 0) {
    return arctan(y1 / x1);
} else if (x1 < 0 and y1 >= 0) {
    return arctan(y1 / x1) + pi; 
} else if (x1 < 0 and y1 < 0) {
    return arctan(y1 / x1) - pi;
} else if (x1 == 0 and y1 > 0) {
    return pi / 2;
} else if (x1 == 0 and y1 < 0) {
    return -pi / 2; 
}

