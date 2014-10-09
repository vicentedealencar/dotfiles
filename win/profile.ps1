Set-Alias nuget 'C:\Users\Vicente\Downloads\NuGet.exe'

Set-Alias scriptcs 'C:\Users\Vicente\Documents\GitHub\scriptcs\src\Scriptcs\bin\Release\Scriptcs.exe'

Set-Alias elasticsearch 'C:\bin\elasticsearch-0.90.5-vanilla\elasticsearch-0.90.5\bin\elasticsearch.bat'

Set-Alias makecert 'C:\Program Files (x86)\Windows Kits\8.1\bin\x64\makecert.exe'

Set-Alias pvk2pfx 'C:\Program Files (x86)\Windows Kits\8.1\bin\x64\pvk2pfx.exe'

Set-Alias CHROME_BIN 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'

Set-Alias gut git

function ss {
    foreach($file in ls) {
        if($file.Name.Contains('.sln')) {
            Write-Host "Starting $file"
            start $file
        }
    }
}

function gut() { . 'git' $args }

function gs() { . 'git' 'status'$args }

function git-bring-branch ($branch) {
    . 'git' 'checkout' $branch
    . 'git' 'pull'
    . 'git' 'checkout' '-'
    . 'git' 'merge' $branch
}

Write-Host 'profile loaded' -ForegroundColor yellow
