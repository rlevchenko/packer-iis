#Configure WinRM (optional)
<# winrm quickconfig -q
winrm set winrm/config/service '@{AllowUnencrypted="true"}'
winrm set winrm/config/service/auth '@{Basic="true"}'
winrm set winrm/config/service/auth '@{CredSSP="true"}'
winrm set winrm/config/client '@{TrustedHosts="*"}'
New-NetFirewallRule -DisplayName "Enable WinRM 5986" -Direction Inbound -LocalPort 5986 -Protocol TCP -Action Allow
New-NetFirewallRule -DisplayName "Enable WinRM 5985" -Direction Inbound -LocalPort 5985 -Protocol TCP -Action Allow
Restart-Service winrm #>

#Install IIS Server
Install-WindowsFeature Web-Server, Web-WebServer, Web-Common-Http, Web-Asp-Net, Web-Asp-Net45, Web-Default-Doc, Web-Dir-Browsing, `
    Web-Http-Errors, Web-Static-Content, Web-Http-Redirect, Web-Health, Web-Http-Logging, Web-Performance, Web-Stat-Compression, `
    Web-Security, Web-Filtering, Web-App-Dev, Web-WebSockets, Web-Mgmt-Tools, Web-Mgmt-Console -IncludeManagementTools
