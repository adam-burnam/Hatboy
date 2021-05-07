/// @DnDAction : YoYo Games.Instance Variables.Get_Health
/// @DnDVersion : 1
/// @DnDHash : 4F7B0B1D
/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
/// @DnDArgument : "var" "curr_hp"
/// @DnDArgument : "var_temp" "1"
with(obj_player_controller) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var curr_hp = __dnd_health;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CC53457
/// @DnDArgument : "var" "invuln"
if(invuln == 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 033E7ECF
	/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
	/// @DnDParent : 2CC53457
	/// @DnDArgument : "health" "-.50"
	/// @DnDArgument : "health_relative" "1"
	with(obj_player_controller) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-.50);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5E934F8F
	/// @DnDParent : 2CC53457
	/// @DnDArgument : "var" "curr_hp"
	/// @DnDArgument : "value" "1"
	if(curr_hp == 1)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 6D3D86EC
		/// @DnDParent : 5E934F8F
		/// @DnDArgument : "soundid" "sfx_player_hurt"
		/// @DnDSaveInfo : "soundid" "856cc46e-1a40-4997-8544-d279e5c066d6"
		audio_play_sound(sfx_player_hurt, 0, 0);
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 2B0D7887
		/// @DnDParent : 5E934F8F
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
		/// @DnDHash : 158EF0BC
		/// @DnDParent : 5E934F8F
		/// @DnDArgument : "var" "vspd"
		vspd = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3B74D0CE
		/// @DnDParent : 5E934F8F
		/// @DnDArgument : "speed" "-3"
		/// @DnDArgument : "type" "2"
		vspeed = -3;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 6112E7B8
		/// @DnDParent : 5E934F8F
		/// @DnDArgument : "spriteind" "sp_player_r1"
		/// @DnDSaveInfo : "spriteind" "06a2066c-166c-424a-9a94-13adf7eb24fb"
		sprite_index = sp_player_r1;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 282947F7
		/// @DnDParent : 5E934F8F
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "invuln"
		invuln = 1;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 04F14A1F
		/// @DnDParent : 5E934F8F
		/// @DnDArgument : "steps" "room_speed*2"
		alarm_set(0, room_speed*2);
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 38C7CE41
	/// @DnDParent : 2CC53457
	/// @DnDArgument : "var" "curr_hp"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "1"
	if(curr_hp < 1)
	{
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1A42FD5B
		/// @DnDParent : 38C7CE41
		/// @DnDArgument : "objind" "obj_player_dead"
		/// @DnDSaveInfo : "objind" "d018fff2-96ca-454a-a875-10cae26cbf9c"
		instance_change(obj_player_dead, true);
	}
}