/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 0BF11AD6
instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 027C68ED
/// @DnDApplyTo : c40f4297-22d2-482f-8e26-0545a3f1bf1e
/// @DnDArgument : "health" "-10 - (obj_player_controller.has_viking * 2)"
/// @DnDArgument : "health_relative" "1"
with(obj_boss_controller) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-10 - (obj_player_controller.has_viking * 2));
}

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 78DC9694
/// @DnDApplyTo : c40f4297-22d2-482f-8e26-0545a3f1bf1e
/// @DnDArgument : "op" "2"
with(obj_boss_controller) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
var l78DC9694_0 = __dnd_health > 0;
}
if(l78DC9694_0)
{

}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 7AF50E23
else
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 251F69A9
	/// @DnDApplyTo : other
	/// @DnDParent : 7AF50E23
	with(other) instance_destroy();

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7ECFE662
	/// @DnDParent : 7AF50E23
	/// @DnDArgument : "soundid" "sfx_boss_death_alert"
	/// @DnDSaveInfo : "soundid" "62faa449-7cb6-4474-a897-85566b178a8a"
	audio_play_sound(sfx_boss_death_alert, 0, 0);

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 79125106
	/// @DnDApplyTo : 854f2900-549b-4e57-9f66-bf9a30fe9dd1
	/// @DnDParent : 7AF50E23
	with(obj_enemy_parent) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7BDCD7A2
	/// @DnDApplyTo : c40f4297-22d2-482f-8e26-0545a3f1bf1e
	/// @DnDParent : 7AF50E23
	with(obj_boss_controller) instance_destroy();

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 1D08A832
	/// @DnDParent : 7AF50E23
	/// @DnDArgument : "xpos" "6015"
	/// @DnDArgument : "ypos" "728"
	/// @DnDArgument : "objectid" "obj_hat_return"
	/// @DnDSaveInfo : "objectid" "911fca59-78d0-4b36-b717-d8f9a0140c20"
	instance_create_layer(6015, 728, "Instances", obj_hat_return);

	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7E04FCF4
	/// @DnDParent : 7AF50E23
	/// @DnDArgument : "xpos" "6058"
	/// @DnDArgument : "ypos" "681"
	/// @DnDArgument : "objectid" "obj_portal"
	/// @DnDSaveInfo : "objectid" "d7cbcb41-50cf-4816-8d16-d35a83b97169"
	instance_create_layer(6058, 681, "Instances", obj_portal);
}