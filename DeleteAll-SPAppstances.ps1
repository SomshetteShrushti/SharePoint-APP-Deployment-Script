param(
    [Parameter(Mandatory)][String] $WebUrl = $(throw "Usage: DeleteAll-SPAppstances.ps1 -WebUrl <web url to remove all 	provider hosted apps>")    
) 
# Stop if there's an error
#$ErrorActionPreference = "Stop" 

#Add snap in for powershell
Add-PSSnapin Microsoft.SharePoint.PowerShell

# Get spsite object
$apps=Get-SPAppInstance -Web $WebUrl

    Write-Host
	Write-host "[" -foregroundcolor "DarkGray" -NoNewLine
	Write-host "[" -foregroundcolor "Gray" -NoNewLine
	Write-host "[" -foregroundcolor "White" -NoNewLine
	Write-host "Installed Apps = " $apps.Count -foregroundcolor "Green" -NoNewLine
	Write-host "]" -foregroundcolor "White" -NoNewLine
	Write-host "]" -foregroundcolor "Gray" -NoNewLine
	Write-host "]" -foregroundcolor "DarkGray"
	Write-Host

Foreach ($app in $apps)
{

	Write-host "[" -foregroundcolor "DarkGray" -NoNewLine
	Write-host "[" -foregroundcolor "Gray" -NoNewLine
	Write-host "[" -foregroundcolor "White" -NoNewLine
	Write-host "Removing spapp instance " $app.Title -foregroundcolor "Green" -NoNewLine
	Write-host "]" -foregroundcolor "White" -NoNewLine
	Write-host "]" -foregroundcolor "Gray" -NoNewLine
	Write-host "]" -foregroundcolor "DarkGray"
	Write-Host

	Uninstall-SPAppInstance -Identity $app -Confirm:$false
}