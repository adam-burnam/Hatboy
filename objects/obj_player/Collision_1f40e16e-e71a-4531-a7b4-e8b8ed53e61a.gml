/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33EB5087
/// @DnDArgument : "expr" "obj_player_controller.has_beanie"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_beanies"
obj_score_controller.total_beanies += obj_player_controller.has_beanie;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2722AC48
/// @DnDArgument : "expr" "obj_player_controller.has_bowler"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_bowlers"
obj_score_controller.total_bowlers += obj_player_controller.has_bowler;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6BC277D3
/// @DnDArgument : "expr" "obj_player_controller.has_top"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_tops"
obj_score_controller.total_tops += obj_player_controller.has_top;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6144BEBC
/// @DnDArgument : "expr" "obj_player_controller.has_viking"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_vikings"
obj_score_controller.total_vikings += obj_player_controller.has_viking;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7BEE83C8
/// @DnDArgument : "expr" "obj_player_controller.has_viking + obj_player_controller.has_beanie  + obj_player_controller.has_bowler + obj_player_controller.has_top"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "obj_score_controller.total_hats"
obj_score_controller.total_hats += obj_player_controller.has_viking + obj_player_controller.has_beanie  + obj_player_controller.has_bowler + obj_player_controller.has_top;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3693549C
/// @DnDArgument : "var" "obj_player_controller.has_beanie"
obj_player_controller.has_beanie = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 36FEFCBD
/// @DnDArgument : "var" "obj_player_controller.has_viking"
obj_player_controller.has_viking = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19AA5364
/// @DnDArgument : "var" "obj_player_controller.has_top"
obj_player_controller.has_top = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2D5F7257
/// @DnDArgument : "var" "obj_player_controller.has_bowler"
obj_player_controller.has_bowler = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 53A4A72E
/// @DnDArgument : "var" "hat_stack_height"
hat_stack_height = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1C86DE29
/// @DnDArgument : "var" "hat_stack"
hat_stack = 0;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38424924
/// @DnDArgument : "code" "var i;$(13_10)for(i = 0; i < instance_number(obj_hat); i+=1){$(13_10)	var inst = instance_find(obj_hat, i);$(13_10)	if(inst.is_wearing == 1){$(13_10)		instance_destroy(inst);$(13_10)	}$(13_10)}"
var i;
for(i = 0; i < instance_number(obj_hat); i+=1){
	var inst = instance_find(obj_hat, i);
	if(inst.is_wearing == 1){
		instance_destroy(inst);
	}
}