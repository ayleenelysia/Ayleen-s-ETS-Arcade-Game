/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 522CB52E
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)image_speed = 0;$(13_10)image_index = 4"
/// @description Execute Code
image_speed = 0;
image_index = 4

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4DB2CD5B
/// @DnDArgument : "steps" "10"
alarm_set(0, 10);

/// @DnDAction : YoYo Games.Rooms.Go_To_Room
/// @DnDVersion : 1
/// @DnDHash : 55C1FE6B
/// @DnDArgument : "room" "cutscene2"
/// @DnDSaveInfo : "room" "cutscene2"
room_goto(cutscene2);