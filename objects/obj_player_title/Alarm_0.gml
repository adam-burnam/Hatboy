/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3502B609
/// @DnDArgument : "expr" "irandom_range(1, 4)"
/// @DnDArgument : "var" "rand_hat"
rand_hat = irandom_range(1, 4);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 40393140
/// @DnDArgument : "var" "rand_hat"
/// @DnDArgument : "value" "1"
if(rand_hat == 1)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 56F842D8
	/// @DnDParent : 40393140
	/// @DnDArgument : "xpos" "random_range(400, 630)"
	/// @DnDArgument : "ypos" "510"
	/// @DnDArgument : "var" "this_hat"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_hat_viking"
	/// @DnDSaveInfo : "objectid" "6c682a7a-d47d-4865-a57f-0e82a69c2f34"
	var this_hat = instance_create_layer(random_range(400, 630), 510, "Instances", obj_hat_viking);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 5C2F527A
/// @DnDArgument : "var" "rand_hat"
/// @DnDArgument : "value" "2"
if(rand_hat == 2)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7D04575E
	/// @DnDParent : 5C2F527A
	/// @DnDArgument : "xpos" "random_range(400, 630)"
	/// @DnDArgument : "ypos" "510"
	/// @DnDArgument : "var" "this_hat"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_hat_beanie"
	/// @DnDSaveInfo : "objectid" "9e26dce2-ab81-4677-83fc-63d7da9325c8"
	var this_hat = instance_create_layer(random_range(400, 630), 510, "Instances", obj_hat_beanie);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19E9A9E2
/// @DnDArgument : "var" "rand_hat"
/// @DnDArgument : "value" "3"
if(rand_hat == 3)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0DEB1496
	/// @DnDParent : 19E9A9E2
	/// @DnDArgument : "xpos" "random_range(400, 630)"
	/// @DnDArgument : "ypos" "510"
	/// @DnDArgument : "var" "this_hat"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_hat_bowler"
	/// @DnDSaveInfo : "objectid" "a9b77338-5039-4fe5-b34d-c56fe69a59a9"
	var this_hat = instance_create_layer(random_range(400, 630), 510, "Instances", obj_hat_bowler);
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 06EAAC4A
/// @DnDArgument : "var" "rand_hat"
/// @DnDArgument : "value" "4"
if(rand_hat == 4)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 13465444
	/// @DnDParent : 06EAAC4A
	/// @DnDArgument : "xpos" "random_range(400, 630)"
	/// @DnDArgument : "ypos" "510"
	/// @DnDArgument : "var" "this_hat"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "objectid" "obj_hat_top"
	/// @DnDSaveInfo : "objectid" "78a5381a-092f-442e-aec4-0059595b7d35"
	var this_hat = instance_create_layer(random_range(400, 630), 510, "Instances", obj_hat_top);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 51FACD88
/// @DnDArgument : "code" "this_hat.gravity = .1;$(13_10)this_hat.gravity_direction = 270;"
this_hat.gravity = .1;
this_hat.gravity_direction = 270;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5BECD917
/// @DnDArgument : "steps" "random_range(30, 100)"
alarm_set(0, random_range(30, 100));