/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 59AB9812
/// @DnDArgument : "var" "invuln"
if(invuln == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 02F078A9
	/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
	/// @DnDParent : 59AB9812
	/// @DnDArgument : "var" "has_viking"
	/// @DnDArgument : "op" "2"
	with(obj_player_controller) var l02F078A9_0 = has_viking > 0;
	if(l02F078A9_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 38AF5092
		/// @DnDParent : 02F078A9
		/// @DnDArgument : "var" "can_attack"
		/// @DnDArgument : "value" "1"
		if(can_attack == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DA0E6AF
			/// @DnDParent : 38AF5092
			/// @DnDArgument : "var" "obj_player.image_xscale > 0"
			if(obj_player.image_xscale > 0 == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6FC64252
				/// @DnDParent : 3DA0E6AF
				/// @DnDArgument : "xpos" "-8"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_axe"
				/// @DnDArgument : "layer" ""instance_player""
				/// @DnDSaveInfo : "objectid" "5efb4cde-8f51-4ba5-b26e-76c7ff44c8ee"
				instance_create_layer(x + -8, y + 0, "instance_player", obj_axe);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 3F9B4E91
				/// @DnDParent : 3DA0E6AF
				/// @DnDArgument : "soundid" "sfx_axe_throw"
				/// @DnDSaveInfo : "soundid" "cdce6393-a076-46da-9f01-21ae57aa8e03"
				audio_play_sound(sfx_axe_throw, 0, 0);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 1F7A2D15
			/// @DnDParent : 38AF5092
			else
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6A882282
				/// @DnDParent : 1F7A2D15
				/// @DnDArgument : "xpos" "8"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_axe"
				/// @DnDArgument : "layer" ""instance_player""
				/// @DnDSaveInfo : "objectid" "5efb4cde-8f51-4ba5-b26e-76c7ff44c8ee"
				instance_create_layer(x + 8, y + 0, "instance_player", obj_axe);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 76990594
				/// @DnDParent : 1F7A2D15
				/// @DnDArgument : "soundid" "sfx_axe_throw"
				/// @DnDSaveInfo : "soundid" "cdce6393-a076-46da-9f01-21ae57aa8e03"
				audio_play_sound(sfx_axe_throw, 0, 0);
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 49B21958
			/// @DnDParent : 38AF5092
			/// @DnDArgument : "var" "can_attack"
			can_attack = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 01B2F5C2
			/// @DnDParent : 38AF5092
			/// @DnDArgument : "steps" "room_speed  * 0.5"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, room_speed  * 0.5);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 32976DC1
	/// @DnDParent : 59AB9812
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6852EF8B
		/// @DnDParent : 32976DC1
		/// @DnDArgument : "var" "can_attack"
		/// @DnDArgument : "value" "1"
		if(can_attack == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 73BA9AF0
			/// @DnDParent : 6852EF8B
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_pebble"
			/// @DnDArgument : "layer" ""instance_player""
			/// @DnDSaveInfo : "objectid" "1363a039-ef02-49c8-a673-a5e672c87da2"
			instance_create_layer(x + 0, y + 0, "instance_player", obj_pebble);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2C759D89
			/// @DnDParent : 6852EF8B
			/// @DnDArgument : "var" "can_attack"
			can_attack = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 12A5C9FD
			/// @DnDParent : 6852EF8B
			/// @DnDArgument : "steps" "room_speed  * 0.5"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, room_speed  * 0.5);
		}
	}
}