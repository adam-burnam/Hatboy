/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 50A3881D
/// @DnDArgument : "expr" "other.is_wearing == 0"
if(other.is_wearing == 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2ADE1E16
	/// @DnDApplyTo : other
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "is_wearing"
	with(other) {
	is_wearing = 1;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 175CD615
	/// @DnDApplyTo : other
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "expr" "other.hat_stack"
	/// @DnDArgument : "var" "self.hat_stack_pos"
	with(other) {
	self.hat_stack_pos = other.hat_stack;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0D34E724
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hat_stack"
	hat_stack += 1;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2930AC7B
	/// @DnDApplyTo : other
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "expr" "other.hat_stack_height"
	/// @DnDArgument : "var" "hat_y_pos"
	with(other) {
	hat_y_pos = other.hat_stack_height;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 689B4398
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "expr" "other.hat_height"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "hat_stack_height"
	hat_stack_height += other.hat_height;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 50F3535E
	/// @DnDApplyTo : other
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "expr" "instance_id"
	/// @DnDArgument : "var" "other.hat_stack_top_id"
	with(other) {
	other.hat_stack_top_id = instance_id;
	
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 327F2235
	/// @DnDApplyTo : other
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "expr" "other.depth-other.hat_stack"
	/// @DnDArgument : "var" "depth"
	with(other) {
	depth = other.depth-other.hat_stack;
	
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4CBEAC5A
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "expr" "hat_stack == 1"
	if(hat_stack == 1)
	{
		/// @DnDAction : YoYo Games.Movement.Jump_To_Point
		/// @DnDVersion : 1
		/// @DnDHash : 09C4AAAF
		/// @DnDApplyTo : other
		/// @DnDParent : 4CBEAC5A
		/// @DnDArgument : "x" "other.x"
		/// @DnDArgument : "y" "other.y-2"
		with(other) {
		x = other.x;
		y = other.y-2;
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 4019426E
	/// @DnDParent : 50A3881D
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 0B1C13A3
		/// @DnDParent : 4019426E
		/// @DnDArgument : "expr" "image_xscale == 1"
		if(image_xscale == 1)
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 36868594
			/// @DnDApplyTo : other
			/// @DnDParent : 0B1C13A3
			/// @DnDArgument : "x" "other.x - other.hat_stack"
			/// @DnDArgument : "y" "other.y - 2 - hat_y_pos"
			with(other) {
			x = other.x - other.hat_stack;
			y = other.y - 2 - hat_y_pos;
			}
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 1B209022
		/// @DnDParent : 4019426E
		else
		{
			/// @DnDAction : YoYo Games.Movement.Jump_To_Point
			/// @DnDVersion : 1
			/// @DnDHash : 49C0EC9B
			/// @DnDApplyTo : other
			/// @DnDParent : 1B209022
			/// @DnDArgument : "x" "other.x + other.hat_stack"
			/// @DnDArgument : "y" "other.y - 2 - hat_y_pos"
			with(other) {
			x = other.x + other.hat_stack;
			y = other.y - 2 - hat_y_pos;
			}
		}
	}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60C9C5F4
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "var" "other.vspeed"
	other.vspeed = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6912DC80
	/// @DnDParent : 50A3881D
	/// @DnDArgument : "var" "other.gravity"
	other.gravity = 0;
}