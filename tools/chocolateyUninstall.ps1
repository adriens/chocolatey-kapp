$tools = Split-Path $MyInvocation.MyCommand.Definition
$content = Join-Path (Split-Path $tools) 'content'
$bat = Join-Path $content 'kapp.exe'

Uninstall-BinFile `
  -Name 'kapp.exe' `
  -Path $bat
