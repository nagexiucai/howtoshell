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
ECHO "结束"

:END
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "退出同步REPO。"
)
