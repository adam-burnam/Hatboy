/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 792A899B
/// @DnDArgument : "code" "if(keyboard_check_pressed(vk_escape))$(13_10){$(13_10)    paused = !paused;$(13_10)}$(13_10)$(13_10)if(paused)$(13_10){$(13_10)    instance_deactivate_all(1);$(13_10)	if keyboard_check(ord("E"))$(13_10)	{$(13_10)		game_end();$(13_10)	}$(13_10)}$(13_10)else$(13_10){$(13_10)    instance_activate_all();$(13_10)}"
if(keyboard_check_pressed(vk_escape))
{
    paused = !paused;
}

if(paused)
{
    instance_deactivate_all(1);
	if keyboard_check(ord("E"))
	{
		game_end();
	}
}
else
{
    instance_activate_all();
}