/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4CF6B763
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)image_speed = 0;$(13_10)image_index = 4"
/// @description Execute Code
image_speed = 0;
image_index = 4

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7DC58666
/// @DnDArgument : "steps" "10"
alarm_set(0, 10);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 32C28F6D
/// @DnDArgument : "room" "rm_lvl2"
/// @DnDSaveInfo : "room" "rm_lvl2"
room_goto(rm_lvl2);