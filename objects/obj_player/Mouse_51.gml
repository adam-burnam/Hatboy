/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 21B4F930
/// @DnDArgument : "var" "invuln"
if(invuln == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 40C035D4
	/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
	/// @DnDParent : 21B4F930
	/// @DnDArgument : "var" "has_viking"
	/// @DnDArgument : "op" "2"
	with(obj_player_controller) var l40C035D4_0 = has_viking > 0;
	if(l40C035D4_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 65054EA2
		/// @DnDParent : 40C035D4
		/// @DnDArgument : "var" "can_attack"
		/// @DnDArgument : "value" "1"
		if(can_attack == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5E2F5010
			/// @DnDParent : 65054EA2
			/// @DnDArgument : "var" "obj_player.image_xscale > 0"
			if(obj_player.image_xscale > 0 == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 744D0D93
				/// @DnDParent : 5E2F5010
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_slash_attack"
				/// @DnDArgument : "layer" ""instance_player""
				/// @DnDSaveInfo : "objectid" "d6641b0f-a365-42aa-98dd-546910f25158"
				instance_create_layer(x + 0, y + 0, "instance_player", obj_slash_attack);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 1368F873
				/// @DnDParent : 5E2F5010
				/// @DnDArgument : "soundid" "sfx_axe_throw"
				/// @DnDSaveInfo : "soundid" "cdce6393-a076-46da-9f01-21ae57aa8e03"
				audio_play_sound(sfx_axe_throw, 0, 0);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 307EB268
			/// @DnDParent : 65054EA2
			else
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 396AB23E
				/// @DnDParent : 307EB268
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_slash_attack"
				/// @DnDArgument : "layer" ""instance_player""
				/// @DnDSaveInfo : "objectid" "d6641b0f-a365-42aa-98dd-546910f25158"
				instance_create_layer(x + 0, y + 0, "instance_player", obj_slash_attack);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 079F0E37
				/// @DnDParent : 307EB268
				/// @DnDArgument : "soundid" "sfx_axe_throw"
				/// @DnDSaveInfo : "soundid" "cdce6393-a076-46da-9f01-21ae57aa8e03"
				audio_play_sound(sfx_axe_throw, 0, 0);
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 060D38CB
			/// @DnDParent : 65054EA2
			/// @DnDArgument : "var" "can_attack"
			can_attack = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 057D67DA
			/// @DnDParent : 65054EA2
			/// @DnDArgument : "steps" "room_speed *2"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, room_speed *2);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2278660C
	/// @DnDParent : 21B4F930
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 31962949
		/// @DnDParent : 2278660C
		/// @DnDArgument : "var" "can_attack"
		/// @DnDArgument : "value" "1"
		if(can_attack == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 65BAA976
			/// @DnDParent : 31962949
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_pebble"
			/// @DnDArgument : "layer" ""instance_player""
			/// @DnDSaveInfo : "objectid" "1363a039-ef02-49c8-a673-a5e672c87da2"
			instance_create_layer(x + 0, y + 0, "instance_player", obj_pebble);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0C63204D
			/// @DnDParent : 31962949
			/// @DnDArgument : "var" "can_attack"
			can_attack = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 37AFB1F7
			/// @DnDParent : 31962949
			/// @DnDArgument : "steps" "room_speed  * 0.5"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, room_speed  * 0.5);
		}
	}
}