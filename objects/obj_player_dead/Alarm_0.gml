/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 60B97E4C
instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Get_Lives
/// @DnDVersion : 1
/// @DnDHash : 19196486
/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
/// @DnDArgument : "var" "curr_lives"
/// @DnDArgument : "var_temp" "1"
with(obj_player_controller) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
var curr_lives = __dnd_lives;
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 35D842DE
/// @DnDArgument : "var" "curr_lives"
/// @DnDArgument : "op" "2"
if(curr_lives > 0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 2072FF04
	/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
	/// @DnDParent : 35D842DE
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	with(obj_player_controller) {
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);
	}

	/// @DnDAction : YoYo Games.Rooms.Restart_Room
	/// @DnDVersion : 1
	/// @DnDHash : 5BCBD45A
	/// @DnDParent : 35D842DE
	room_restart();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 32407D3B
else
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 44F63557
	/// @DnDParent : 32407D3B
	game_restart();
}