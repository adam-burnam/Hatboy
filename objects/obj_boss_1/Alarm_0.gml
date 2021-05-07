/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 011C21ED
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_enemy_fly"
/// @DnDSaveInfo : "objectid" "59f6d6d9-e8d0-4d21-aba1-7cb447667109"
instance_create_layer(x + 0, y + 0, "Instances", obj_enemy_fly);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 74A3D46B
/// @DnDArgument : "steps" "room_speed * 12"
alarm_set(0, room_speed * 12);