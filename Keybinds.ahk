#+s::
Run, explorer ms-screenclip:
return

#r::
Run, C:\Users\Orion\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Run
return

#w::
Run, firefox
return

#Enter::
Run, cmd, C:\Users\Orion
return

#n::
Run, explorer
return

#+q::
WinGetTitle, Title, A
PostMessage, 0x112, 0xF060,,, %Title%
return

#f::
WinGetTitle, Title, A
WinGet, WinState, MinMax, %Title%
if (WinState = 1)
WinRestore, %Title%
else
WinMaximize, %Title%
return