/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 32440439
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "value" "keyboard_check(vk_right) -keyboard_check(vk_left)"
var move_x = keyboard_check(vk_right) -keyboard_check(vk_left);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 383C1FEF
/// @DnDArgument : "expr" "move_x * move_speed"
/// @DnDArgument : "var" "move_x"
move_x = move_x * move_speed;

/// @DnDAction : YoYo Games.Collisions.If_Object_At
/// @DnDVersion : 1.1
/// @DnDHash : 284C3884
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "2"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "object" "obj_ground2"
/// @DnDSaveInfo : "object" "obj_ground2"
var l284C3884_0 = instance_place(x + 0, y + 2, [obj_ground2]);
if ((l284C3884_0 > 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 39F9246A
	/// @DnDParent : 284C3884
	/// @DnDArgument : "var" "move_y"
	move_y = 0;

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
	/// @DnDVersion : 1
	/// @DnDHash : 15963373
	/// @DnDParent : 284C3884
	var l15963373_0;
	l15963373_0 = keyboard_check(vk_space);
	if (l15963373_0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 327483A5
		/// @DnDParent : 15963373
		/// @DnDArgument : "expr" "-jump_speed"
		/// @DnDArgument : "var" "move_y"
		move_y = -jump_speed;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 188897C3
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 064C3849
	/// @DnDParent : 188897C3
	/// @DnDArgument : "var" "move_y"
	/// @DnDArgument : "op" "1"
	/// @DnDArgument : "value" "10"
	if(move_y < 10)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 16B48B6C
		/// @DnDParent : 064C3849
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "move_y"
		move_y += 1;
	}
}

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 3514B315
/// @DnDArgument : "xvel" "move_x"
/// @DnDArgument : "yvel" "move_y"
/// @DnDArgument : "object" "obj_ground2"
/// @DnDSaveInfo : "object" "obj_ground2"
move_and_collide(move_x, move_y, obj_ground2,4,0,0,-1,-1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3C60E420
/// @DnDArgument : "var" "move_x"
/// @DnDArgument : "not" "1"
if(!(move_x == 0))
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34D0E46E
	/// @DnDParent : 3C60E420
	/// @DnDArgument : "expr" "sign(move_x)"
	/// @DnDArgument : "var" "image_xscale"
	image_xscale = sign(move_x);
}