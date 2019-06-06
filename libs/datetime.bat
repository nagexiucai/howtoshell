@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
:: ����BAT����ʱ����ز���
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "����datetime.bat"
)

IF DEFINED ENV_HOWTOSHELL_TEST (
  CALL :YearYYYY a b c d e f g h i j k l m n o p q r s t u v w x y z
  CALL :MonthMM
  CALL :DayDD
  CALL :WeekN
  CALL :HourHH
  CALL :MinuteMM
  CALL :SecondSS
  CALL :YearMonthDayWeekHourMinuteSecondYYYYMMDDXNHHmmSS
  CALL :Y4MMddhhmmssN
  GOTO END
) ELSE (
  IF DEFINED ENV_HOWTOSHELL_DEBUG (
    ECHO "������ֱ�����У������ڲ���ģʽ�£�"
  )
  GOTO END
)

:YearYYYY ��
ECHO "Year"
ECHO %DATE:~0,4%
EXIT /B 0

:MonthMM ��
ECHO "Month"
ECHO %DATE:~5,2%
EXIT /B 0

:DayDD ��
ECHO "Day"
ECHO %DATE:~8,2%
EXIT /B 0

:WeekN
ECHO "Week"
ECHO %DATE:~11,2%
EXIT /B 0

:HourHH ʱ
ECHO "Hour"
ECHO %TIME:~0,2%
EXIT /B 0

:MinuteMM ��
ECHO "Minute"
ECHO %TIME:~3,2%
EXIT /B 0

:SecondSS ��
ECHO "Second"
ECHO %TIME:~6,2%
EXIT /B 0

:YearMonthDayWeekHourMinuteSecondYYYYMMDDXNHHmmSS ��������ʱ���루yyyy/MM/dd ��N hh:mm:ss��
ECHO "Year-Month-Day �ܼ� Hour:Minute:Second"
ECHO %DATE% %TIME:~0,-3%
EXIT /B 0

:Y4MMddhhmmssN ��õ�������ʽ��yyyy-MM-dd hh:mm:ss n��
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
EXIT /B 0

:END
ENDLOCAL
EXIT /B 0
