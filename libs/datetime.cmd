@ECHO OFF

:DISTURB
    ECHO "I am dirty!"

:Y4MMddhhmmssN
    ECHO "Year-Month-Day Hour:Minute:Second N"
    SETLOCAL
    SET yyyyMMddXN=%DATE%
    SET hhmmssX=%TIME%
    SET yyyy=%yyyyMMddXN:~0,4%
    SET MM=%yyyyMMddXN:~5,2%
    SET dd=%yyyyMMddXN:~8,2%
    SET n=%yyyyMMddXN:~12,1%
    IF "%n%"=="һ" (SET n=1) ^
    ELSE IF "%n%"=="��" (SET n=2) ^
    ELSE IF "%n%"=="��" (SET n=3) ^
    ELSE IF "%n%"=="��" (SET n=4) ^
    ELSE IF "%n%"=="��" (SET n=5) ^
    ELSE IF "%n%"=="��" (SET n=6) ^
    ELSE IF "%n%"=="��" (SET n=7) ^
    ELSE (ECHO "Damn!")
    SET hh=%hhmmssX:~0,2%
    SET _mm_=%hhmmssX:~3,2%
    SET ss=%hhmmssX:~6,2%
    ECHO %yyyy%-%MM%-%dd% %hh%:%_mm_%:%ss% %n%
    ENDLOCAL
    GOTO :EOF
