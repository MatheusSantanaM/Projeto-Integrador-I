

// Obj_camera seguir o player
x = lerp(x,alvo.x,0.1)
y = lerp(y,alvo.y,0.1)

// Posicionando camera
var _width_camera = camera_get_view_width(view_camera[0])
var _height_camera = camera_get_view_height(view_camera[0])
// Colocando a camera no meio mas um pouco abaixo do y
var recuo_y = 300
var _cam_x = x - _width_camera / 2 
var _cam_y = y - _height_camera / 2 - recuo_y


// Limitando camera dentro da room
_cam_x = clamp(_cam_x,0,room_width - _width_camera)
_cam_y = clamp(_cam_y,0,room_height - _height_camera)

// camera seguir player
camera_set_view_pos(view_camera[0],_cam_x,_cam_y)