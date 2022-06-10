hostname

#--------------------------------------------------------------
# Servicos
$servico = Get-Service -name Spooler -ComputerName FGB-DESKTOP
$servico.Status
if ($servico.status -eq "Running") {
echo "Parando o Servico"
$servico.Stop()
echo "Iniciando o Servico"
$servico.Start()
} else {
echo "Servico nao estava executando"
}
#--------------------------------------------------------------
$servico = Get-Service -name Audiosrv -ComputerName FGB-DESKTOP
$servico.Status
if ($servico.status -eq "Running"){
echo "Parando o Servico"
$servico.Stop()
echo "Iniciando o Servico"
$servico.Start()
} else {
echo "Servico nao estava executando"
}
#--------------------------------------------------------------
#Command-Precedence .\
Get-Help about_Command_Precedence
#--------------------------------------------------------------
ping 8.8.8.8
# C:\Windows\System32
clear
#--------------------------------------------------------------
echo %PATH%
echo $env:path
$env:path.GetType()
$env:path.Split(";")
$env:path | Get-Member
#--------------------------------------------------------------
$disco1 = Get-Disk -Number 1
$disco1.Size 
#--------------------------------------------------------------
rename sha1.bat sha1_migrando_fagner.bat
get-alias -Name dir
#--------------------------------------------------------------
update-help
get-command -name *rename*
get-help -name Rename-Item
rename-item sha1.bat sha1_migrando_fagner.bat -WhatIf
rename-item sha1.bat sha1_migrando_fagner.bat
#--------------------------------------------------------------
get-command -noun alias
get-help New-Alias
new-alias -name "rename" Rename-Item
get-alias -Name "rename"
rename sha256.bat sha256_migrando_fagner.bat
rename sha384.bat sha384_migrando_fagner.bat
rename sha512.bat sha512_migrando_fagner.bat
#--------------------------------------------------------------
get-help -name Get-Verb
new-alias -name g_v Get-Verb
get-alias -name g_v
#--------------------------------------------------------------
$profile
new-item $profile
#--------------------------------------------------------------
get-help About_Execution_Policies
Get-ExecutionPolicy
Set-ExecutionPolicy unrestricted
#--------------------------------------------------------------
get-help about_profiles
$PROFILE.AllUsersAllHosts
New-Item $PROFILE.AllUsersAllHosts
#--------------------------------------------------------------
$todosOsItens = dir -Recurse
$todosOsItens.Length
$todosOsArquivos = dir -Recurse -File
$todosOsArquivos.Length
#--------------------------------------------------------------
dir -Recurse -File | Select-Object name | Where-Object { $_ -like "*_migrando_*"}
dir -Recurse -File | Select-Object name | Where-Object { $_ -like "*_migrando_*"} | Select-Object Length
dir -Recurse -File | Where-Object Name -like "*_migrando_*" | Select-Object name, Length
#--------------------------------------------------------------
45646544654 / 1024 / 1024 / 1024
123kb
1MB
#--------------------------------------------------------------
(45646544654 / 1GB).GetType().Name
(45646544654 / 1GB).ToString("N2")+"GB"
"{0:N2}" -f (45646544654 / 1GB)
"{0:N2}GB = {1:N2}MB" -f (45646544654 / 1GB), (45646544654 / 1MB)
#--------------------------------------------------------------
dir -Recurse -File | Where-Object Name -like "*_migrando_*" | Select-Object name, Length /1KB
get-help Select-Object
dir -Recurse -File | Where-Object Name -like "*_migrando_*" | Select-Object name, { "{0:N2}KB" -f ($_.length / 1KB)}