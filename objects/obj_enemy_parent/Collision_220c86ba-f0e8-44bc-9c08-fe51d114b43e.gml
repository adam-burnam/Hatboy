/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 73E4B336
/// @DnDArgument : "expr" "dead == 0"
if(dead == 0)
{
	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 0DEA0B4F
	/// @DnDParent : 73E4B336
	/// @DnDArgument : "soundid" "sfx_npc_death"
	/// @DnDSaveInfo : "soundid" "4d87419f-0552-405d-ab02-ea4d16a88dd7"
	audio_play_sound(sfx_npc_death, 0, 0);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7476F2C6
	/// @DnDParent : 73E4B336
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "dead"
	dead = 1;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 3DFB1FE0
	/// @DnDParent : 73E4B336
	/// @DnDArgument : "speed" "-10"
	/// @DnDArgument : "type" "2"
	vspeed = -10;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 28945EC9
	/// @DnDParent : 73E4B336
	/// @DnDArgument : "expr" "self.x > other.x"
	if(self.x > other.x)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 66A7CD68
		/// @DnDParent : 28945EC9
		/// @DnDArgument : "speed" "-5"
		/// @DnDArgument : "type" "1"
		hspeed = -5;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 309CDF16
	/// @DnDParent : 73E4B336
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 65C9CD1F
		/// @DnDParent : 309CDF16
		/// @DnDArgument : "speed" "5"
		/// @DnDArgument : "type" "1"
		hspeed = 5;
	}

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
	/// @DnDVersion : 1
	/// @DnDHash : 01DCBB76
	/// @DnDParent : 73E4B336
	gravity = 1;

	/// @DnDAction : YoYo Games.Movement.Set_Gravity_Direction
	/// @DnDVersion : 1
	/// @DnDHash : 15BCD205
	/// @DnDParent : 73E4B336
	/// @DnDArgument : "direction" "270"
	gravity_direction = 270;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 013023D0
	/// @DnDParent : 73E4B336
	/// @DnDArgument : "steps" "1"
	alarm_set(0, 1);
}