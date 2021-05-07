/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 7DDC98C3
/// @DnDArgument : "soundid" "sfx_npc_death_alternate"
/// @DnDSaveInfo : "soundid" "045cab3a-cc5e-4e16-a2fd-10033e013304"
audio_play_sound(sfx_npc_death_alternate, 0, 0);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 66198AE3
/// @DnDApplyTo : e777e034-1ed2-4912-9980-186b880b8f53
with(obj_player_controller) {

__dnd_health = real(0);
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0717491B
/// @DnDArgument : "steps" "room_speed * 4"
alarm_set(0, room_speed * 4);