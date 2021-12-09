<#
.SYNOPSIS
    vbr-fw-rules.ps1 - A script to add/configure all Windows Server firewall rules for the Veeam Backup & Replication server
.DESCRIPTION
    Add/configure all inbound and outbound firewall rules initially created by the Veeam Backup & Replication server installation.
    Based on Veeam Backup & Replication Build 11.0.1.1261
.INPUTS
    none
.OUTPUTS
    Inbound/outbound Windows Server Firewall rules
.NOTES
    Author:     Tim Neukirchen
    E-Mail:     neukirchentim@gmail.com
    Blog:       https://virbeaver.com
    Twitter:    @virBeaver
    Year:       2021
#>

# Initialize array for all the rules
[System.Collections.ArrayList]$rules = @()

# Inbound rules
$rule = @{
    DisplayName = "Veeam AWS Service (In)";
    Description = "Inbound rule for Veeam AWS Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Plugins\AWS\Service\Veeam.CloudBackup.PlatformService.exe";
    Protocol = "TCP";
    LocalPort = "9402";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Azure Service (In)";
    Description = "Inbound rule for Veeam Azure Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Plugins\Microsoft Azure\Service\Veeam.Azure.PlatformSvc.exe";
    Protocol = "TCP";
    LocalPort = "20443";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup CDP Coordinator Service (In)";
    Description = "Inbound rule for Veeam Backup CDP Coordinator Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.Cdp.Service.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup CDP Coordinator Service Communication (In)";
    Description = "Inbound rule for secure connections between Veeam Backup CDP Coordinator Service components";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "Any";
    Protocol = "TCP";
    LocalPort = "33034";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup Management Service (In)";
    Description = "Inbound rule for Veeam Backup Management Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.Service.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup Remote PowerShell Manager (In)";
    Description = "Inbound rule for Veeam Backup Remote PowerShell Manager";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.PSManager.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup Secure Communication (In)";
    Description = "Inbound rule for secure connections between Veeam Backup & Replication components";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "Any";
    Protocol = "TCP";
    LocalPort = "9401";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup Server RESTful API Service (In)";
    Description = "Inbound rule for Veeam Backup Server RESTful API Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "Any";
    Protocol = "TCP";
    LocalPort = "9419";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup UI Server (In)";
    Description = "Inbound rule for Veeam  Backup UI Server";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.UIServer.exe";
    Protocol = "TCP";
    LocalPort = "9396";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup VSS Integration Service (In)";
    Description = "Inbound rule for Veeam Backup VSS Integration Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup File System VSS Integration\VeeamFilesysVssSvc.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Broker Service (In)";
    Description = "Inbound rule for Veeam Broker Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.BrokerService.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Catalog Service (In)";
    Description = "Inbound rule for Veeam Catalog Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup Catalog\Veeam.Backup.CatalogDataService.exe";
    Protocol = "TCP";
    LocalPort = "9393";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Cloud Connect Service (In)";
    Description = "Inbound rule for Veeam Cloud Connect Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.CloudService.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Data Mover (In)";
    Description = "Inbound rule for Veeam Data Mover included with Veeam Backup and Replication";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\WinAgent\VeeamAgent.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Data Mover (Veeam Catalog Service)  (In)";
    Description = "Inbound rule for Veeam Data Mover included with Veeam Catalog Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup Catalog\WinAgent\VeeamAgent.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Data Mover (Veeam Transport Service) (In)";
    Description = "Inbound rule for Veeam Data Mover included with Veeam Transport Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\Backup Transport\x86\VeeamAgent.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Data Mover x64 (Veeam Transport Service) (In)";
    Description = "Inbound rule for Veeam Data Mover x64 included with Veeam Transport Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\Backup Transport\x64\VeeamAgent.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Distribution Service (In)";
    Description = "Inbound rule for Veeam Distribution Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Veeam Distribution Service\Veeam.Backup.Agent.ConfigurationService.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam GCP Service (In)";
    Description = "Inbound rule for Veeam GCP Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Plugins\GCP\Service\Veeam.GCP.PlatformService.WebService.exe";
    Protocol = "TCP";
    LocalPort = "9403";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Guest Interaction Proxy (In)";
    Description = "Inbound rule for Veeam Guest Interaction Proxy";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\Backup Transport\GuestInteraction\Veeam.Guest.Interaction.Proxy.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Installer Service (Veeam Backup and Replication) (In)";
    Description = "Inbound rule for Veeam Installer Service included with Veeam Backup and Replication";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Windows\Veeam\Backup\VeeamDeploymentSvc.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Mount Service (In)";
    Description = "Inbound rule for Veeam Mount Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Common Files\Veeam\Backup and Replication\Mount Service\Veeam.Backup.MountService.exe";
    Protocol = "TCP";
    LocalPort = "6170";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Traffic Redirector (In)";
    Description = "Inbound rule for Veeam Traffic Redirector included with Veeam Backup & Replication";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\VeeamNetworkRedirector.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Traffic Redirector (Veeam Backup & Replication console) (In)";
    Description = "Inbound rule for Veeam Network Traffic included with Veeam Backup & Replication console";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Console\VeeamNetworkRedirector.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Transport Service (In)";
    Description = "Inbound rule for Veeam Transport Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\Backup Transport\VeeamTransportSvc.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam vPower NFS Service (In)";
    Description = "Inbound rule for Veeam vPower NFS Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\vPowerNFS\VeeamNFSSvc.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam VSS Hardware Provider Service (In)";
    Description = "Inbound rule for Veeam VSS Hardware Provider Service";
    Group = "Veeam Networking";
    Direction = "Inbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\VSS Hardware Provider\Veeam.VssHwSnapshotProvider.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

# Outbound rules
$rule = @{
    DisplayName = "Veeam AWS Service (Out)";
    Description = "Outbound rule for Veeam AWS Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Plugins\AWS\Service\Veeam.CloudBackup.PlatformService.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam AWS UI (Out)";
    Description = "Outbound rule for Veeam AWS UI";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "Any";
    Protocol = "TCP";
    LocalPort = "9402";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Azure Service (Out)";
    Description = "Outbound rule for Veeam for Azure Platform Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Plugins\Microsoft Azure\Service\Veeam.Azure.PlatformSvc.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Azure UI (Out)";
    Description = "Outbound rule for Veeam Azure UI";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "Any";
    Protocol = "TCP";
    LocalPort = "20443";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup & Replication Console (Out)";
    Description = "Outbound rule for Veeam for Azure Platform Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Console\veeam.backup.shell.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup CDP Coordinator Service (Out)";
    Description = "Outbound rule for Veeam Backup CDP Coordinator Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.Cdp.Service.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup CDP Coordinator Service Communication (Out)";
    Description = "Outbound  rule for secure connections between Veeam Backup CDP Coordinator Service components";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "Any";
    Protocol = "TCP";
    LocalPort = "33034";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup Management Service (Out)";
    Description = "Outbound rule for Veeam Backup Management Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.Service.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup Remote PowerShell Manager (Out)";
    Description = "Outbound rule for Veeam Backup Remote PowerShell Manager";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.PSManager.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup Secure Communication (Out)";
    Description = "Outbound rule for secure connections between Veeam Backup & Replication components";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "Any";
    Protocol = "TCP";
    LocalPort = "9401";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup Server RESTful API Service (Out)";
    Description = "Outbound rule for Veeam Backup Server RESTful API Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "Any";
    Protocol = "TCP";
    LocalPort = "9419";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup UI Server (Out)";
    Description = "Outbound rule for Veeam Backup UI Server";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.UIServer.exe";
    Protocol = "TCP";
    LocalPort = "9396";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Backup VSS Integration Service (Out)";
    Description = "Outbound rule for Veeam Backup VSS Integration Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup File System VSS Integration\VeeamFilesysVssSvc.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Broker Service (Out)";
    Description = "Outbound rule for Veeam Broker Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.BrokerService.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Catalog Service (Out)";
    Description = "Outbound rule for Veeam Catalog Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup Catalog\Veeam.Backup.CatalogDataService.exe";
    Protocol = "TCP";
    LocalPort = "9393";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Cloud Connect Service (Out)";
    Description = "Outbound rule for Veeam Cloud Connect Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\Veeam.Backup.CloudService.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Data Mover (Out)";
    Description = "Outbound rule for Veeam Data Mover included with Veeam Backup and Replication";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\WinAgent\VeeamAgent.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Data Mover (Veeam Catalog Service) (Out)";
    Description = "Outbound rule for Veeam Data Mover included with Veeam Catalog Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup Catalog\WinAgent\VeeamAgent.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Data Mover (Veeam Transport Service) (Out)";
    Description = "Outbound rule for Veeam Data Mover included with Veeam Transport Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\Backup Transport\x86\VeeamAgent.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Data Mover x64 (Veeam Transport Service) (Out)";
    Description = "Outbound rule for Veeam Data Mover x64 included with Veeam Transport Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\Backup Transport\x64\VeeamAgent.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Distribution Service (Out)";
    Description = "Outbound rule for Veeam Distribution Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Veeam Distribution Service\Veeam.Backup.Agent.ConfigurationService.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam GCP Service (Out)";
    Description = "Outbound rule for Veeam GCP Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Plugins\GCP\Service\Veeam.GCP.PlatformService.WebService.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam GCP UI (Out)";
    Description = "Outbound rule for Veeam GCP UI.";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "Any";
    Protocol = "TCP";
    LocalPort = "9403";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Guest Interaction Proxy (Out)";
    Description = "Outbound rule for Veeam Guest Interaction Proxy";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\Backup Transport\GuestInteraction\Veeam.Guest.Interaction.Proxy.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Installer Service (Veeam Backup and Replication) (Out)";
    Description = "Outbound rule for Veeam Installer Service included with Veeam Backup and Replication";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Windows\Veeam\Backup\VeeamDeploymentSvc.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Mount Service (Out)";
    Description = "Outbound rule for Veeam Mount Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Common Files\Veeam\Backup and Replication\Mount Service\Veeam.Backup.MountService.exe";
    Protocol = "TCP";
    LocalPort = "6170";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Traffic Redirector (Out)";
    Description = "Outbound rule for Veeam Traffic Redirector included with Veeam Backup & Replication";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Backup\VeeamNetworkRedirector.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Traffic Redirector (Veeam Backup & Replication console) (Out)";
    Description = "Outbound rule for Veeam Network Traffic included with Veeam Backup & Replication console";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\Backup and Replication\Console\VeeamNetworkRedirector.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam Transport Service (Out)";
    Description = "Outbound rule for Veeam Transport Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\Backup Transport\VeeamTransportSvc.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam vPower NFS Service (Out)";
    Description = "Outbound rule for Veeam vPower NFS Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files (x86)\Veeam\vPowerNFS\VeeamNFSSvc.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

$rule = @{
    DisplayName = "Veeam VSS Hardware Provider Service (Out)";
    Description = "Outbound rule for Veeam VSS Hardware Provider Service";
    Group = "Veeam Networking";
    Direction = "Outbound";
    Profile = "Any";
    Enabled = "True";
    Action = "Allow";
    Program = "C:\Program Files\Veeam\VSS Hardware Provider\Veeam.VssHwSnapshotProvider.exe";
    Protocol = "TCP";
    LocalPort = "Any";
}
$rules.Add($rule) > $null

# Add/configure firewall rules 
$rules | ForEach-Object {
	New-NetFirewallRule @_
}