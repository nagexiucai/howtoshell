# 常用BAT素材 #

[相关片段](./batflake/)。

- [ECHO](#echo)
- [:EOF]：End Of File，即内建的脚本结尾，一般配合`GOTO`跳过后续操作。
- [SETLOCAL ENDLOCAL](#setlocal-endlocal)

---

## <a id="echo">ECHO</a> ##

```
echo. |time
:: ECHO后紧跟的“.”表示输出回车，这里通过管道传递，相当于执行完TIME命令直接回车。

echo Y |rd /s <non-empty-folder-path>
:: 自动给RD命令删除非空目录时的询问选择“Y”。
```

## <a id="setlocal-endlocal">SETLOCAL ENDLOCAL</a> ##

```
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

:: 结果充分说明SETLOCAL/ENDLOCAL可以嵌套。
:: 其实只要没碰到ENDLOCAL/EOF或当前脚本退出，就一直在上一个SETLOCAL命名空间。
```
