/// @DnDAction : YoYo Games.Audio.Stop_Audio
/// @DnDVersion : 1
/// @DnDHash : 5F2E55A6
/// @DnDArgument : "soundid" "snd_lvl_music_1"
/// @DnDSaveInfo : "soundid" "9ba5f318-3fd2-4503-a307-1b8005650eb7"
audio_stop_sound(snd_lvl_music_1);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7BCB8381
/// @DnDArgument : "soundid" "sfx_portal"
/// @DnDSaveInfo : "soundid" "308ec957-c3c0-4608-9eda-ee0f86e3221d"
audio_play_sound(sfx_portal, 0, 0);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6C40E977
/// @DnDArgument : "expr" "obj_player_controller.has_beanie"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_beanies"
obj_score_controller.total_beanies += obj_player_controller.has_beanie;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7115531D
/// @DnDArgument : "expr" "obj_player_controller.has_bowler"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_bowlers"
obj_score_controller.total_bowlers += obj_player_controller.has_bowler;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4FDA4A49
/// @DnDArgument : "expr" "obj_player_controller.has_top"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_tops"
obj_score_controller.total_tops += obj_player_controller.has_top;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 27682132
/// @DnDArgument : "expr" "obj_player_controller.has_viking"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_vikings"
obj_score_controller.total_vikings += obj_player_controller.has_viking;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 069C035C
/// @DnDArgument : "expr" "obj_player_controller.has_viking + obj_player_controller.has_beanie  + obj_player_controller.has_bowler + obj_player_controller.has_top"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_hats"
obj_score_controller.total_hats += obj_player_controller.has_viking + obj_player_controller.has_beanie  + obj_player_controller.has_bowler + obj_player_controller.has_top;

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1BFB0143
/// @DnDApplyTo : 75a8ff57-500d-479c-b4b9-9eae73e9b2af
with(obj_hat) instance_destroy();

/// @DnDAction : YoYo Games.Rooms.Next_Room
/// @DnDVersion : 1
/// @DnDHash : 713924D8
room_goto_next();