$toolsDir    = "$(Split-Path -Parent $MyInvocation.MyCommand.Definition)"
$ErrorActionPreference = 'Stop';

Copy-Item "$toolsDir\kapp-windows-amd64.exe" -Destination "$toolsDir\kapp.exe"

$packageArgs = @{
  packageName   = 'kapp'
  fileType      = 'exe'
  softwareName  = 'k14s-kapp*'
  file          = "$toolsDir\kapp.exe"
  silentArgs    = "--help"
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

$tools = Split-Path $MyInvocation.MyCommand.Definition
$package = Split-Path $tools

$kapp_exe = Join-Path $package '/tools/kapp.exe'

Install-BinFile -Name 'kapp' -Path $kapp_exe
