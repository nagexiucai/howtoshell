:: [Bartek Bielawski](https://becomelotr.wordpress.com/ "����������ⲿ�ű�����")

@ECHO OFF
CALL %*
IF %ERRORLEVEL% == 9527 (
    CALL :DEFAULT
)
GOTO :EOF

:KISS
    ECHO "THIS IS KISS"
    ECHO "ARG(S) IS(ARE)" %*
    EXIT /B 9527

:FUCK
    ECHO "THIS IS FUCK"
    ECHO "ARG(S) IS(ARE)" %*
    EXIT /B 0

:
    ECHO "NO LABEL"
    GOTO :EOF

:DEFAULT
    ECHO "THIS IS DEFAULT"
    GOTO :EOF
