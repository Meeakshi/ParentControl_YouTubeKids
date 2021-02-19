Dim Processes,Process
Dim CurrTime, stoptime
CurrTime = Now()
stoptime = DateAdd("h", 1, now())
msgbox(Now()+1)
msgbox(DateAdd("h", 1, now()))

Do While(stoptime = Now())
Set Processes = GetObject("winmgmts:").InstancesOf("Win32_Process")

For Each Process In Processes

    If Instr( 1, process.Name, "chrome", vbTextCompare ) > 0 Then
       Process.Terminate()
    End If

Next

WScript.Quit
Loop