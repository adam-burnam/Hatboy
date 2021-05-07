/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 548215FF
/// @DnDArgument : "expr" "obj_score_controller.total_hats == 0"
if(obj_score_controller.total_hats == 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 461AFE5C
	/// @DnDParent : 548215FF
	/// @DnDArgument : "code" "image_index = 3;"
	image_index = 3;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7F3D91F2
	/// @DnDApplyTo : e5cb8214-0d09-4b39-bdea-18bca551aac6
	/// @DnDParent : 548215FF
	/// @DnDArgument : "spriteind" "npc_mad_r"
	/// @DnDSaveInfo : "spriteind" "c7cddfc3-b788-46c3-a6eb-f7dc8d16d4b8"
	with(npc) {
	sprite_index = npc_mad_r;
	image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 4E3DEEC5
/// @DnDArgument : "expr" "obj_score_controller.total_hats > 0 && obj_score_controller.total_hats <= 19"
if(obj_score_controller.total_hats > 0 && obj_score_controller.total_hats <= 19)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 7AEEDB4C
	/// @DnDParent : 4E3DEEC5
	/// @DnDArgument : "code" "image_index = 4;"
	image_index = 4;

	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 78CF9B13
	/// @DnDApplyTo : e5cb8214-0d09-4b39-bdea-18bca551aac6
	/// @DnDParent : 4E3DEEC5
	/// @DnDArgument : "spriteind" "npc_r"
	/// @DnDSaveInfo : "spriteind" "feb6347f-7fbc-4797-9bf8-76a27b971f6e"
	with(npc) {
	sprite_index = npc_r;
	image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 1847EE18
/// @DnDArgument : "expr" "obj_score_controller.total_hats > 19 && obj_score_controller.total_hats <= 37"
if(obj_score_controller.total_hats > 19 && obj_score_controller.total_hats <= 37)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 207230B5
	/// @DnDParent : 1847EE18
	/// @DnDArgument : "code" "image_index = 5;"
	image_index = 5;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 3F4BC314
/// @DnDArgument : "expr" "obj_score_controller.total_hats > 37"
if(obj_score_controller.total_hats > 37)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 2670D9C4
	/// @DnDParent : 3F4BC314
	/// @DnDArgument : "code" "image_index = 6;"
	image_index = 6;
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7BCBAE21
/// @DnDArgument : "soundid" "npc_voice"
/// @DnDSaveInfo : "soundid" "f68552c0-f418-401f-89bc-b306b2044359"
audio_play_sound(npc_voice, 0, 0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5A6C4384
/// @DnDArgument : "steps" "200"
/// @DnDArgument : "alarm" "4"
alarm_set(4, 200);