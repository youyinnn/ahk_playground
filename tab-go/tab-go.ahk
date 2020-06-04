#SingleInstance, Force
SendMode Input

#NoTrayIcon

Tab::Tab
return

Tab & i::up
return

!i::
    Send {up 5}
return

Tab & k::down
return

!k::
    Send {down 5}
return

Tab & j::left
return

!j::
    Send {left 5}
return

Tab & l::right
return

!l::
    Send {right 5}
return

Tab & p::Home
return

Tab & `;::End
return

Tab & u::LShift
return

Tab & Enter::
    Send {End}{Enter} 
return

Tab & q::
    MsgBox, 4, Tab-Go, Exit Tab-Go? 
    IfMsgBox Yes
        ExitApp 0
    else
        return
return

Tab & r::
    Reload
return