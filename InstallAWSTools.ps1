$ListofModulesInstalled = (Get-InstalledModule).Name
Write-Log -Message "Ckecking if AWS.Tools.Installer is installed on this instance."
if ($ListofModulesInstalled -contains "AWS.Tools.Installer")
{ 
    Write-Log -Message "AWS.Tools.Installer module exists."
}else { 
    Write-Log -Message "AWS.Tools.Installer module does not exist and needs to be installed."
    # $ListofPackagesInstalled = (Get-PackageProvider -ListAvailable).Name
    # Write-Log -Message "AWS.Tools.Installer requires nuget package version 2.8.5.201 or above to be installed. Checking if correct version of nuget package is installed."
    # if ($ListofPackagesInstalled -contains "Nuget")
    # {
    #     Write-Log -Message "Nuget package exists. Ckecking version."
    #     $CheckNugetVersion=(get-PackageProvider -Name NuGet).Version
    #     if($CheckNugetVersion -ge "2.8.5.201")
    #     {
    #         Write-Log -Message "Nuget version is $CheckNugetVersion and that is acceptable."
    #     }else {
    #         Write-Log -Message "Nuget version is $CheckNugetVersion and a newer package will be installed."
    #         Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
    #     }
    # } else {
    #     Write-Log -Message "Nugest package does not exists and will be installed."
    #     Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
    # }
    # Install-Module -Name AWS.Tools.Installer -Force
    # Write-Log -Message "AWS.Tools.Installer was installed successfully."
}