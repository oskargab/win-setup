Set-ExecutionPolicy Unrestricted
cd C:\
mkdir Tools
mkdir Temp
if (Get-Command choco -ErrorAction SilentlyContinue) {
    Write-Host "Chocolatey already installed..."
} else {
	Write-Host "Installing Chocolatey..."
    Invoke-Expression ((New-Object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
	Write-Host "...Install complete!"
}

Write-Host "Installing Packages..."

choco install -y 7zip
choco install -y dotnetcore-sdk
choco install -y googlechrome
choco install -y paint.net
choco install -y putty
choco install -y python3
choco install -y git.install
choco install -y vlc
choco install -y vscode
choco install -y visualstudio2022community
choco install firefox -y
choco install microsoft-windows-terminal -y
choco install curl -y
choco install powershell-core -y
choco install thunderbird-y
choco install spotify -y
choco install insomnia-rest-api-client -y
choco install bitwarden -y