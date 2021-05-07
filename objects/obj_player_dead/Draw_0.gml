/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 408B8669
/// @DnDArgument : "obj" "obj_player_dead"
/// @DnDSaveInfo : "obj" "d018fff2-96ca-454a-a875-10cae26cbf9c"
var l408B8669_0 = false;
l408B8669_0 = instance_exists(obj_player_dead);
if(l408B8669_0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 198FC72B
	/// @DnDParent : 408B8669
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y" "-50"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "caption" ""You Died.""
	draw_text(x + 0, y + -50, string("You Died.") + "");
}