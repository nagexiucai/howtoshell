@echo off
:: ��ʾsetlocal/endlocalǶ�ס�
:: ֻҪû������endlocal/eof��ǰ�ű��˳�����һֱ����һ��setlocal�����ռ䡣

GOTO MAIN
"outerX is" "i am outerX"
"innerX is" "i am innerX"
"outerX is" "i am outerX again"
"innerX is" "i am innerX again"
"outerX is" "i am outerX again and again"
"innerX is" "i am innerX again and again"
"outerX is" "i am outerX again"
"innerX is" "i am innerX again"
"outerX is" "i am outerX"
"innerX is" "i am innerX"

:MAIN
set outerX="i am outerX"
set innerX="i am innerX"
echo "outerX is" %outerX%
echo "innerX is" %innerX%

setlocal

    set outerX="i am outerX again"
    set innerX="i am innerX again"
    echo "outerX is" %outerX%
    echo "innerX is" %innerX%

    setlocal
        set outerX="i am outerX again and again"
        set innerX="i am innerX again and again"
        echo "outerX is" %outerX%
        echo "innerX is" %innerX%
    endlocal

    echo "outerX is" %outerX%
    echo "innerX is" %innerX%

endlocal

echo "outerX is" %outerX%
echo "innerX is" %innerX%
