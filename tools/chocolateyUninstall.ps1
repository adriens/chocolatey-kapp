$tools = Split-Path $MyInvocation.MyCommand.Definition
$content = Join-Path (Split-Path $tools) 'content'
$bat = Join-Path $content 'kapp'

Uninstall-BinFile `
  -Name 'kapp' `
  -Path $bat
