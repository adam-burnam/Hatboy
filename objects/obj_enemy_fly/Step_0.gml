/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AC56314
/// @DnDArgument : "code" "//set image angle based on hspeed$(13_10)if (hspeed > 0)$(13_10){$(13_10)	image_xscale = 1;$(13_10)}$(13_10)else$(13_10){$(13_10)	image_xscale = -1;$(13_10)}$(13_10)$(13_10)//fire regardless of state$(13_10)if (instance_exists(obj_player))$(13_10){$(13_10)	if(point_distance(x, y, obj_player.x, obj_player.y) < 100)$(13_10)	{$(13_10)		if(dead == 0 && obj_player.invuln == 0)$(13_10)		{$(13_10)			instance_create_layer(x,y, "Instances", obj_projectile);			$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)$(13_10)switch (curr_state)$(13_10){$(13_10)	case 0:$(13_10)	    //SET SPEEDS!!!!$(13_10)		if(!(dead == 1))$(13_10)		{$(13_10)			if(distance_to_object(obj_player) < 160)$(13_10)			{$(13_10)				curr_state = 2;$(13_10)				break;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				if(!collision_line(x, y, xstart, ystart, obj_solid_struc, true, false))$(13_10)				{$(13_10)					if(!collision_circle(xstart,ystart,10, obj_enemy_fly, false, false))$(13_10)					{$(13_10)				$(13_10)						move_towards_point(xstart, ystart, 2)$(13_10)						image_speed = 1;$(13_10)						current_state = 0;$(13_10)						break;$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)						hspeed = 0;$(13_10)						vspeed = 0;$(13_10)						//image_speed = 0;$(13_10)						current_state = 0;$(13_10)						break;$(13_10)					$(13_10)					}$(13_10)				}$(13_10)			}$(13_10)			curr_state = 0;$(13_10)			break;$(13_10)		}$(13_10)		curr_state = 1;$(13_10)	    break;$(13_10)	case 1: $(13_10)		//PLACEHOLDER -- may add another state$(13_10)	    break;	$(13_10)	case 2:$(13_10)		if(!(dead == 1))$(13_10)		{$(13_10)		    if (instance_exists(obj_player))$(13_10)			{$(13_10)				$(13_10)				if(point_distance(x, y, obj_player.x, obj_player.y) < 160)$(13_10)				{$(13_10)					if (!obj_player.invuln)$(13_10)					{$(13_10)						if(!collision_line(x, y, obj_player.x, obj_player.y, obj_solid_struc, true, false))$(13_10)						{		$(13_10)							move_towards_point(obj_player.x, obj_player.y, (4 + obj_player_controller.has_bowler - 1));	$(13_10)							image_speed = 1;$(13_10)						}$(13_10)						$(13_10)					}$(13_10)					else$(13_10)					{$(13_10)							move_towards_point(obj_player.x, obj_player.y, -1);	$(13_10)							image_speed = 1;$(13_10)					}$(13_10)					curr_state = 2;$(13_10)					break;$(13_10)				}$(13_10)					$(13_10)				curr_state = 0;$(13_10)				break;	$(13_10)					$(13_10)				$(13_10)			}$(13_10)			curr_state = 0;$(13_10)		    break;$(13_10)		}$(13_10)		curr_state = 0;$(13_10)		break;$(13_10)}"
//set image angle based on hspeed
if (hspeed > 0)
{
	image_xscale = 1;
}
else
{
	image_xscale = -1;
}

//fire regardless of state
if (instance_exists(obj_player))
{
	if(point_distance(x, y, obj_player.x, obj_player.y) < 100)
	{
		if(dead == 0 && obj_player.invuln == 0)
		{
			instance_create_layer(x,y, "Instances", obj_projectile);			
		}
	}
}


switch (curr_state)
{
	case 0:
	    //SET SPEEDS!!!!
		if(!(dead == 1))
		{
			if(distance_to_object(obj_player) < 160)
			{
				curr_state = 2;
				break;
			}
			else
			{
				if(!collision_line(x, y, xstart, ystart, obj_solid_struc, true, false))
				{
					if(!collision_circle(xstart,ystart,10, obj_enemy_fly, false, false))
					{
				
						move_towards_point(xstart, ystart, 2)
						image_speed = 1;
						current_state = 0;
						break;
					}
					else
					{
						hspeed = 0;
						vspeed = 0;
						//image_speed = 0;
						current_state = 0;
						break;
					
					}
				}
			}
			curr_state = 0;
			break;
		}
		curr_state = 1;
	    break;
	case 1: 
		//PLACEHOLDER -- may add another state
	    break;	
	case 2:
		if(!(dead == 1))
		{
		    if (instance_exists(obj_player))
			{
				
				if(point_distance(x, y, obj_player.x, obj_player.y) < 160)
				{
					if (!obj_player.invuln)
					{
						if(!collision_line(x, y, obj_player.x, obj_player.y, obj_solid_struc, true, false))
						{		
							move_towards_point(obj_player.x, obj_player.y, (4 + obj_player_controller.has_bowler - 1));	
							image_speed = 1;
						}
						
					}
					else
					{
							move_towards_point(obj_player.x, obj_player.y, -1);	
							image_speed = 1;
					}
					curr_state = 2;
					break;
				}
					
				curr_state = 0;
				break;	
					
				
			}
			curr_state = 0;
		    break;
		}
		curr_state = 0;
		break;
}