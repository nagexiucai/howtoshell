@ECHO OFF
:: 这是BAT命令参数相关操作
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "引入args.bat"
)

IF DEFINED ENV_HOWTOSHELL_TEST (
  CALL :ALL
  :: TODO: 半角逗号也被当做参数分隔符？
  CALL :ALL I am bob, bob-nx!
  :: TODO: 会直接败在FINAL检查，由于【"%arg%"】是【""I am nagexiucai""】而导致IF语法错误。
  rem CALL :ALL "I am nagexiucai."
  :: TODO: 问题同上。
  rem CALL :ALL I am webbed by "nagexiucai.com me@nagexiucai.com".
  GOTO END
)

:ALL
SETLOCAL
SET args=
:ONEBYONE
SET arg=%1
ECHO "the one is <%arg%>"
IF "%arg%"=="" (GOTO FINAL)
SET args=%args% %arg%
SHIFT /0
GOTO ONEBYONE
:FINAL
ECHO "after one-by-one" %args%
IF "%args%"=="" GOTO NOTHING
:TRIM
IF "%args:~0,1%"==" " (
  SET args=%args:~1%
  GOTO TRIM
)
IF %args:~-1%==" " (
  SET args=%args:~0,-1%
  GOTO TRIM
)
ECHO "after trim" %args%
:NOTHING
ENDLOCAL
EXIT /B 0

:END
