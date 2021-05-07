/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 1CC33D99
/// @DnDArgument : "soundid" "sfx_boss_ambience"
/// @DnDSaveInfo : "soundid" "4efe8d2f-aebf-4047-ab18-845f60f71d7b"
audio_play_sound(sfx_boss_ambience, 0, 0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 39E4C79C
/// @DnDArgument : "steps" "room_speed "
/// @DnDArgument : "alarm" "3"
alarm_set(3, room_speed );

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 713F8A7D
/// @DnDArgument : "steps" "room_speed * 2"
/// @DnDArgument : "alarm" "2"
alarm_set(2, room_speed * 2);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 706C771D
/// @DnDArgument : "steps" "room_speed * 12"
alarm_set(0, room_speed * 12);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3E3019DA
/// @DnDArgument : "steps" "room_speed * 6"
/// @DnDArgument : "alarm" "1"
alarm_set(1, room_speed * 6);

/// @DnDAction : YoYo Games.Paths.Start_Path
/// @DnDVersion : 1.1
/// @DnDHash : 2B7C34DC
/// @DnDArgument : "path" "boss_path"
/// @DnDArgument : "speed" "-1"
/// @DnDArgument : "atend" "path_action_reverse"
/// @DnDSaveInfo : "path" "9759a700-3e54-4816-b94c-1790734d820b"
path_start(boss_path, -1, path_action_reverse, false);

/// @DnDAction : YoYo Games.Paths.Path_Position
/// @DnDVersion : 1
/// @DnDHash : 0F94F7BC
/// @DnDArgument : "position" ".5"
path_position = .5;