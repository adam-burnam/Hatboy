/// @DnDAction : YoYo Games.Movement.Set_Gravity_Direction
/// @DnDVersion : 1
/// @DnDHash : 3320501F
/// @DnDArgument : "direction" "270"
gravity_direction = 270;

/// @DnDAction : YoYo Games.Movement.Set_Gravity_Force
/// @DnDVersion : 1
/// @DnDHash : 03355010
gravity = 1;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 5D77869D
/// @DnDArgument : "speed" "-9"
/// @DnDArgument : "type" "2"
vspeed = -9;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 57D71ADC
/// @DnDArgument : "expr" "obj_player.image_xscale > 0"
if(obj_player.image_xscale > 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0BA31F95
	/// @DnDParent : 57D71ADC
	/// @DnDArgument : "speed" "obj_player.movement_speed + 3"
	/// @DnDArgument : "type" "1"
	hspeed = obj_player.movement_speed + 3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 48AC6BF4
	/// @DnDParent : 57D71ADC
	/// @DnDArgument : "expr" "obj_player_controller.has_viking * 0.25"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = obj_player_controller.has_viking * 0.25;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5676AF98
	/// @DnDParent : 57D71ADC
	/// @DnDArgument : "expr" "obj_player_controller.has_viking * 0.25"
	/// @DnDArgument : "var" "image_yscale"
	image_yscale = obj_player_controller.has_viking * 0.25;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 25A47B9B
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 50CB8DED
	/// @DnDParent : 25A47B9B
	/// @DnDArgument : "speed" "(-1) * obj_player. movement_speed - 3"
	/// @DnDArgument : "type" "1"
	hspeed = (-1) * obj_player. movement_speed - 3;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 04D62252
	/// @DnDParent : 25A47B9B
	/// @DnDArgument : "expr" "-obj_player_controller.has_viking * 0.25"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = -obj_player_controller.has_viking * 0.25;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 156939F0
	/// @DnDParent : 25A47B9B
	/// @DnDArgument : "expr" "obj_player_controller.has_viking * 0.25"
	/// @DnDArgument : "var" "image_yscale"
	image_yscale = obj_player_controller.has_viking * 0.25;
}