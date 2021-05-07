/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 243DF84A
/// @DnDArgument : "obj" "obj_player_controller"
/// @DnDSaveInfo : "obj" "e777e034-1ed2-4912-9980-186b880b8f53"
var l243DF84A_0 = false;
l243DF84A_0 = instance_exists(obj_player_controller);
if(l243DF84A_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 06B98AAC
	/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
	/// @DnDParent : 243DF84A
	with(obj_player_controller) instance_destroy();
}