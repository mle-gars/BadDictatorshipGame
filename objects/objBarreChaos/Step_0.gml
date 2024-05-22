

// Vérifie si la room actuelle est room0
if (room == RoomEnd) {
    instance_destroy();
} else {
    
    var margin_x = 500; 
    var margin_y = 5; 
    x = camera_get_view_x(view_camera[0]) + margin_x;
    y = camera_get_view_y(view_camera[0]) + margin_y;


    if (global.chaos >= 0 && global.chaos < 2) {
        image_index = 0; 
    } else if (global.chaos >= 2 && global.chaos < 4) {
        image_index = 1; 
    } else if (global.chaos >= 4 && global.chaos < 6) {
        image_index = 2; 
    } else if (global.chaos >= 6 && global.chaos < 8) {
        image_index = 3; 
    } else if (global.chaos >= 8 && global.chaos < 10) {
        image_index = 4; 
    } else if (global.chaos == 10) {
        image_index = 5;
    }
}