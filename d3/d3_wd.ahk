#NoEnv
#SingleInstance, Force
#UseHook On

SendMode Input                ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%   ; Ensures a consistent starting directory.

SetKeyDelay, 10, 20
SetMouseDelay, 50

#MaxThreads 61
#MaxThreadsPerHotkey 4

$`::
	Suspend
	Pause,,1
	return

upEnable := false
downEnable := false

$WheelUp::
	if (upEnable = false)
	{
		Send, {Click down}
		upEnable := true
	}
	else
	{
		Send, {Click up}
		upEnable := false
	}
	return
		
$WheelDown::
	if (downEnable = false)
	{
		Send, {Click down right}
		downEnable := true
	}
	else
	{
		Send, {Click up right}
		downEnable := false
	}
	return
	
$Space::	
	while GetKeyState("Space","P")
	{
		Send, {Click right down}
		Random, r, 150, 400
		Sleep r
	}
	Send, {Click right up}
	return
	
$*x::
	while GetKeyState("Capslock", "T")
	{
		if GetKeyState("Shift")
		{
			Send, +{Click}
			Random, r, 150, 400
			Sleep r
		}
		else
		{
			Send, {Click down}
			Random, r, 150, 400
			Sleep r
		}
	}
	while GetKeyState("x", "P")
	{
		if GetKeystate("Shift")
		{
			Send, +{Click}
			Random, r, 150, 400
			Sleep r
		}
		else
		{
			Send, {Click down}
			Random, r, 150, 400
			Sleep r
		}
	}
	Send, {Click up}
	return
	
$*1::
	Send, {1}
	return
	
$*2::
	Send, {2}
	return
	
$*3::
	Send, {3}
	return
	
$*4::
	Send, {4}
	return
	
Right:
	Send, {Click down right}
	Sleep 50
	Send, {Click up right}
	return
	
One:
	Send, {1}
	return
	
Two:
	Send, {2}
	return
	
Three:
	Send, {3}
	return
	
Four:
	Send, {4}
	return