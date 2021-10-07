#
# Script do Windows PowerShell para Implantação do AD DS
# -DomainNetbiosName colocar em caixa alta sempre de acordo com o primeiro nome de DomainName(Meu padrão de trabalho)

Import-Module ADDSDeployment
Install-ADDSForest `
-CreateDnsDelegation:$false `
-DatabasePath "C:\Windows\NTDS" `
-DomainMode "Win2012R2" `
-DomainName "agencia.local" `
-DomainNetbiosName "AGENCIA" `
-ForestMode "Win2012R2" `
-InstallDns:$true `
-LogPath "C:\Windows\NTDS" `
-NoRebootOnCompletion:$false `
-SysvolPath "C:\Windows\SYSVOL" `
-Force:$true

