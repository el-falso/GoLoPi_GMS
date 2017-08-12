/// @description Insert description here
// You can write your code in this editor

if (showText == 1) {
	if (fadeIn) {
		if (alpha <= 1) {
			alpha += 0.05;
		}
		else { 
			alpha = 1;
			fadeIn = false;
		}
	}
	else {
		if (alpha >= 0 && alpha <= 1) {
			alpha -= 0.05;
		}
		else if (alpha <= 0) {
			alpha = 0;
			showText = 0;
			fadeIn = true;
		}
	}
}