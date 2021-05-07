/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F3DDD0B
/// @DnDArgument : "code" "surface_set_target(surf);$(13_10)timer++;$(13_10)if(timer > 360){$(13_10)	timer = 0;$(13_10)}$(13_10)draw_sprite_tiled(spr_portal,0,x-sprite_width/2,y-sprite_height/2);$(13_10)surface_reset_target();"
surface_set_target(surf);
timer++;
if(timer > 360){
	timer = 0;
}
draw_sprite_tiled(spr_portal,0,x-sprite_width/2,y-sprite_height/2);
surface_reset_target();