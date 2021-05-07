/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 18D7FAA6
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "192"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_zombie"
/// @DnDSaveInfo : "objectid" "c9a4658e-0822-4f32-9cf9-262504e2f399"
instance_create_layer(x + 0, y + 192, "Instances", obj_zombie);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 252662B8
/// @DnDArgument : "steps" "room_speed * 6"
/// @DnDArgument : "alarm" "1"
alarm_set(1, room_speed * 6);