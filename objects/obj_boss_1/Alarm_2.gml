/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 66F13207
/// @DnDArgument : "obj" "obj_player"
/// @DnDSaveInfo : "obj" "2bb7e7ee-a362-4e9f-bf1f-1a48625df0a9"
var l66F13207_0 = false;
l66F13207_0 = instance_exists(obj_player);
if(l66F13207_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7C752CE2
	/// @DnDParent : 66F13207
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_boss_rock"
	/// @DnDSaveInfo : "objectid" "b4d3cd40-a28f-47ea-ac12-94aba12a92a7"
	instance_create_layer(x + 0, y + 0, "Instances", obj_boss_rock);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 6D062000
	/// @DnDParent : 66F13207
	/// @DnDArgument : "steps" "room_speed * 2"
	/// @DnDArgument : "alarm" "2"
	alarm_set(2, room_speed * 2);
}