$xx_appx_packages = @(
    '*teams*',
    '*BingNews*',
    '*BingWeather*',
    '*ClipChamp*',
    '*Disney*',
    '*Getstarted*',
    '*GamingApp*',
    '*PowerAutomateDesktop*',
    '*Microsoft.MicrosoftOfficeHub*',
    '*Microsoft.WindowsCommunicationsApps*',
    '*Microsoft.WindowsFeedbackHub*',
    '*Microsoft.Xbox.TCUI*',
    '*Microsoft.XboxGameOverlay*',
    '*Microsoft.XboxGamingOverlay*',
    '*Microsoft.XboxIdentityProvider*',
    '*Microsoft.XboxIdentityProvider*',
    '*Microsoft.XboxSpeechToTextOverlay*',
    '*spotify*',
    '*TikTok*',
    '*ZuneMusic*',
    '*ZuneVideo*'
)
foreach ($xx_appx_package in $xx_appx_packages) {
    Write-Host "Removing $xx_appx_package..." -f Green
    Get-AppxPackage -AllUsers | Where-Object {$_.PackageFullName -like "$xx_appx_package"} | Remove-AppxPackage -AllUsers
}

