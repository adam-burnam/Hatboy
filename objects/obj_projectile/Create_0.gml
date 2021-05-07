/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 663E03CE
/// @DnDArgument : "code" "direction = point_direction(x,y,obj_player.x,obj_player.y)"
direction = point_direction(x,y,obj_player.x,obj_player.y)

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 1BF57DED
/// @DnDArgument : "speed" "8"
speed = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FB802AE
/// @DnDArgument : "expr" "0.5"
/// @DnDArgument : "var" "image_xscale"
image_xscale = 0.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4311E90E
/// @DnDArgument : "expr" "0.5"
/// @DnDArgument : "var" "image_yscale"
image_yscale = 0.5;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4631BE3F
/// @DnDArgument : "steps" "room_speed "
alarm_set(0, room_speed );