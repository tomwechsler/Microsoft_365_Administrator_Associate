Set-Location C:\
Clear-Host

#We need the module (without the parameter for a specific version)
Install-Module -Name ExchangeOnlineManagement -AllowClobber -Force -Verbose

#More specific if you want
Install-Module -Name ExchangeOnlineManagement -RequiredVersion 3.0.0 -AllowClobber -Force -Verbose

#Let's import the module
Import-Module ExchangeOnlineManagement

#Check the version (if you have not selected a version)
Get-InstalledModule -Name ExchangeOnlineManagement

#Now we connect to Exchange Online
Connect-ExchangeOnline

#Install the Azure AD Module
Install-Module -Name AzureAD -AllowClobber -Force -Verbose

#Let's import the module
Import-Module AzureAD

#Now we connect to Azure Active Directory
Connect-AzureAD

Disconnect-AzureAD
Disconnect-ExchangeOnline