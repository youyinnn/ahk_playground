#SingleInstance, Force
SendMode Input

#NoTrayIcon

Space::Space
return

Space & i::up
return

!i::
    Send {up 5} 
return

Space & k::down
return

!k::
    Send {down 5}
return

Space & j::left
return

!j::
    Send {left 5}
return

Space & l::right
return

!l::
    Send {right 5}
return

Space & p::Home
return

Space & `;::End
return

Space & u::LShift
return

Space & Enter::
    Send {End}{Enter} 
return

Space & q::
    MsgBox, 4, Space-Go, Exit Space-Go? 
    IfMsgBox Yes
        ExitApp 0
    else
        return
return

Space & r::
    Reload
return