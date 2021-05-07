/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 571ECFD2
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "2bb7e7ee-a362-4e9f-bf1f-1a48625df0a9"
var l571ECFD2_0 = false;
l571ECFD2_0 = instance_exists(obj_player);
if(l571ECFD2_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 370B97F1
	/// @DnDParent : 571ECFD2
	/// @DnDArgument : "steps" "room_speed "
	/// @DnDArgument : "alarm" "4"
	alarm_set(4, room_speed );

	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 470F49B2
	/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
	/// @DnDParent : 571ECFD2
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "var_temp" "1"
	with(obj_player_controller) {
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var hp = __dnd_health;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6A07A586
	/// @DnDParent : 571ECFD2
	/// @DnDArgument : "var" "hp"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "100 - (obj_player_controller.has_top * 2)"
	if(hp < 100 - (obj_player_controller.has_top * 2))
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 3A90CF74
		/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
		/// @DnDParent : 6A07A586
		/// @DnDArgument : "health" "(obj_player_controller.has_top * 2)"
		/// @DnDArgument : "health_relative" "1"
		with(obj_player_controller) {
		if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
		__dnd_health += real((obj_player_controller.has_top * 2));
		}
	}
}