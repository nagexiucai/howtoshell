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
SETLOCAL
SET projects=
ECHO "current work directory" %CD%
REM SET param=%1
:: TODO: ��˿�ű����ú�����Ч��
CALL ..\..\libs\datetime.bat :Y4MMddhhmmssN
REM CALL ..\..\libs\args.bat :ALL %param:~1,-1%
:: ������չ��ɾ�����ţ�
CALL ..\..\libs/args.bat :ALL %~1
ECHO "project[s] is(are) %projects%"
ENDLOCAL
ECHO "����"

:END
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "�˳�ͬ��REPO��"
)
