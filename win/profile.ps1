# Load posh-git example profile
. 'C:\Users\Vicente\Documents\WindowsPowerShell\Modules\posh-git\profile.example.ps1'


# Load posh-npm example profile
. 'C:\Users\Vicente\Documents\WindowsPowerShell\Modules\posh-npm\profile.example.ps1'

function subl { . 'C:\Program Files\Sublime Text 3\sublime_text.exe' $args }

function nuget { . 'C:\Users\Vicente\Downloads\NuGet.exe' $args }

function scriptcs { . 'C:\Users\Vicente\Documents\GitHub\scriptcs\src\Scriptcs\bin\Release\Scriptcs.exe' $args }

function elasticsearch { . 'C:\bin\elasticsearch-0.90.5-vanilla\elasticsearch-0.90.5\bin\elasticsearch.bat' $args }

function CHROME_BIN { . 'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe' $args }

function ss {
    foreach($file in ls)
    {
        if($file.Name.Contains('.sln')){
            Write-Host 'Starting $file'
            start $file
        }
    }
}

function gut() { . 'git' $args }

function gs() { . 'git' 'status'$args }

function bring-branch ($branch) {
    . 'git' 'checkout' $branch
    . 'git' 'pull'
    . 'git' 'checkout' '-'
    . 'git' 'merge' $branch
}

echo 'profile loaded'