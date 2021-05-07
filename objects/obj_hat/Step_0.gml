/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2009716D
/// @DnDArgument : "code" "if collision_circle(x, y, 8, obj_solid_struc, true, true)$(13_10){$(13_10)	if (place_meeting(x, y + 1, obj_moving_platform))$(13_10)	{$(13_10)		hspeed = -2;$(13_10)		gravity = 0;$(13_10)	}$(13_10)	$(13_10)	else$(13_10)	{$(13_10)		speed = 0;$(13_10)		gravity = 0;$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)"
if collision_circle(x, y, 8, obj_solid_struc, true, true)
{
	if (place_meeting(x, y + 1, obj_moving_platform))
	{
		hspeed = -2;
		gravity = 0;
	}
	
	else
	{
		speed = 0;
		gravity = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 35B917DE
/// @DnDArgument : "expr" "self.y > room_height"
if(self.y > room_height)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 0D33DBA8
	/// @DnDParent : 35B917DE
	instance_destroy();
}