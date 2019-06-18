@ECHO OFF

ECHO "CALL-HACK START" ""
CALL ..\libs\call-test.cmd
ECHO "CALL-HACK END"

ECHO "CALL-HACK START" ":"
CALL ..\libs\call-test.cmd :
ECHO "CALL-HACK END"

ECHO "CALL-HACK START" "FUCK"
CALL ..\libs\call-test.cmd :FUCK Alice Bob
ECHO "CALL-HACK END"

ECHO "CALL-HACK START" "KISS"
CALL ..\libs\call-test.cmd :KISS Huaan Qiuxiang
ECHO "CALL-HACK END"
