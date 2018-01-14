$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'https://mailspring-builds.s3.amazonaws.com/client/cf081332/win-ia32/MailspringSetup.exe'
$url64      = 'https://mailspring-builds.s3.amazonaws.com/client/cf081332/win-ia32/MailspringSetup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url
  url64bit      = $url64

  softwareName  = 'mailspring*'

  checksum      = '8c2513a9ef689b62042fd4f0af3841109631dbe28f4df22a87b6c43963ba3534'
  checksumType  = 'sha256'
  checksum64    = '8c2513a9ef689b62042fd4f0af3841109631dbe28f4df22a87b6c43963ba3534'
  checksumType64= 'sha256'

  silentArgs   = '-s'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs