. (Join-Path $PSScriptRoot '.\_Settings.ps1')

$ContainerDockerImage = 'microsoft/bcsandbox'
$Containername = 'navserver'
$ContainerAdditionalParameters += "--ip 172.21.31.3"
$ContainerAlwaysPull = $false
$SecretSettings.containerLicenseFile = "c:\programdata\navcontainerhelper\NAV2018License.flf"

$UserName = 'waldo'
$Password = ConvertTo-SecureString 'Waldo1234' -AsPlainText -Force
$ContainerCredential = New-Object System.Management.Automation.PSCredential ($UserName, $Password)

$UserName = 'sa'
$ContainerSqlCredential = New-Object System.Management.Automation.PSCredential ($UserName, $Password)

New-RDHNAVContainer `
    -DockerHost $DockerHost `
    -DockerHostCredentials $DockerHostCredentials `
    -DockerHostUseSSL:$DockerHostUseSSL `
    -DockerHostSessionOption $DockerHostSessionOption `
    -ContainerDockerImage $ContainerDockerImage `
    -ContainerName $Containername `
    -ContainerLicenseFile $SecretSettings.containerLicenseFile `
    -ContainerCredential $ContainerCredential `
    -ContainerAlwaysPull:$ContainerAlwaysPull `
    -ContainerAdditionalParameters $ContainerAdditionalParameters `
    -doNotExportObjectsToText