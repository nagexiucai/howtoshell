:: %windir%\system32\cmd.exe
:: encoding:gbk
@ECHO OFF
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
ECHO "����"

:END
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "�˳�ͬ��REPO��"
)
