:: %windir%\system32\cmd.exe
:: encoding:gbk
@ECHO OFF
:: 这是BAT同步REPO的操作
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "进入同步REPO……"
)

IF DEFINED ENV_HOWTOSHELL_TEST (
  ECHO ">>>>>完整性测试<<<<<"
  CALL :MAIN
  ECHO "<<<<<完整性测试>>>>>"
  GOTO END
)

:MAIN
ECHO "开始"
SETLOCAL
SET projects=
ECHO "current work directory" %CD%
REM SET param=%1
:: TODO: 如此跨脚本调用函数无效？
CALL ..\..\libs\datetime.bat :Y4MMddhhmmssN
REM CALL ..\..\libs\args.bat :ALL %param:~1,-1%
:: 启用扩展（删除引号）
CALL ..\..\libs/args.bat :ALL %~1
ECHO "project[s] is(are) %projects%"
ENDLOCAL
ECHO "结束"

:END
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "退出同步REPO。"
)
