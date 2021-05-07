/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 263C5104
/// @DnDApplyTo : other
/// @DnDArgument : "expr" "dead == 0"
with(other) var l263C5104_0 = dead == 0;
if(l263C5104_0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 3974EAF8
	/// @DnDParent : 263C5104
	/// @DnDArgument : "expr" "invuln == 0"
	if(invuln == 0)
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 3FD2CC32
		/// @DnDParent : 3974EAF8
		/// @DnDArgument : "expr" "hat_stack == 0"
		if(hat_stack == 0)
		{
			/// @DnDAction : YoYo Games.Instances.Change_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 158EC23E
			/// @DnDParent : 3FD2CC32
			/// @DnDArgument : "objind" "obj_player_dead"
			/// @DnDSaveInfo : "objind" "d018fff2-96ca-454a-a875-10cae26cbf9c"
			instance_change(obj_player_dead, true);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 3B19D790
		/// @DnDParent : 3974EAF8
		else
		{
			/// @DnDAction : YoYo Games.Common.Execute_Code
			/// @DnDVersion : 1
			/// @DnDHash : 67F4217A
			/// @DnDParent : 3B19D790
			/// @DnDArgument : "code" "var i;$(13_10)var lost;$(13_10)for(i = 0; i < instance_number(obj_hat); i+=1){$(13_10)	var inst = instance_find(obj_hat, i);$(13_10)	if(inst.is_wearing == 1){$(13_10)		inst.is_wearing = 0;$(13_10)		inst.image_speed = 0;$(13_10)		inst.image_index = 0;$(13_10)		inst.hspeed = random_range(-5, 5);$(13_10)		inst.vspeed = -10;$(13_10)		inst.gravity = 1;$(13_10)		inst.gravity_direction = 270;$(13_10)	}$(13_10)}$(13_10)$(13_10)hat_stack = 0;$(13_10)hat_stack_height = 0;$(13_10)obj_player_controller.has_beanie = 0;$(13_10)obj_player_controller.has_viking = 0;$(13_10)obj_player_controller.has_top = 0;$(13_10)obj_player_controller.has_bowler = 0;$(13_10)"
			var i;
			var lost;
			for(i = 0; i < instance_number(obj_hat); i+=1){
				var inst = instance_find(obj_hat, i);
				if(inst.is_wearing == 1){
					inst.is_wearing = 0;
					inst.image_speed = 0;
					inst.image_index = 0;
					inst.hspeed = random_range(-5, 5);
					inst.vspeed = -10;
					inst.gravity = 1;
					inst.gravity_direction = 270;
				}
			}
			
			hat_stack = 0;
			hat_stack_height = 0;
			obj_player_controller.has_beanie = 0;
			obj_player_controller.has_viking = 0;
			obj_player_controller.has_top = 0;
			obj_player_controller.has_bowler = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 749C50F9
			/// @DnDParent : 3B19D790
			/// @DnDArgument : "var" "vspd"
			vspd = 0;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 7858A1E3
			/// @DnDParent : 3B19D790
			/// @DnDArgument : "speed" "-3"
			/// @DnDArgument : "type" "2"
			vspeed = -3;
		
			/// @DnDAction : YoYo Games.Instances.Set_Sprite
			/// @DnDVersion : 1
			/// @DnDHash : 64654480
			/// @DnDParent : 3B19D790
			/// @DnDArgument : "spriteind" "sp_player_r1"
			/// @DnDSaveInfo : "spriteind" "06a2066c-166c-424a-9a94-13adf7eb24fb"
			sprite_index = sp_player_r1;
			image_index = 0;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 213DADFC
			/// @DnDParent : 3B19D790
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "var" "invuln"
			invuln = 1;
		
			/// @DnDAction : YoYo Games.Instance Variables.Set_Health
			/// @DnDVersion : 1
			/// @DnDHash : 5C86D00B
			/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
			/// @DnDParent : 3B19D790
			/// @DnDArgument : "health" "1"
			with(obj_player_controller) {
			
			__dnd_health = real(1);
			}
		
			/// @DnDAction : YoYo Games.Instances.Set_Alarm
			/// @DnDVersion : 1
			/// @DnDHash : 31DFD317
			/// @DnDParent : 3B19D790
			/// @DnDArgument : "steps" "room_speed*2"
			alarm_set(0, room_speed*2);
		}
	
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6179B4F5
		/// @DnDParent : 3974EAF8
		/// @DnDArgument : "soundid" "sfx_player_hurt"
		/// @DnDSaveInfo : "soundid" "856cc46e-1a40-4997-8544-d279e5c066d6"
		audio_play_sound(sfx_player_hurt, 0, 0);
	}
}