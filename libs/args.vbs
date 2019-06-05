' 这是VBS命令参数相关操作

Set args = WScript.Arguments

For Each arg In args
  ' MsgBox(arg)
  WSH.Echo(arg)
Next

Set args=Nothing
