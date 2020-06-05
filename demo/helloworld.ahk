^j::
SendInput, inside the CTRL{+}J hotkey.
return

^k::
Send, 7 lines{!}{Enter}
return

^l::j
Send, hi{~}
return

CapsLock & i::up
return

CapsLock & k::down
return

CapsLock & j::left
return

CapsLock & l::right
return


Tab & w::
    TempFile := A_Temp . "\info.txt"
    full_command := " /c " . " cd scripts && node demo.js"
    FileDelete, %TempFile%
    RunWait,%ComSpec% %full_command% >> %TempFile%,,Hide
    FileRead,Output,%TempFile%
    FileDelete,%TempFile%
    MsgBox %Output%
return
