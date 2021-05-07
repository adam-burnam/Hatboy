/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5AD6B8DD
/// @DnDArgument : "expr" "place_meeting(x, y+1, obj_solid_struc) == 1"
if(place_meeting(x, y+1, obj_solid_struc) == 1)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 18F20D59
	/// @DnDParent : 5AD6B8DD
	/// @DnDArgument : "soundid" "sfx_jump"
	/// @DnDSaveInfo : "soundid" "74872b20-5244-4253-96d4-12171119b932"
	audio_play_sound(sfx_jump, 0, 0);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3AEE3837
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6880C091
	/// @DnDParent : 3AEE3837
	/// @DnDArgument : "expr" "jumps > 0"
	if(jumps > 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 05DDEEAB
		/// @DnDParent : 6880C091
		/// @DnDArgument : "soundid" "sfx_jump"
		/// @DnDSaveInfo : "soundid" "74872b20-5244-4253-96d4-12171119b932"
		audio_play_sound(sfx_jump, 0, 0);
	}
}