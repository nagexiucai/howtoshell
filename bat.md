# 常用BAT素材 #
- [ECHO](#echo)
- [:EOF]：End Of File，即内建的脚本结尾，一般配合`GOTO`跳过后续操作。

---

## <a id="echo">ECHO</a> ##

```
echo. |time
:: ECHO后紧跟的“.”表示输出回车，这里通过管道传递，相当于执行完TIME命令直接回车。

echo Y |rd /s <non-empty-folder-path>
:: 自动给RD命令删除非空目录时的询问选择“Y”。
```
