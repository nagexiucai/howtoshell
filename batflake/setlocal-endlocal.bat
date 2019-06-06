@echo off
:: 演示setlocal/endlocal嵌套。
:: 只要没有碰到endlocal/eof或当前脚本退出，就一直在上一个setlocal命名空间。

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
