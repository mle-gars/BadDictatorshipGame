
var near = layer_get_id("Background_4");
var distant = layer_get_id("Background_3");
var farAway = layer_get_id("Background_2");

layer_x(near, lerp(0, camera_get_view_x(view_camera[0]), 0.5 )	);
layer_x(distant, lerp(0, camera_get_view_x(view_camera[0]), 0.7 )	);
layer_x(farAway, lerp(0, camera_get_view_x(view_camera[0]), 0.9 )	);

