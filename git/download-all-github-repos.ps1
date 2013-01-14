# TODO
# - check if repo is already cloned
# - get repos from my organizations

$req = curl -u "vicentedealencar" https://api.github.com/user/repos
$json = $req -join ""
$repos = ConvertFrom-Json $json

foreach($repo in $repos) {
    Write-Host $repo.git_url -foregroundcolor cyan 
    git clone $repo.git_url
}
