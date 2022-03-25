# This script checks and installs aws.tools.installer and aws.tools.common modules

# AWS.Tools.Installer requires nuget package version 2.8.5.201 or above to be installed.
$ListofPackagesInstalled = (Get-PackageProvider -ListAvailable).Name
Write-Host "AWS.Tools.Installer requires nuget package version 2.8.5.201 or above to be installed. Checking if correct version of nuget package is installed."
    if ($ListofPackagesInstalled -contains "Nuget")
    {
        Write-Host "Nuget package exists. Checking version."
        $CheckNugetVersion=(get-PackageProvider -Name NuGet).Version
        if($CheckNugetVersion -ge "2.8.5.201")
        {
            Write-Host "Nuget version is $CheckNugetVersion and that is acceptable."
        }else {
            Write-Host "Nuget version is $CheckNugetVersion and a newer package will be installed."
            Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
        }
    } else {
        Write-Host "Nugest package does not exists and will be installed."
        Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force
    }

# Create a list of all modules installed and then identify if the required modules are already installed.
$ListofModulesInstalled = (Get-InstalledModule).Name
# https://www.powershellgallery.com/packages/AWS.Tools.Installer/1.0.2.4
Write-Host "Checking if AWS.Tools.Installer is installed on this instance."
    if ($ListofModulesInstalled -contains "AWS.Tools.Installer")
    { 
        Write-Host "AWS.Tools.Installer module exists."
    }else { 
        Write-Host "AWS.Tools.Installer module does not exist and needs to be installed."
        Install-Module -Name AWS.Tools.Installer -Force
        Write-Host "AWS.Tools.Installer was installed successfully."
    }
# https://www.powershellgallery.com/packages/AWS.Tools.Common/4.1.50
Write-Host "Checking if AWS.Tools.Common is installed on this instance."
    if ($ListofModulesInstalled -contains "AWS.Tools.Common")
    { 
        Write-Host "AWS.Tools.Common module exists."
    }else { 
        Write-Host "AWS.Tools.Common module does not exist and needs to be installed."
        Install-Module -Name AWS.Tools.Common -Force
        Write-Host "AWS.Tools.Common was installed successfully."
    }
# https://www.powershellgallery.com/packages/AWS.Tools.s3/4.1.50
    Write-Host "Checking if AWS.Tools.S3 is installed on this instance."
    if ($ListofModulesInstalled -contains "AWS.Tools.S3")
    { 
        Write-Host "AWS.Tools.S3 module exists."
    }else { 
        Write-Host "AWS.Tools.S3 module does not exist and needs to be installed."
        Install-Module -Name AWS.Tools.S3 -Force
        Write-Host "AWS.Tools.S3 was installed successfully."
    }