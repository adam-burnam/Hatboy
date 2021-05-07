/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 1BD32915
/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
/// @DnDArgument : "health" "100"
with(obj_player_controller) {

__dnd_health = real(100);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 604F9A86
/// @DnDArgument : "steps" "room_speed"
/// @DnDArgument : "alarm" "4"
alarm_set(4, room_speed);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1BC620D5
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "can_attack"
can_attack = 1;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4342026F
/// @DnDArgument : "var" "invuln"
invuln = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5F499DAD
/// @DnDArgument : "expr" ".50"
/// @DnDArgument : "var" "grav"
grav = .50;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 44750266
/// @DnDArgument : "var" "vspd"
vspd = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 002DBD25
/// @DnDArgument : "var" "hspd"
hspd = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 019D361F
/// @DnDArgument : "expr" "8"
/// @DnDArgument : "var" "jump_speed"
jump_speed = 8;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0D02F0B1
/// @DnDArgument : "expr" "4"
/// @DnDArgument : "var" "movement_speed"
movement_speed = 4;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4426D874
/// @DnDArgument : "var" "hat_stack"
hat_stack = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E3689E8
/// @DnDArgument : "var" "hat_stack_height"
hat_stack_height = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2DE3A705
/// @DnDArgument : "var" "hat_stack_top_id"
hat_stack_top_id = 0;