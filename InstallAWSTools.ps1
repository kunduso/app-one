$ListofModulesInstalled = (Get-InstalledModule).Name
Write-Host -Message "Checking if AWS.Tools.Installer is installed on this instance."
if ($ListofModulesInstalled -contains "AWS.Tools.Installer")
{ 
    Write-Host -Message "AWS.Tools.Installer module exists."
}else { 
    Write-Host -Message "AWS.Tools.Installer module does not exist and needs to be installed."
    $ListofPackagesInstalled = (Get-PackageProvider -ListAvailable).Name
    Write-Host -Message "AWS.Tools.Installer requires nuget package version 2.8.5.201 or above to be installed. Checking if correct version of nuget package is installed."
    if ($ListofPackagesInstalled -contains "Nuget")
    {
        Write-Host -Message "Nuget package exists. Checking version."
        $CheckNugetVersion=(get-PackageProvider -Name NuGet).Version
        if($CheckNugetVersion -ge "2.8.5.201")
        {
            Write-Host -Message "Nuget version is $CheckNugetVersion and that is acceptable."
        }else {
            Write-Host -Message "Nuget version is $CheckNugetVersion and a newer package will be installed."
            Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
        }
    } else {
        Write-Host -Message "Nugest package does not exists and will be installed."
        Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
    }
    Install-Module -Name AWS.Tools.Installer -Force
    Install-Module -Name AWSPowerShell.NetCore -Force
    Write-Host -Message "AWS.Tools.Installer was installed successfully."
}