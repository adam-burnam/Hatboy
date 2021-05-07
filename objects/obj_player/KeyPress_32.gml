/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 47FADB2C
/// @DnDArgument : "var" "invuln"
if(invuln == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 14040DD0
	/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
	/// @DnDParent : 47FADB2C
	/// @DnDArgument : "var" "has_viking"
	/// @DnDArgument : "op" "2"
	with(obj_player_controller) var l14040DD0_0 = has_viking > 0;
	if(l14040DD0_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 73D62EA0
		/// @DnDParent : 14040DD0
		/// @DnDArgument : "var" "can_attack"
		/// @DnDArgument : "value" "1"
		if(can_attack == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55457506
			/// @DnDParent : 73D62EA0
			/// @DnDArgument : "var" "obj_player.image_xscale > 0"
			if(obj_player.image_xscale > 0 == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 768F7B78
				/// @DnDParent : 55457506
				/// @DnDArgument : "xpos" "-8"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_axe"
				/// @DnDArgument : "layer" ""instance_player""
				/// @DnDSaveInfo : "objectid" "5efb4cde-8f51-4ba5-b26e-76c7ff44c8ee"
				instance_create_layer(x + -8, y + 0, "instance_player", obj_axe);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 367B712E
				/// @DnDParent : 55457506
				/// @DnDArgument : "soundid" "sfx_axe_throw"
				/// @DnDSaveInfo : "soundid" "cdce6393-a076-46da-9f01-21ae57aa8e03"
				audio_play_sound(sfx_axe_throw, 0, 0);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 506440B2
			/// @DnDParent : 73D62EA0
			else
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 6A76DBB9
				/// @DnDParent : 506440B2
				/// @DnDArgument : "xpos" "8"
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_axe"
				/// @DnDArgument : "layer" ""instance_player""
				/// @DnDSaveInfo : "objectid" "5efb4cde-8f51-4ba5-b26e-76c7ff44c8ee"
				instance_create_layer(x + 8, y + 0, "instance_player", obj_axe);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 0E55FD1D
				/// @DnDParent : 506440B2
				/// @DnDArgument : "soundid" "sfx_axe_throw"
				/// @DnDSaveInfo : "soundid" "cdce6393-a076-46da-9f01-21ae57aa8e03"
				audio_play_sound(sfx_axe_throw, 0, 0);
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4189528D
			/// @DnDParent : 73D62EA0
			/// @DnDArgument : "var" "can_attack"
			can_attack = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 00A2EFEE
			/// @DnDParent : 73D62EA0
			/// @DnDArgument : "steps" "room_speed  * 0.5"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, room_speed  * 0.5);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 037E83C9
	/// @DnDParent : 47FADB2C
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 4BF3A28B
		/// @DnDParent : 037E83C9
		/// @DnDArgument : "var" "can_attack"
		/// @DnDArgument : "value" "1"
		if(can_attack == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1881E56C
			/// @DnDParent : 4BF3A28B
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_pebble"
			/// @DnDArgument : "layer" ""instance_player""
			/// @DnDSaveInfo : "objectid" "1363a039-ef02-49c8-a673-a5e672c87da2"
			instance_create_layer(x + 0, y + 0, "instance_player", obj_pebble);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70A34474
			/// @DnDParent : 4BF3A28B
			/// @DnDArgument : "var" "can_attack"
			can_attack = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 1F88B34D
			/// @DnDParent : 4BF3A28B
			/// @DnDArgument : "steps" "room_speed  * 0.5"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, room_speed  * 0.5);
		}
	}
}