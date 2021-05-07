/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 3A23942F
/// @DnDArgument : "soundid" "snd_lvl_music_1"
/// @DnDSaveInfo : "soundid" "9ba5f318-3fd2-4503-a307-1b8005650eb7"
audio_stop_sound(snd_lvl_music_1);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 55681286
/// @DnDArgument : "xpos" "6048"
/// @DnDArgument : "objectid" "obj_boss_controller"
/// @DnDSaveInfo : "objectid" "c40f4297-22d2-482f-8e26-0545a3f1bf1e"
instance_create_layer(6048, 0, "Instances", obj_boss_controller);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 36352477
/// @DnDArgument : "xpos" "6048"
/// @DnDArgument : "ypos" "448"
/// @DnDArgument : "objectid" "obj_boss_1"
/// @DnDSaveInfo : "objectid" "085292e7-3f84-4598-aa47-3aaa3c351f33"
instance_create_layer(6048, 448, "Instances", obj_boss_1);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 306E4D53
instance_destroy();