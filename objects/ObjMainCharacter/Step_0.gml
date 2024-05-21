/// @description Insert description here
// You can write your code in this editor
/// @description Gestion du mouvement et des animations

// Mouvement
var moveSpeed = hSpeed;
var isMoving = false;

if (keyboard_check(vk_control)) {
    moveSpeed = hSpeed * 2;
    playstate = "Run";
} else {
    playstate = "Walk";
}

if (keyboard_check(vk_right)) {
    x += moveSpeed;
    image_xscale = 1;
    isMoving = true;
} else if (keyboard_check(vk_left)) {
    x -= moveSpeed;
    image_xscale = -1;
    isMoving = true;
} else if (keyboard_check(vk_up)) {
    y -= moveSpeed;
    isMoving = true;
} else if (keyboard_check(vk_down)) {
    y += moveSpeed;
    isMoving = true;
}

if (!isMoving) {
    playstate = "Idle";
}

// Changer le sprite en fonction de l'état du personnage
if (playstate == "Walk") {
    sprite_index = SprMainCharacterWalk
} else if (playstate == "Idle") {
    sprite_index = sprMainCharacterIdl;
} else if (playstate == "Run") {
    sprite_index = sprMainCharacterRun;
}
