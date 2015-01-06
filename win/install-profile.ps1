$profilePath = "$PSScriptRoot\profile.ps1"
echo ". '$profilePath'" >> $PROFILE



if(-not(Test-Path ~\AppData\Roaming\Console)){
  New-Item ~\AppData\Roaming\Console -type directory | Out-Null
}

$consolePath = "$PSScriptRoot\console.xml"
echo ". '$consolePath'" >> ~\AppData\Roaming\Console\console.xml
