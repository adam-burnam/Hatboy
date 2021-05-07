/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 79C8CD62
/// @DnDArgument : "soundid" "sfx_player_hurt"
/// @DnDSaveInfo : "soundid" "856cc46e-1a40-4997-8544-d279e5c066d6"
audio_play_sound(sfx_player_hurt, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 46633F75
/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
with(obj_player_controller) {

__dnd_health = real(0);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 72743CD2
/// @DnDArgument : "var" "invuln"
if(invuln == 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 50DF2BC8
	/// @DnDParent : 72743CD2
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
	/// @DnDHash : 70EF1786
	/// @DnDParent : 72743CD2
	/// @DnDArgument : "var" "vspd"
	vspd = 0;

	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 65DA2403
	/// @DnDParent : 72743CD2
	/// @DnDArgument : "objind" "obj_temp"
	/// @DnDSaveInfo : "objind" "eb2a9608-016a-4cad-b863-f246f193b9b5"
	instance_change(obj_temp, true);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 6BB8DBB6
else
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 71C056C8
	/// @DnDParent : 6BB8DBB6
	/// @DnDArgument : "objind" "obj_player_dead"
	/// @DnDSaveInfo : "objind" "d018fff2-96ca-454a-a875-10cae26cbf9c"
	instance_change(obj_player_dead, true);
}