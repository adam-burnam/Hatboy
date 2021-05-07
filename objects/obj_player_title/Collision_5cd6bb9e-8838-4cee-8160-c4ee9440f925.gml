/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 19BBDD19
/// @DnDArgument : "var" "current_state"
if(current_state == 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 03792336
	/// @DnDParent : 19BBDD19
	/// @DnDArgument : "code" "hspd = hspd * -1;"
	hspd = hspd * -1;
}