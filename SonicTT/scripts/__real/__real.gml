// source: https://yal.cc/gamemaker-checking-whether-a-string-is-a-valid-number/
var str = argument0;

var length = string_byte_length(str);
var hasDot = false;
var hasExp = false;
var digits = 0;

for (var index = 1; index <= length; ++index) {
	var char = string_byte_at(str, index);
	switch (char) {
	case ord("-"):
		if (index > 1) return 0;
		break;
	case ord("."):
		if (hasDot or hasExp) return 0;
		hasDot = true;
		break;
	case ord("e"):
	case ord("E"):
		if (hasExp or digits == 0) return 0;
		hasExp = true;
		break;
	default:
		if (char >= ord("0") and char <= ord("9")) {
			++digits;
		} else {
			return 0;
		}
	}
}

if (digits > 0) {
	return real(str);
}

return 0;