cd ..

foreach($dir in dir)
{
    if(!$dir.Mode.Contains('d')) {continue}
    cd $dir.FullName

    #if(!(Get-GitDirectory -eq $null)) 
    if(!(Test-Path '.git'))
    {continue}

    $sts = git status

    #if((Get-GitStatus).HasWorking -or (Get-GitStatus).HasUntracked)
    if($sts[1] -ne 'nothing to commit (working directory clean)')
    {$color = 'Cyan'}
    else
    {$color = 'Green'}

    Write-Host $dir.FullName -Foreground $color
    if($color -eq 'Cyan'){$sts}
    
    git pull
}

cd ..