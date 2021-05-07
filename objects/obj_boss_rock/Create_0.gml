/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 426A7939
/// @DnDArgument : "soundid" "sfx_boss_fire"
/// @DnDSaveInfo : "soundid" "904be750-5827-48e3-8a1e-5a17ccbb0981"
audio_play_sound(sfx_boss_fire, 0, 0);

/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 2E8089D3
/// @DnDArgument : "x" "obj_player.x"
/// @DnDArgument : "y" "obj_player.y"
direction = point_direction(x, y, obj_player.x, obj_player.y);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5DAD2C64
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "image_xscale"
image_xscale = 2;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2349CC0A
/// @DnDArgument : "expr" "2"
/// @DnDArgument : "var" "image_yscale"
image_yscale = 2;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6CC41242
/// @DnDArgument : "speed" "7"
speed = 7;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6077A428
/// @DnDArgument : "expr" "random(255)"
/// @DnDArgument : "var" "image_blend"
image_blend = random(255);