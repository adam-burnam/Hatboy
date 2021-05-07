/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 15087C45
/// @DnDArgument : "var" "invuln"
if(invuln == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28E495CE
	/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
	/// @DnDParent : 15087C45
	/// @DnDArgument : "var" "has_viking"
	/// @DnDArgument : "op" "2"
	with(obj_player_controller) var l28E495CE_0 = has_viking > 0;
	if(l28E495CE_0)
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 55EA6608
		/// @DnDParent : 28E495CE
		/// @DnDArgument : "var" "can_attack"
		/// @DnDArgument : "value" "1"
		if(can_attack == 1)
		{
			/// @DnDAction : YoYo Games.Common.If_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 59603A11
			/// @DnDParent : 55EA6608
			/// @DnDArgument : "var" "obj_player.image_xscale > 0"
			if(obj_player.image_xscale > 0 == 0)
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 57F037F0
				/// @DnDParent : 59603A11
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_slash_attack"
				/// @DnDArgument : "layer" ""instance_player""
				/// @DnDSaveInfo : "objectid" "d6641b0f-a365-42aa-98dd-546910f25158"
				instance_create_layer(x + 0, y + 0, "instance_player", obj_slash_attack);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 4575CFE7
				/// @DnDParent : 59603A11
				/// @DnDArgument : "soundid" "sfx_axe_throw"
				/// @DnDSaveInfo : "soundid" "cdce6393-a076-46da-9f01-21ae57aa8e03"
				audio_play_sound(sfx_axe_throw, 0, 0);
			}
		
			/// @DnDAction : YoYo Games.Common.Else
			/// @DnDVersion : 1
			/// @DnDHash : 34DA9A4E
			/// @DnDParent : 55EA6608
			else
			{
				/// @DnDAction : YoYo Games.Instances.Create_Instance
				/// @DnDVersion : 1
				/// @DnDHash : 03EC83B5
				/// @DnDParent : 34DA9A4E
				/// @DnDArgument : "xpos_relative" "1"
				/// @DnDArgument : "ypos_relative" "1"
				/// @DnDArgument : "objectid" "obj_slash_attack"
				/// @DnDArgument : "layer" ""instance_player""
				/// @DnDSaveInfo : "objectid" "d6641b0f-a365-42aa-98dd-546910f25158"
				instance_create_layer(x + 0, y + 0, "instance_player", obj_slash_attack);
			
				/// @DnDAction : YoYo Games.Audio.Play_Audio
				/// @DnDVersion : 1
				/// @DnDHash : 67FF3B4A
				/// @DnDParent : 34DA9A4E
				/// @DnDArgument : "soundid" "sfx_axe_throw"
				/// @DnDSaveInfo : "soundid" "cdce6393-a076-46da-9f01-21ae57aa8e03"
				audio_play_sound(sfx_axe_throw, 0, 0);
			}
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 786F3A13
			/// @DnDParent : 55EA6608
			/// @DnDArgument : "var" "can_attack"
			can_attack = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 34B3D640
			/// @DnDParent : 55EA6608
			/// @DnDArgument : "steps" "room_speed  * 0.5"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, room_speed  * 0.5);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 04F3D653
	/// @DnDParent : 15087C45
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 47924CCE
		/// @DnDParent : 04F3D653
		/// @DnDArgument : "var" "can_attack"
		/// @DnDArgument : "value" "1"
		if(can_attack == 1)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5EBD9608
			/// @DnDParent : 47924CCE
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "objectid" "obj_pebble"
			/// @DnDArgument : "layer" ""instance_player""
			/// @DnDSaveInfo : "objectid" "1363a039-ef02-49c8-a673-a5e672c87da2"
			instance_create_layer(x + 0, y + 0, "instance_player", obj_pebble);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69AEE8C5
			/// @DnDParent : 47924CCE
			/// @DnDArgument : "var" "can_attack"
			can_attack = 0;
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 425CCBBA
			/// @DnDParent : 47924CCE
			/// @DnDArgument : "steps" "room_speed  * 0.5"
			/// @DnDArgument : "alarm" "2"
			alarm_set(2, room_speed  * 0.5);
		}
	}
}