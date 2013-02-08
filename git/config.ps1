param(
	[string] $userName = $(Read-Host -prompt "User Name"),
	[string] $userEmail = $(Read-Host -prompt "User Email")
)

git config --global user.name $userName
git config --global user.email $userEmail

git config --global alias.ls "log --pretty=format:'%C(yellow)%h %C(blue)%ad%C(red)%d %C(reset)%s%C(green) [%cn]' --decorate --date=short --graph --max-count=20"
git config --global alias.st "status -sb"
git config --global alias.graph "log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'"
