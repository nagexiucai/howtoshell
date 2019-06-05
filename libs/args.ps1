# 这是PowerShell-stdv1命令参数相关操作

# 推荐设置PowerShell的ExecutionPolicy为RemoteSigned（本地脚本免签、远程脚本须签）
# Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
# Y

For ($i=0; $i -lt $args.Count; $i++)
{
  Write-Host "arg $i is $($args[$i])"
}
