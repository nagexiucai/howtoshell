:: %windir%\system32\cmd.exe
:: encoding:gbk
@ECHO OFF

SET cwd=%CD%
CD /D %~dp0
:: ����BATͬ��REPO�Ĳ���
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "����ͬ��REPO����"
)

IF DEFINED ENV_HOWTOSHELL_TEST (
  ECHO ">>>>>�����Բ���<<<<<"
  CALL :MAIN
  ECHO "<<<<<�����Բ���>>>>>"
  GOTO END
)

:MAIN
ECHO "��ʼ"
SETLOCAL
:: TODO: ��˿�ű����ú�����Ч��
CALL ..\..\libs\datetime.cmd :Y4MMddhhmmssN
ENDLOCAL
ECHO "����"

:END
CD /D %cwd%
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "�˳�ͬ��REPO��"
)
