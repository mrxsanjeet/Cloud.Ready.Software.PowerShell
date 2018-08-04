. (Join-Path $PSScriptRoot '.\_Settings.ps1')

$Containername = 'devpreview'

Import-RDHTestToolkitToNavContainer `
    -DockerHost $DockerHost `
    -DockerHostCredentials $DockerHostCredentials `
    -DockerHostUseSSL:$DockerHostUseSSL `
    -DockerHostSessionOption $DockerHostSessionOption `
    -ContainerName $Containername `
    -ContainerSqlCredential $ContainerSqlCredential 
