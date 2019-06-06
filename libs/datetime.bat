@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
:: 这是BAT日期时间相关操作
IF DEFINED ENV_HOWTOSHELL_DEBUG (
  ECHO "引入datetime.bat"
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
    ECHO "不可以直接运行，除非在测试模式下！"
  )
  GOTO END
)

:YearYYYY 年
ECHO "Year"
ECHO %DATE:~0,4%
EXIT /B 0

:MonthMM 月
ECHO "Month"
ECHO %DATE:~5,2%
EXIT /B 0

:DayDD 日
ECHO "Day"
ECHO %DATE:~8,2%
EXIT /B 0

:WeekN
ECHO "Week"
ECHO %DATE:~11,2%
EXIT /B 0

:HourHH 时
ECHO "Hour"
ECHO %TIME:~0,2%
EXIT /B 0

:MinuteMM 分
ECHO "Minute"
ECHO %TIME:~3,2%
EXIT /B 0

:SecondSS 秒
ECHO "Second"
ECHO %TIME:~6,2%
EXIT /B 0

:YearMonthDayWeekHourMinuteSecondYYYYMMDDXNHHmmSS 年月日周时分秒（yyyy/MM/dd 周N hh:mm:ss）
ECHO "Year-Month-Day 周几 Hour:Minute:Second"
ECHO %DATE% %TIME:~0,-3%
EXIT /B 0

:Y4MMddhhmmssN 最常用的完整形式（yyyy-MM-dd hh:mm:ss n）
ECHO "Year-Month-Day Hour:Minute:Second N"
SETLOCAL
SET yyyyMMddXN=%DATE%
SET hhmmssX=%TIME%
SET yyyy=%yyyyMMddXN:~0,4%
SET MM=%yyyyMMddXN:~5,2%
SET dd=%yyyyMMddXN:~8,2%
SET n=%yyyyMMddXN:~12,1%
IF "%n%"=="一" (SET n=1) ^
ELSE IF "%n%"=="二" (SET n=2) ^
ELSE IF "%n%"=="三" (SET n=3) ^
ELSE IF "%n%"=="四" (SET n=4) ^
ELSE IF "%n%"=="五" (SET n=5) ^
ELSE IF "%n%"=="六" (SET n=6) ^
ELSE IF "%n%"=="日" (SET n=7) ^
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
