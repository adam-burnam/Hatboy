/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1ADC35AE
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2F9D626A
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_player_dead"
/// @DnDSaveInfo : "objectid" "d018fff2-96ca-454a-a875-10cae26cbf9c"
instance_create_layer(x + 0, y + 0, "Instances", obj_player_dead);