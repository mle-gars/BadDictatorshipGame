cameraMain = camera_create_view(0, 0, 640, 360, 0, objMainCharacter, -1, -1, 320, 120)

view_camera[0] = cameraMain;


var near = layer_get_id("Background1_4");
var distant = layer_get_id("Background1_3");
var farAway = layer_get_id("Background1_2");
