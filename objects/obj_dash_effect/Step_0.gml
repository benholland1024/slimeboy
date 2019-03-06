//fade sprite
if (image_alpha > 0) {
	image_alpha -= .5;
} else if (image_alpha == 0) {
	instance_destroy();
}