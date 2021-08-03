param(
    [Parameter(Mandatory)][String] $WebUrl = $(throw "Usage: DeleteAll-SPAppstances.ps1 -WebUrl <Site collection url to install HRMS apps> -FolderPath <apps folder path>"),
    [Parameter(Mandatory)][String] $FolderPath    
) 
# Stop if there's an error
#$ErrorActionPreference = "SilentlyContinue" 

#Add snap in for powershell
Add-PSSnapin Microsoft.SharePoint.PowerShell

#Define source
$source=([microsoft.sharepoint.administration.spappsource]::DeveloperSite)

#Read all hrms apps from folder provided
$hrmsApps=Get-ChildItem $FolderPath

    Write-host "[" -foregroundcolor "DarkGray" -NoNewLine
	Write-host "[" -foregroundcolor "Gray" -NoNewLine
	Write-host "[" -foregroundcolor "White" -NoNewLine
	Write-host "No of apps to install = " $hrmsApps.Count -foregroundcolor "Green" -NoNewLine
	Write-host "]" -foregroundcolor "White" -NoNewLine
	Write-host "]" -foregroundcolor "Gray" -NoNewLine
	Write-host "]" -foregroundcolor "DarkGray"
	Write-Host

Foreach ($app in $hrmsApps)
{

	Write-host "[" -foregroundcolor "DarkGray" -NoNewLine
	Write-host "[" -foregroundcolor "Gray" -NoNewLine
	Write-host "[" -foregroundcolor "White" -NoNewLine
	Write-host "Importing app " $app.Name -foregroundcolor "Green" -NoNewLine
	Write-host "]" -foregroundcolor "White" -NoNewLine
	Write-host "]" -foregroundcolor "Gray" -NoNewLine
	Write-host "]" -foregroundcolor "DarkGray"
	Write-Host

	$appInstance= Import-SPAppPackage -Path $app.FullName -Site $WebUrl -Source $source -Confirm:$false

	
	Write-Host
	Write-host "[" -foregroundcolor "DarkGray" -NoNewLine
	Write-host "[" -foregroundcolor "Gray" -NoNewLine
	Write-host "[" -foregroundcolor "White" -NoNewLine
	Write-host "App package imported successfully" -foregroundcolor "Green" -NoNewLine
	Write-host "]" -foregroundcolor "White" -NoNewLine
	Write-host "]" -foregroundcolor "Gray" -NoNewLine
	Write-host "]" -foregroundcolor "DarkGray"
	Write-Host

	Install-SPApp -Web $WebUrl -Identity $appInstance

}