/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 316C190D
/// @DnDArgument : "code" "if (hspd > 0)$(13_10){$(13_10)	image_xscale = 1;$(13_10)	if (place_meeting(x, y + 1, obj_solid_struc))$(13_10)	{$(13_10)		image_speed = 1;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		image_speed = 0;$(13_10)		image_index = 1;$(13_10)	}$(13_10)	$(13_10)}$(13_10)else if (hspd < 0)$(13_10){$(13_10)	image_xscale = -1;$(13_10)	if (place_meeting(x, y + 1, obj_solid_struc))$(13_10)	{$(13_10)		image_speed = 1;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		image_speed = 0;$(13_10)		image_index = 1;$(13_10)	}$(13_10)	$(13_10)}$(13_10)else$(13_10){$(13_10)	image_speed = 0;$(13_10)	$(13_10)	if (place_meeting(x, y + 1, obj_solid_struc))$(13_10)	{$(13_10)		image_index = 0;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		image_index = 1;$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)$(13_10)if (vspd < 10)$(13_10){$(13_10)	vspd += grav;$(13_10)}$(13_10)$(13_10)$(13_10)//hc$(13_10)if (place_meeting(x + hspd, y, obj_solid_struc))$(13_10){$(13_10)	slope_move = 0;$(13_10)	while (place_meeting(x + hspd, y - slope_move, obj_solid_struc) && slope_move <= abs(1 * hspd)) $(13_10)	{$(13_10)		//move y coord up until we find a collision$(13_10)		slope_move += 1; $(13_10)	}$(13_10)	if (place_meeting(x + hspd, y - slope_move, obj_solid_struc))$(13_10)	{$(13_10)		while (!place_meeting(x + sign(hspd), y, obj_solid_struc))$(13_10)		{$(13_10)		   $(13_10)			x += sign(hspd);$(13_10)		}$(13_10)	$(13_10)		hspd = 0;$(13_10)	}$(13_10)	else$(13_10)	{$(13_10)		y-= slope_move;$(13_10)	}$(13_10)	$(13_10)}$(13_10)$(13_10)x = x + hspd;$(13_10)$(13_10)//vc$(13_10)if (place_meeting(x,y + vspd, obj_solid_struc))$(13_10){$(13_10)	while(!place_meeting(x, y + sign(vspd),obj_solid_struc))$(13_10)	{$(13_10)		y += sign(vspd);$(13_10)	}$(13_10)	vspd = 0;$(13_10)}$(13_10)$(13_10)y = y + vspd;$(13_10)$(13_10)var i;$(13_10)for(i = 0; i < instance_number(obj_hat); i+=1){$(13_10)	var inst = instance_find(obj_hat, i);$(13_10)	if(inst.is_wearing == 1){$(13_10)		if(hspd != 0){$(13_10)			inst.hspeed = 0;$(13_10)			if(inst.x <= self.x - inst.hat_stack_pos){$(13_10)				inst.x = self.x - inst.hat_stack_pos;$(13_10)				inst.image_xscale = image_xscale;$(13_10)			}$(13_10)			else if(inst.x > self.x + inst.hat_stack_pos){$(13_10)				inst.x = self.x + inst.hat_stack_pos;$(13_10)				inst.image_xscale = image_xscale;$(13_10)			}$(13_10)			inst.y = self.y - 2 - inst.hat_y_pos;$(13_10)			inst.image_speed = image_speed;$(13_10)		}$(13_10)		else{$(13_10)			if(inst.x > self.x){$(13_10)				inst.hspeed = -1;$(13_10)			}$(13_10)			else if(inst.x < self.x){$(13_10)				inst.hspeed = 1;$(13_10)			}$(13_10)			else{$(13_10)				inst.hspeed = 0;$(13_10)				inst.image_xscale = image_xscale;$(13_10)			}$(13_10)			inst.y = self.y - 2 - inst.hat_y_pos;$(13_10)			inst.image_speed = image_speed;$(13_10)		}$(13_10)	}$(13_10)}"
if (hspd > 0)
{
	image_xscale = 1;
	if (place_meeting(x, y + 1, obj_solid_struc))
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
		image_index = 1;
	}
	
}
else if (hspd < 0)
{
	image_xscale = -1;
	if (place_meeting(x, y + 1, obj_solid_struc))
	{
		image_speed = 1;
	}
	else
	{
		image_speed = 0;
		image_index = 1;
	}
	
}
else
{
	image_speed = 0;
	
	if (place_meeting(x, y + 1, obj_solid_struc))
	{
		image_index = 0;
	}
	else
	{
		image_index = 1;
	}
	
}


if (vspd < 10)
{
	vspd += grav;
}


//hc
if (place_meeting(x + hspd, y, obj_solid_struc))
{
	slope_move = 0;
	while (place_meeting(x + hspd, y - slope_move, obj_solid_struc) && slope_move <= abs(1 * hspd)) 
	{
		//move y coord up until we find a collision
		slope_move += 1; 
	}
	if (place_meeting(x + hspd, y - slope_move, obj_solid_struc))
	{
		while (!place_meeting(x + sign(hspd), y, obj_solid_struc))
		{
		   
			x += sign(hspd);
		}
	
		hspd = 0;
	}
	else
	{
		y-= slope_move;
	}
	
}

x = x + hspd;

//vc
if (place_meeting(x,y + vspd, obj_solid_struc))
{
	while(!place_meeting(x, y + sign(vspd),obj_solid_struc))
	{
		y += sign(vspd);
	}
	vspd = 0;
}

y = y + vspd;

var i;
for(i = 0; i < instance_number(obj_hat); i+=1){
	var inst = instance_find(obj_hat, i);
	if(inst.is_wearing == 1){
		if(hspd != 0){
			inst.hspeed = 0;
			if(inst.x <= self.x - inst.hat_stack_pos){
				inst.x = self.x - inst.hat_stack_pos;
				inst.image_xscale = image_xscale;
			}
			else if(inst.x > self.x + inst.hat_stack_pos){
				inst.x = self.x + inst.hat_stack_pos;
				inst.image_xscale = image_xscale;
			}
			inst.y = self.y - 2 - inst.hat_y_pos;
			inst.image_speed = image_speed;
		}
		else{
			if(inst.x > self.x){
				inst.hspeed = -1;
			}
			else if(inst.x < self.x){
				inst.hspeed = 1;
			}
			else{
				inst.hspeed = 0;
				inst.image_xscale = image_xscale;
			}
			inst.y = self.y - 2 - inst.hat_y_pos;
			inst.image_speed = image_speed;
		}
	}
}