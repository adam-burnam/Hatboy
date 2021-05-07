/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3212E9AF
/// @DnDArgument : "soundid" "sfx_swoosh"
/// @DnDSaveInfo : "soundid" "8f30f065-bf3c-4f65-bd01-717cab992ef7"
audio_play_sound(sfx_swoosh, 0, 0);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 74818ACA
/// @DnDArgument : "steps" "room_speed "
alarm_set(0, room_speed );

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 11C31CAB
/// @DnDArgument : "expr" "obj_player.image_xscale > 0"
if(obj_player.image_xscale > 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0E90D3E0
	/// @DnDParent : 11C31CAB
	/// @DnDArgument : "speed" "obj_player.movement_speed + 2"
	/// @DnDArgument : "type" "1"
	hspeed = obj_player.movement_speed + 2;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64BF33E4
	/// @DnDParent : 11C31CAB
	/// @DnDArgument : "expr" "0.35"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = 0.35;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A5BCF91
	/// @DnDParent : 11C31CAB
	/// @DnDArgument : "expr" "0.35"
	/// @DnDArgument : "var" "image_yscale"
	image_yscale = 0.35;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3E18B836
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 410B6D10
	/// @DnDParent : 3E18B836
	/// @DnDArgument : "speed" "(-1) * obj_player. movement_speed - 2"
	/// @DnDArgument : "type" "1"
	hspeed = (-1) * obj_player. movement_speed - 2;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 395C935A
	/// @DnDParent : 3E18B836
	/// @DnDArgument : "expr" ".35"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = .35;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E219013
	/// @DnDParent : 3E18B836
	/// @DnDArgument : "expr" ".35"
	/// @DnDArgument : "var" "image_yscale"
	image_yscale = .35;
}