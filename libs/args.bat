@ECHO OFF
:: ����BAT���������ز���
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "����args.bat"
)

IF DEFINED ENV_HOWTOSHELL_TEST (
  CALL :ALL
  :: TODO: ��Ƕ���Ҳ�����������ָ�����
  CALL :ALL I am bob, bob-nx!
  :: TODO: ��ֱ�Ӱ���FINAL��飬���ڡ�"%arg%"���ǡ�""I am nagexiucai""��������IF�﷨����
  rem CALL :ALL "I am nagexiucai."
  :: TODO: ����ͬ�ϡ�
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
