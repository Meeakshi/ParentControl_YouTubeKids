Dim Processes,Process
Dim CurrTime, stoptime, hourintime 
'hourintime = InputBox("Screen time")
CurrTime = Now()
stoptime = DateAdd("h", 1, now())


do While(now()<>stoptime)
Loop
Set Processes = GetObject("winmgmts:").InstancesOf("Win32_Process")
For Each Process In Processes

    If Instr( 1, process.Name, "chrome", vbTextCompare ) > 0 Then
       Process.Terminate()
    End If

Next

WScript.Quit
