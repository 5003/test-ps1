Set-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" `
                 -Name "fDenyTSConnections" `
                 -Value "$args[0]"
Get-ItemProperty -Path "Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" `
                 -Name "fDenyTSConnections"


[System.Security.Principal.WindowsIdentity]::GetCurrent().Name
[Net.Dns]::GetHostAddresses("").IPAddressToString